package com.example.springtea.Model;

import lombok.*;

import javax.persistence.*;

@ToString
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class MyOrder {
   @Id
   @GeneratedValue(strategy = GenerationType.AUTO)
   public Long id;

   private String orderId;
   private String amount;
   private String receipt;
   private String status;
   @ManyToOne
   private User user;

   private String rzrpaymentId;

   private String rzrSignature;

}
