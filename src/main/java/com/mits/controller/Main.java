package com.mits.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mits.model.Student;
import com.mits.service.CourseService;
import com.mits.service.StudentService;

@Controller
public class Main {
	@Autowired
	StudentService service ; 
	@Autowired
	//Studentservice service ; 
	CourseService co;
	
	@RequestMapping("/")
	public ModelAndView save()
	{
        int cco=co.cou();
		int x=service.count();
		List<Student> s = service.viewAllst();
		System.out.println(s);
        ModelAndView mav = new ModelAndView("all");
        
        mav.addObject("count",x);
//        mav.addObject("student","succes");
        mav.addObject("tc",cco);
        mav.addObject("students",s);
        return mav;
	}
	
	

	@RequestMapping("/reports")
	public ModelAndView showReports() {
        // 1. Initialize ModelAndView with the view name "reports" (maps to reports.jsp)
        ModelAndView mav = new ModelAndView("reports");
        
        // 2. Fetch the data from your database service
        List<Student> students = service.viewAllst(); // Change to your service's exact method name if different
        
        // 3. Compute metric calculations
        long totalStudents = students.size();
        long maleCount = students.stream().filter(s -> "Male".equalsIgnoreCase(s.getGender())).count();
        long femaleCount = students.stream().filter(s -> "Female".equalsIgnoreCase(s.getGender())).count();
        
        // 4. Bind variables to the view layer using addObject()
        mav.addObject("totalStudents", totalStudents);
        mav.addObject("maleCount", maleCount);
        mav.addObject("femaleCount", femaleCount);
        mav.addObject("students", students);
        
        // 5. Return the completed container
        return mav;
    }

	@RequestMapping("/dashboard")
	public String dashboard()
	{
		return "dashbord";
	}

}
