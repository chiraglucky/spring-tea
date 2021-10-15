package com.example.springtea.Repository;

import com.example.springtea.Model.Query;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QueryRepository extends JpaRepository<Query,Long> {
}
