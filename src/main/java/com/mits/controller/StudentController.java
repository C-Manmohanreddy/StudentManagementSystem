package com.mits.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mits.model.Student;
import com.mits.service.StudentService;

@Controller
@RequestMapping("/students")
public class StudentController {
	@Autowired
	private StudentService service;
//	@RequestMapping("/save")
//	public ModelAndView homxe(@ModelAttribute("student") Student s)
//	{
//        
//		Student s1=service.saveStudent(s);
//        ModelAndView mav = new ModelAndView("Display");
//        
//        mav.addObject("studentInfo was sucess");
//        
//        return mav;
//	}
	@RequestMapping("/save")
	public ModelAndView save(@ModelAttribute("student") Student s)
	{
        
		Student s1=service.saveStudent(s);
        ModelAndView mav = new ModelAndView("sucess");
        
        mav.addObject("student","Register Studen sucessfilly");
        
        return mav;
	}
	
	@RequestMapping("/search")
	public ModelAndView searchStudents(@RequestParam(value = "keyword", required = false) String keyword) {
	    ModelAndView mav = new ModelAndView("search");
	    
	    if (keyword != null && !keyword.trim().isEmpty()) {
	        List<Student> stud = service.searchStudents(keyword);
	        mav.addObject("studentList", stud);
	    }
	    
	    return mav;
	}


	@RequestMapping("/register")
	public String regi()
	{
		return "register";
	}
	
	

	@RequestMapping("/list")
	public ModelAndView viewAll()
	{
		List<Student> stud = service.viewAllst();
        ModelAndView mav = new ModelAndView("view"); 
        mav.addObject("studentList", stud); 
        
        return mav;

	}
	
	
	
	@RequestMapping("/editStudent")
	public ModelAndView edit(@RequestParam Integer id)
	{
		Student s1=service.edit(id);
		ModelAndView mav=new ModelAndView("edit");
		mav.addObject("student",s1);
		return mav;
	}
	@RequestMapping("/update")
	public ModelAndView update (@ModelAttribute Student st)
	{Student s1=service.saveStudent(st);
    ModelAndView mav = new ModelAndView("sucess");
    
    mav.addObject("student","sucessfully updated");
    return mav;
	}
	@RequestMapping("deleteStudent")
	public ModelAndView  delete(@RequestParam Integer id)
	{
		service.deleteStudent(id);
		
		 ModelAndView mav = new ModelAndView("sucess");
		    
		    mav.addObject("student","sucessfully deleted");
		    return mav;
	}
	@RequestMapping("")
	public ModelAndView studentsHome() {
	    List<Student> stud = service.viewAllst();

	    ModelAndView mav = new ModelAndView("view");
	    mav.addObject("studentList", stud);

	    return mav;
	}
	
}
