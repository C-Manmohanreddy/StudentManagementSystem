package com.mits.controller;

import java.util.List;
import com.mits.model.Course;
import com.mits.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CourseController {

    @Autowired
    private CourseService courseService;

    @GetMapping("/courses/list")
    public String viewCoursesList(Model model) {
        List<Course> coursesList = courseService.getAllCourses();
        model.addAttribute("courses", coursesList);
        return "courses_list"; // Resolves to WEB-INF/views/courses_list.jsp
    }
}