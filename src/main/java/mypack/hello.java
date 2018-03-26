package mypack;


import java.awt.List;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.boot.autoconfigure.web.ServerProperties.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.annotation.JsonFormat.Value;

import Dao.tintucDao;
import Dao.userDao;
import model.tintuc;
import model.user;

@Controller
public class hello {
	userDao dao = new userDao();
	tintucDao ttdao= new tintucDao();
	user u=new user();
	tintuc tt=new tintuc();
	//kiem tra dang nhap 
	@RequestMapping(value = "/abc", method = RequestMethod.POST)
	public String test(HttpServletRequest request,@Valid @ModelAttribute("tk") user u1, BindingResult bindingResult,ModelMap mm) {
		
		System.out.println("TK: "+u1.getName()+" \nMK: "+u1.getPass()); 
		
		u=dao.login(u1.getName());
		if(u.getPass().equals(u1.getPass())&&u.getPass()!="")	
			{
			System.out.println("Login success!!!");
				request.getSession().setAttribute("login", true);
//				mm.addAttribute("nghia",false);
				return "redirect:/";
			}
		System.out.println("Login failure!!!");
		request.getSession().setAttribute("login", false);
		return "acc";
		
	}
	//trang dang nhap
	@RequestMapping(value = "/acc", method = RequestMethod.GET)
    public String add(Model model) {
		System.out.println("Vào trang dang nhap");
        model.addAttribute("tk", new user());
        return "acc";
    }
	// lay du lieu{Tk} trang dang nhap truyen qua login
	@RequestMapping(value = "/acc", method = RequestMethod.POST)
	public String test1(ModelMap mm,@Valid @ModelAttribute("tk") user u, BindingResult bindingResult) {
		return "acc";
		
	}
	//home 
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(HttpServletRequest request,ModelMap mm) {
//		request.getSession().setAttribute("login", false);
		System.out.println("Vào trang HOME");

		mm.addAttribute("noidung", ttdao.getAllTinTuc());
        return "home";
    }
	
	//Trang home
	@RequestMapping(value = "/19", method = RequestMethod.GET)
    public String getHome(HttpServletRequest request,ModelMap mm) {
		System.out.println("Vào trang 19");
		return "redirect:/";
    }
	@RequestMapping(value = "/20", method = RequestMethod.GET)
    public String edit(HttpServletRequest request,ModelMap mm) {
		if(request.getSession().getAttribute("login")!=null) {
			System.out.println("Vào trang 20");
	        mm.addAttribute("nd", new tintuc());
	        return "edit1";
	    }
		return "acc";
    }
	// lay du lieu trang edit
	@RequestMapping(value = "/20", method = RequestMethod.POST)
	public String edit(ModelMap mm,@Valid @ModelAttribute("nd") tintuc tt, BindingResult bindingResult) {
		System.out.println("Vào trang 20");
		return "edit1";
		
	}
	//trang thuc hien edit
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String edit1(ModelMap mm,@Valid @ModelAttribute("nd") tintuc tt1, BindingResult bindingResult) {
		//tt1=new tintuc();
		System.out.println("Vào trang edit");

		ttdao.insertTinTuc(tt1.getTieuDe(),tt1.getNoiDung(),tt1.getMoTa(),tt1.getTacGia());
		System.out.println(tt1.getTieuDe()+" "+tt1.getNoiDung()+" "+tt1.getMoTa()+" "+tt1.getTacGia());
		mm.addAttribute("noidung","noidung" );
//		mm.addAttribute("nghia",true);
		return "home";
		
	}
	// trang xem tin tuc
	@RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
	public String lastnew1(ModelMap mm,@PathVariable(value = "id") int id){
		tt=ttdao.getTinTuc(id);
		mm.addAttribute("tieude",tt.getTieuDe());
		mm.addAttribute("noidung", tt.getNoiDung());
		mm.addAttribute("mota", tt.getMoTa());
		mm.addAttribute("tacgia", tt.getTacGia());
		
		return "latestnewsThird";
		
	
	
	}
}
