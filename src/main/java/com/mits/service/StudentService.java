package com.mits.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mits.model.Student;
import com.mits.repository.Student_rep;

@Service
public class StudentService {
	@Autowired
	private Student_rep repo;
	
	
	
	public Student saveStudent(Student s) {
		
		return repo.save(s);
	}



	public List<Student> viewAllst() {
		
		return repo.findAll(); 
	}



	public Student edit(Integer id) {
	    Optional<Student> s = repo.findById(id);
	    
	    return s.orElse(null); 
	}



	public void deleteStudent(Integer id) {
		 repo.deleteById(id);
		
	}



	public List<Student> searchStudents(String keyword) {
		   return repo.searchByKeyword(keyword);
	}



	public int count() {
		return (int) repo.count();

	}



//@RequestMapping("editStudent")
//	public Student updatest(Integer id) {
//
//	    Optional<Student> s = repo.findById(id);
//		
//		return repo.findById(id).orElse(null);
//	}

}
