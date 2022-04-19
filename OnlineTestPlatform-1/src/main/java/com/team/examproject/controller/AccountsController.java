package com.team.examproject.controller;

import java.net.http.HttpRequest;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.weaver.patterns.TypePatternQuestions.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.team.examproject.entity.Accounts;
import com.team.examproject.entity.Mcq;
import com.team.examproject.repository.AccountsRepository;
import com.team.examproject.repository.McqsRepository;

@Controller
public class AccountsController {

	@Autowired
	AccountsRepository accountRepository;
	
	@Autowired
	McqsRepository mcqsRepository;
	
	@RequestMapping("home")
	public String home() {
        
		return "login";

	}
	
	@PostMapping("/loginAction")                     
    public ModelAndView saveDetails(@RequestParam("username") String username,
                              @RequestParam("password") String password,
                              ModelAndView modelandview,HttpSession session) {
		
		List<Accounts> allAccounts = accountRepository.findAll();
		for(Accounts a:allAccounts) {
			if(a.getAccname().equals(username) && a.getAccpass().equals(password)) {
				//save acc details
				session.setAttribute("id", a.getId());
				session.setAttribute("username", username);
				

				
				//check if user already taken exam
				if(a.getMarks()==-1) {
					// write your code to save details
					modelandview.addObject("username", username);
					modelandview.addObject("password", password);
					modelandview.setViewName("welcomepage");
				}
				else {
					modelandview.addObject("mark",a.getMarks());
					modelandview.addObject("username",session.getAttribute("username"));
					modelandview.setViewName("mark");
				}
				
		        return modelandview;
			}
			
		}
		modelandview.setViewName("login");
		return modelandview;
        
    }
	
	@PostMapping("/retake")
	 public ModelAndView retake(ModelAndView modelandview,HttpSession session) {
		modelandview.addObject("username",session.getAttribute("username"));
		modelandview.setViewName("welcomepage");
		return modelandview;
	}
	
	@PostMapping("/logout")
	 public String logout() {
		
		return "login";
	}
	
	@PostMapping("/mcqpage")
	public ModelAndView mcqpage(@RequestParam("lvlbtn") String btn, ModelAndView modelandview) {
		List<Mcq> questions = mcqsRepository.findByLvl(btn);
				modelandview.addObject("mcqs", questions);
		modelandview.setViewName("mcq");
		
		return modelandview;
	}
	
	@PostMapping("/markpage")
	public ModelAndView markpage( HttpServletRequest request, ModelAndView modelandview,HttpSession session) {

		int start=Integer.parseInt(request.getParameter("questionstarts"));
		int mark=0;
		String uservalue,correctvalue;
		for(int i=start;i<start+10;i++) {
			uservalue=request.getParameter(i+"");
			Mcq mcq = mcqsRepository.getById(i);
			correctvalue=mcq.getCorrectOption();
			if(uservalue.equals(correctvalue)) {
				mark++;
			}
		}
		int id=(int) session.getAttribute("id");
		Accounts useracc = accountRepository.getById(id);
		useracc.setMarks(mark);
		accountRepository.save(useracc);
		List<Accounts> lb=(List<Accounts>) accountRepository.getLeaderBoard();
		modelandview.addObject("leaderboard",lb);
		modelandview.addObject("mark",mark);
		modelandview.addObject("username",session.getAttribute("username"));
		modelandview.setViewName("mark");
		return modelandview;
	}
	
}
