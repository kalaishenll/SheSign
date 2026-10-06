package com.patient.smart.qr.userAuth.payload;

import lombok.Data;

@Data
public class AuthDto {
  private String userName;
  private String password;
}
