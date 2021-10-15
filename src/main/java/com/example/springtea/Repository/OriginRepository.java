package com.example.springtea.Repository;

import com.example.springtea.Model.Origin;
import com.example.springtea.Model.Tea;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface OriginRepository extends JpaRepository<Origin,String> {

    @Query("SELECT DISTINCT a.name FROM Origin a")
    Set<String> findDistinctOrigin();

    Origin getOriginByName(String originName);
}
