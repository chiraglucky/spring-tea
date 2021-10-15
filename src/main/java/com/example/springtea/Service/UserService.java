package com.example.springtea.Service;

import com.example.springtea.Model.User;
import com.example.springtea.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserRepository userRepository;

    public User registerUser(User user) {
        User u = this.userRepository.findByUsername(user.getUsername());
        if (u==null) {
            return this.userRepository.save(user);
        }
        return null;
    }

    public User login(String username) {
        return this.userRepository.getByUsername(username);
    }
}

