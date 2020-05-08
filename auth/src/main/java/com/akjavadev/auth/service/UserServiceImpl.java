package com.akjavadev.auth.service;

import com.akjavadev.auth.model.Admin;
import com.akjavadev.auth.model.User;
import com.akjavadev.auth.repository.AdminRepository;
import com.akjavadev.auth.repository.RoleRepository;
import com.akjavadev.auth.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    
    @Autowired
    private AdminRepository adminRepository;

    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(new HashSet<>(roleRepository.findAll()));
        userRepository.save(user);
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

	@Override
	public Admin adminAuth(String username,String password) {
		
		return adminRepository.findByUsername(username,password);
	}



	
}
