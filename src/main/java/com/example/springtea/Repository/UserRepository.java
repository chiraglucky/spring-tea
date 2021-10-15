package com.example.springtea.Repository;

import com.example.springtea.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Long> {
    User getByUsername(String username);

    User findByUsername(String username);
}
