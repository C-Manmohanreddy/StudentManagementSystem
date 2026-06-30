package com.mits.service;

import java.util.List;
import com.mits.model.Course;
import com.mits.repository.CourseRepository;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CourseService {

    @Autowired
    private CourseRepository courseRepository;

    
    
    public List<Course> getAllCourses() {
        return courseRepository.findAll();
    }

    // Using setters ensures no compilation errors regardless of constructors!
    @PostConstruct
    public void initSampleCourses() {
        if (courseRepository.count() == 0) {
            
            Course c1 = new Course();
            c1.setCourseName("Java Full Stack");
            c1.setDuration("6 Months");
            c1.setTrainer("Mr. Rajesh Kumar");
            c1.setFees(35000.00);
            c1.setAssignedStudents(12);
            courseRepository.save(c1);

            Course c2 = new Course();
            c2.setCourseName("Python Data Science");
            c2.setDuration("4 Months");
            c2.setTrainer("Dr. Amit Sharma");
            c2.setFees(40000.00);
            c2.setAssignedStudents(8);
            courseRepository.save(c2);

            Course c3 = new Course();
            c3.setCourseName("UI/UX Design");
            c3.setDuration("3 Months");
            c3.setTrainer("Ms. Priya Verma");
            c3.setFees(25000.00);
            c3.setAssignedStudents(5);
            courseRepository.save(c3);
        }
        
    }

	public int cou() {
		return  (int) courseRepository.count();
	}
}