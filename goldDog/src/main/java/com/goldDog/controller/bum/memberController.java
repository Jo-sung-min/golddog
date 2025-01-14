package com.goldDog.controller.bum;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goldDog.domain.AddressVO;
import com.goldDog.domain.AuthVO;
import com.goldDog.domain.DogVO;
import com.goldDog.domain.EstimateVO;
import com.goldDog.domain.MemberVO;
import com.goldDog.domain.NoticeVO;
import com.goldDog.domain.ReviewVO;
import com.goldDog.domain.TrainerVO;
import com.goldDog.service.bum.memberService;
import com.goldDog.service.bum.domain.CustomUser;
import com.goldDog.service.instance.MyPageService;
import com.goldDog.service.sungmin.MainService;

import lombok.extern.log4j.Log4j;
import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/member/*")
@Log4j
public class memberController {
	
	@Autowired
	private memberService service;
	
	@Autowired
	private MainService mainService;
	
	@Autowired
	private MyPageService mypageService;
	
	@RequestMapping("mypage")
	public String a123444() {
		
		return "mypage/mypage";
	}
	
	@RequestMapping("hmain")
	public String a1234445() {
		
		return "main/hmain";
	}
	
	@GetMapping("test1")
	public void test() {
		log.info("************ test1 ************");
	}
	
	//로그인 폼 요청 (처리는 시큐리티가 해줌)
	@GetMapping("login")
	public void login(String error, HttpServletRequest request) {
		log.info("********************** login ! **********************");
		log.info("error : " + error);
		
		//접근 제한때문에 로그인폼으로 강제 이동되었다면 직전 url 뽑아서 session 임시저장
		String referrer = request.getHeader("Referer");
		request.getSession().setAttribute("prevPage", referrer);
	}
	
	//회원가입
	@GetMapping("signup")
	public void signup() {
		log.info("************ signup ************");
	}
	@PostMapping("signup")
	public String signup(MemberVO member, AddressVO address, @Param("auth") String auth,RedirectAttributes rttr) {
		log.info("********************** signupPro MemberVO : " + member);
		log.info("********************** signupPro AddressVO : " + address);
		member.setM_img("default.png");
		
		int result = service.addMember(member); 		//회원 추가
		int mno = service.getMno(member.getM_id());
		log.info(" ========================"+address+" ========================");
	
		service.addaddress(address, mno); 	//주소 추가
		
		service.addAuth(auth, mno); 			//권한 추가
		
		if(result == 1) {
			rttr.addFlashAttribute("msg", "success");
		}
		return "redirect:/member/login";
	}
	
	@GetMapping("pwFind")
	public void findPwGET() throws Exception{
	}
 
	@PostMapping("pwFind")
	public void findPwPOST(@ModelAttribute MemberVO member, HttpServletResponse response) throws Exception{
		service.findPw(response, member);
	}
	
	@GetMapping("idFind")
	public void findIdGET() throws Exception{
	}
 
	@PostMapping("idFind")
	public void findIdPOST(@ModelAttribute MemberVO member, HttpServletResponse response) throws Exception{
		service.findId(response, member);
		log.info(member.getM_name()+"********************"+member.getM_email());
	}
	
	//아이디 중복 검사
	@PostMapping("idCheck")
	@ResponseBody
	public int memberIdChkPOST(String m_id) throws Exception{
		
		int result = service.idCheck(m_id);
		
		return result;
	} // memberIdChkPOST() 종료
	
	//이메일 중복 검사
	@PostMapping("emailCheck")
	@ResponseBody
	public int memberemailChkPOST(String m_email) throws Exception{
		
		int result = service.emailCheck(m_email);
		
		return result;
	} // memberemailChkPOST() 종료
	
	//닉네임 중복 검사
	@PostMapping("nickCheck")
	@ResponseBody
	public int membernickChkPOST(String m_nick) throws Exception{
		
		int result = service.nickCheck(m_nick);
		
		return result;
	} // membernickChkPOST() 종료
	
	@GetMapping("modify")
	public void modify(Authentication auth, Model model) {
		log.info("******* modify form *******");
		//Authentication 매개변수 선언하면 principal등 정보 꺼낼 수 있다.
		CustomUser user = (CustomUser)auth.getPrincipal();
		log.info("********** user : " + user);
		MemberVO member =  service.getMember(user.getUsername()); //== principal.username
		int mno = service.getMno(user.getUsername());
		AddressVO address = service.getAddress(mno); 
		
		model.addAttribute("member", member);
		model.addAttribute("address", address);
	}
	@PostMapping("modify")
	public String modifyPro(MemberVO member, AddressVO address, Authentication auth, Model model, MultipartHttpServletRequest request) {
		try {
			log.info("******* modify Pro *******");
			log.info("******* modify Pro customUser : "+((CustomUser)auth.getPrincipal()).getUsername());
			MemberVO M_img=service.getMember(((CustomUser)auth.getPrincipal()).getUsername());
			
			member.setM_id(((CustomUser)auth.getPrincipal()).getUsername()); //auth에서 username == id 꺼내 vo에 채우기
			
			int mno = service.getMno(((CustomUser)auth.getPrincipal()).getUsername());
			log.info("******* modify mno : " + mno);
			address.setM_no(mno);
							
			MultipartFile mf = request.getFile("part_img");
			
			String newFileName=null;
			String path=null;
			String uuid=null;
			String orgName = null;
			String ext=null;
			if(mf.getSize() != 0) {
				log.info(mf.getOriginalFilename()+"지금 들어온 파일 이름");
				log.info(mf.getSize());
				log.info(mf.getContentType());
				path =request.getRealPath("/resources/serverImg");  // 서버에 저장할 폴더 위치
				
				// 이름 중복 방지를 위한 새 파일명 생성
				uuid=UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
				log.info(uuid);
				//업로드한 파일 확장자만 가져오기
				orgName=mf.getOriginalFilename();
				ext= orgName.substring(orgName.lastIndexOf("."));
				// 저장할 파일명
				newFileName= uuid + ext;
			}
			//DB 상에도 파일명을 저장해 준다.
			int result = 0;
			int result2 = 0;
			if(mf.getSize() == 0) {
				member.setM_img(M_img.getM_img());
				log.info("나랏말이?************************************");
				result = service.modifyMember(member);
				log.info("******* modify Pro result : " + result);
				result2 = service.modifyAddress(address);
				log.info("******* modify Address result : " + result2);
				
				model.addAttribute("result", result);
				model.addAttribute("result2", result2);
				 
			}else if(mf.getSize() != 0) {
				member.setM_img(newFileName);
				log.info("이게 되는건가 ***************************");
				result = service.modifyMember(member);
				log.info("******* modify Pro result : " + result);
				result2 = service.modifyAddress(address);
				log.info("******* modify Address result : " + result2);
				
				log.info("***********uuid"+uuid);
				//저장할 파일 전체 경로
				String imgPath = path+"\\"+newFileName;
				log.info("*****imgPath"+imgPath);
				
				// 파일 저장
				File copyFile = new File(imgPath);
				mf.transferTo(copyFile);
				
				model.addAttribute("result", result);
				model.addAttribute("result2", result2);
			}
			} catch (Exception e) {
				e.printStackTrace();
			}
		return "member/modifyPro";
	}
	
	
	@GetMapping("review")
	public void review() {
		
	}
	
	@PostMapping("reviewPro")
	public String reviewPro(ReviewVO review, MultipartHttpServletRequest request, Authentication auth ,int m_no_manager) {
		try {
			boolean tCheck = true;
			//훈련사인지 체크
			if(mainService.getMTrainer(m_no_manager)!=null) {
				log.info("훈련사로 들어옵니다"+m_no_manager);
				 tCheck = true; 
			}else {
				log.info("미용사로 들어옵니다"+m_no_manager);
				 tCheck = false; 
			}
			EstimateVO newEstimate = new EstimateVO();
			//훈련사일때
			if(tCheck) {
				
				review.setT_no(mainService.getMTrainer(m_no_manager).getT_no());
				review.setH_no(0);
				newEstimate.setE_con(5);
				newEstimate.setE_no(review.getE_no());
				mainService.updateEstEcon(newEstimate);
			}else {
			//미용사일때
				review.setT_no(0);
				review.setH_no(mainService.getMhairstylist(m_no_manager).getH_no());
				newEstimate.setE_con(5);
				newEstimate.setE_no(review.getE_no());
				mainService.updateEstEcon(newEstimate);
			}
			
			
			CustomUser user = (CustomUser)auth.getPrincipal();
			String m_id =user.getUsername();
			review.setM_no(service.getMno(user.getUsername()));
							
			MultipartFile mf = request.getFile("part_img");
			log.info(mf.getOriginalFilename()+"지금 들어온 파일 이름");
			
			log.info(mf.getSize());
			log.info(mf.getContentType());
			String path =request.getRealPath("/resources/serverImg");  // 서버에 저장할 폴더 위치
			
			// 이름 중복 방지를 위한 새 파일명 생성
			String uuid=UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
			log.info(uuid);
			//업로드한 파일 확장자만 가져오기
			String orgName=mf.getOriginalFilename();
			String ext= orgName.substring(orgName.lastIndexOf("."));
			// 저장할 파일명
			String newFileName= uuid + ext;
			
			//DB 상에도 파일명을 저장해 준다.
			int result = 0;
			if(mf.getOriginalFilename()==null) {
				review.setR_img("default.png");
				 result = service.addReview(review);	
				 
			}else if(mf.getOriginalFilename()!=null) {
				review.setR_img(newFileName);
				 result = service.addReview(review);
				 
			}
			if(result == 1) {
				//조건문 추가해야함 임시로 오류날것임
				if(tCheck) {
					log.info("훈련사 리뷰추가들어옴");
					
					double rTotal = 0.0;
					//리뷰 가져오는 메서드
		            List<ReviewVO> re =mainService.getTReview(mainService.getMTrainer(m_no_manager).getT_no());
		            int t_review_total = 0;
	                for(int i=0 ;i<re.size() ;i++) {
	                        t_review_total += re.get(i).getR_score();
	                }
	                	log.info(t_review_total+"t_review_total!!!");
		                rTotal = (double)t_review_total / re.size();
		                rTotal = Math.round(rTotal*100);
		                rTotal = rTotal/100; 
		                log.info(rTotal+"rTotal!!");
		                mainService.updateRAvg(mainService.getMTrainer(m_no_manager).getT_no(), rTotal,re.size());
		                log.info("훈련사 리뷰추가완료");
		                
					}
					else if(!tCheck){ 
					log.info("미용사 리뷰추가들어옴");	
	                double rTotal = 0.0;
	                List<ReviewVO> re =mainService.getHReview(mainService.getMhairstylist(m_no_manager).getH_no());
	                int h_review_total = 0;
	                for(int i=0 ;i<re.size() ;i++) {
	                	h_review_total += re.get(i).getR_score();
	                }
		                rTotal = (double)h_review_total / re.size();
		                rTotal = Math.round(rTotal*100);
		                rTotal = rTotal/100; 
		                log.info(rTotal+"rTotal!!");
		                mainService.updateRHAvg(mainService.getMhairstylist(m_no_manager).getH_no(), rTotal,re.size());
		                log.info("미용사 리뷰추가완료");
					}
	    	}
			 
			log.info("***********uuid"+uuid);
			//저장할 파일 전체 경로
			String imgPath = path+"\\"+newFileName;
			log.info("*****imgPath"+imgPath);

			// 파일 저장
			File copyFile = new File(imgPath);
			mf.transferTo(copyFile);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		return "redirect:/member/mypage";
	}
	
	@GetMapping("dogAD")
	public void dogAD() {
		
	}
	@PostMapping("dogInsertPro")
	public String dogInsertPro(DogVO dog, MultipartHttpServletRequest request, Authentication auth) {
		try {
			CustomUser user = (CustomUser)auth.getPrincipal();
			String m_id =user.getUsername();
			dog.setM_no(service.getMno(user.getUsername()));
							
			MultipartFile mf = request.getFile("part_img");
			String newFileName=null;
			String path=null;
			String uuid=null;
			String orgName = null;
			String ext=null;
			if(mf.getSize() != 0) {
				
				log.info(mf.getOriginalFilename()+"지금 들어온 파일 이름");
				
				log.info(mf.getSize());
				log.info(mf.getContentType());
				path =request.getRealPath("/resources/serverImg");  // 서버에 저장할 폴더 위치
				
				// 이름 중복 방지를 위한 새 파일명 생성
				uuid=UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
				log.info(uuid);
				//업로드한 파일 확장자만 가져오기
				orgName=mf.getOriginalFilename();
				ext= orgName.substring(orgName.lastIndexOf("."));
				// 저장할 파일명
				newFileName= uuid + ext;
			}
			
			//DB 상에도 파일명을 저장해 준다.
			int result = 0;
			if(mf.getSize() == 0) {
				dog.setD_img("default.png");
				log.info("나랏말이?************************************");
				result = service.insertDog(dog);	
				 
			}else if(mf.getSize() != 0) {
				dog.setD_img(newFileName);
				log.info("이게 되는건가 ***************************");
				result = service.insertDog(dog);
				
				log.info("***********uuid"+uuid);
				//저장할 파일 전체 경로
				String imgPath = path+"\\"+newFileName;
				log.info("*****imgPath"+imgPath);
				
				// 파일 저장
				File copyFile = new File(imgPath);
				mf.transferTo(copyFile);
			}
			
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		return "redirect:/member/mypage";
	}
	
	
	@PostMapping("dogModifyPro")
	public String dogModifyPro(DogVO dog, MultipartHttpServletRequest request, Authentication auth ) {
		try {
			System.out.println("어서와"+dog);
			//CustomUser user = (CustomUser)auth.getPrincipal();
			//String m_id =user.getUsername();
			//dog.setM_no(service.getMno(user.getUsername()));
			DogVO O_img=mainService.getOneDog(dog.getD_no());
			MultipartFile mf = request.getFile("part_img");
			String newFileName=null;
			String path=null;
			String uuid=null;
			String orgName = null;
			String ext=null;
			
			if(mf.getSize() != 0) {
			
				log.info(mf.getOriginalFilename()+"지금 들어온 파일 이름");
				
				log.info(mf.getSize());
				log.info(mf.getContentType());
				path =request.getRealPath("/resources/serverImg");  // 서버에 저장할 폴더 위치
				
				// 이름 중복 방지를 위한 새 파일명 생성
				uuid=UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
				log.info(uuid);
				log.info(mf.getOriginalFilename()+"*******************************************");
				
				//업로드한 파일 확장자만 가져오기
				orgName=mf.getOriginalFilename();
				ext= orgName.substring(orgName.lastIndexOf("."));
				// 저장할 파일명
				newFileName= uuid + ext;
			}
			
			//DB 상에도 파일명을 저장해 준다.
			int result = 0;
			if(mf.getSize() == 0) {
				dog.setD_img(O_img.getD_img());
				log.info("나랏말이?************************************");
				result = service.modifytDog(dog);	
				 
			}else if(mf.getSize() != 0) {
				dog.setD_img(newFileName);
				log.info("이게 되는건가 ***************************");
				 result = service.modifytDog(dog);
				 System.out.println("리 슐 트"+result);
				 log.info("***********uuid"+uuid);
				 //저장할 파일 전체 경로
				 String imgPath = path+"\\"+newFileName;
				 log.info("*****imgPath"+imgPath);
				 
				 // 파일 저장
				 File copyFile = new File(imgPath);
				 mf.transferTo(copyFile);
			}
			
			} catch (Exception e) {
				e.printStackTrace();
			}
		return "redirect:/member/mypage";
	}
	
	//	일반 이용자 MyPage 이동
	@GetMapping("mypage")
	public String viewMypage(Authentication auth, Model model) {
		
		CustomUser user = (CustomUser)auth.getPrincipal();
		String loginID = user.getUsername();
		MemberVO member = service.getMember(loginID);
		
		int mno = service.getMno(user.getUsername());
		List<DogVO> dog = service.getDog(mno);
		
		List<EstimateVO> estimate = mypageService.getMemberEstimate(member.getM_no()); 
		List<MemberVO> estimateMember = new ArrayList<MemberVO>();
		
		for (int i = 0; i < estimate.size(); i++) {
			estimateMember.add(mainService.getOneMember(estimate.get(i).getM_no_manager()));
			
		}
		
		
		model.addAttribute("manager",member);
		model.addAttribute("dog", dog);
		model.addAttribute("dogCheck", dog.size());
		model.addAttribute("estimatelist",estimate);
		model.addAttribute("estimateMember",estimateMember);
		
		return "/member/mypage";
	}
	//목록 요청 매핑
	 @GetMapping(value="dogModal/{d_no}", 
			 produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	 public ResponseEntity<DogVO> dogModal(@PathVariable("d_no") int d_no) {
	      
		 log.info("**************** get reply list d_no : " + d_no);
		 DogVO dog = service.getOneDog(d_no);  
	      
		 return new ResponseEntity<DogVO>(dog, HttpStatus.OK);
	}
	

	//견적 취소 처리(삭제)
	@PostMapping("deleteDogPro")
	@PreAuthorize("isAuthenticated()") 
	public String deleteEstPro(@Param("d_no") Integer d_no) {
		int result = service.deleteDog(d_no);
		if(result==1) {
			log.info(result+ "강아지 등록 삭제 완료");

		}
		return "redirect:/member/mypage" ;
	}

}
