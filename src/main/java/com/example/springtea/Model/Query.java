package com.example.springtea.Model;

import lombok.*;

import javax.persistence.*;

@ToString
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
public class Query {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long qId;

    public String fullName;
    public String email;

    @Lob
    public String text;

    @ManyToOne
    public User user;
}
