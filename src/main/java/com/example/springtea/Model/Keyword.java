package com.example.springtea.Model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@Entity
public class Keyword {
    @Id
    private String id;
    private String name;

    @ManyToMany(mappedBy = "keywords")
    @JsonIgnoreProperties("keywords")
    private Set<Tea> teas=new HashSet<>();

    public Keyword(String name){
        this.name=name;
    }
}
