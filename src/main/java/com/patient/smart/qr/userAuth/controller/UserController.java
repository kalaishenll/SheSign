package com.patient.smart.qr.userAuth.controller;

import com.patient.smart.qr.response.CommonResponseDTO;
import com.patient.smart.qr.userAuth.entity.User;
import com.patient.smart.qr.userAuth.payload.AuthDto;
import com.patient.smart.qr.userAuth.payload.AuthResponseDto;
import com.patient.smart.qr.userAuth.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(path = "/api/user")
public class UserController {

    @Autowired
    private UserInfoService userInfoService;

    @PostMapping(path = "/save")
    public ResponseEntity<CommonResponseDTO> saveUser(@RequestBody User user) {
        try {
            User savedUser = userInfoService.saveUser(user);
            return ResponseEntity.status(HttpStatus.OK)
                    .contentType(MediaType.APPLICATION_JSON)
                    .body(new CommonResponseDTO(200, "Account created successfully!", savedUser));
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .contentType(MediaType.APPLICATION_JSON)
                    .body(new CommonResponseDTO(400, e.getMessage(), null));
        }
    }

    @PostMapping(path = "/authenticate")
    public ResponseEntity<CommonResponseDTO> authenticate(@RequestBody AuthDto credential) {
        try {
            AuthResponseDto authResponseDto = userInfoService.authenticate(credential);
            return ResponseEntity.status(HttpStatus.OK)
                    .contentType(MediaType.APPLICATION_JSON)
                    .body(new CommonResponseDTO(200, "Token generated successfully!", authResponseDto));
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .contentType(MediaType.APPLICATION_JSON)
                    .body(new CommonResponseDTO(400, e.getMessage(), null));
        }
    }

    @PostMapping(path = "/refresh")
    public ResponseEntity<CommonResponseDTO> refreshToken(@RequestParam String email) throws Exception {
        AuthResponseDto authResponseDto = userInfoService.refreshToken(email);
        return ResponseEntity.status(HttpStatus.OK)
                .contentType(MediaType.APPLICATION_JSON)
                .body(new CommonResponseDTO(200, "Successfully Generated a Refresh Token!", authResponseDto));
    }

}
