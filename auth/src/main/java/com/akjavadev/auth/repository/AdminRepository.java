package com.akjavadev.auth.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.akjavadev.auth.model.Admin;
import com.akjavadev.auth.model.Loan;
import com.akjavadev.auth.model.User;

public interface AdminRepository extends JpaRepository<Admin, Integer>{

	/*
	 * @Query("FROM Admin WHERE username = ?1 AND password=?2") public Admin
	 * adminAuth(String username,String password);
	 */
	
	@Query("FROM Admin WHERE username = ?1 AND password=?2")
	Admin findByUsername(String username,String password);
}
	