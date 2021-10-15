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
public class Origin {
    @Id
    private String id;
    private String name;

    @ManyToMany(mappedBy = "origins")
    @JsonIgnoreProperties("origins")
    private Set<Tea> teas = new HashSet<>();
}
