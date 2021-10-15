package com.example.springtea.Model;

import lombok.*;

import javax.persistence.*;

@ToString
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long uId;

    @Column(nullable = false,length = 45)
    private String fullName;

    @Column(nullable = false,unique = true,length = 45)
    private String username;

    @Column(nullable = false,length = 45)
    private String password;

    @Column(nullable = false,length = 10)
    private String phoneNumber;

    private String avatarURL;
}
