package com.example.springtea.Repository;

import com.example.springtea.Model.Keyword;
import com.example.springtea.Model.Tea;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface KeywordRepository extends JpaRepository<Keyword,String> {

     @Query("SELECT DISTINCT a.name FROM Keyword a")
     Set<String> findDistinctKeyword();

     Keyword getKeywordByName(String keyword);
}
