package com.patient.smart.qr.userAuth.service;

import com.patient.smart.qr.userAuth.config.UserAuthProvider;
import com.patient.smart.qr.userAuth.entity.User;
import com.patient.smart.qr.userAuth.payload.AuthDto;
import com.patient.smart.qr.userAuth.payload.AuthResponseDto;
import com.patient.smart.qr.userAuth.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserInfoService {

    @Autowired
    UserRepository userRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    UserAuthProvider userAuthProvider;
    @Value("${user-password}")
    private String userPassword;

    public User saveUser(User user) throws Exception {
        Optional<User> existUser = userRepository.findByEmail(user.getEmail());
        if (existUser.isPresent()) {
            throw new Exception("User with email:" + user.getEmail() + " already exist!");
        }
        // encoding password with bcrypt
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        return userRepository.save(user);
    }

  /*  public AuthResponseDto authenticate(AuthDto credential) throws Exception {
        Optional<User> existUser = userRepository.findByEmail(credential.getUserName());
        if (existUser.isPresent()) {
            if (existUser.get().getStatus() == Status.ACTIVE) {
                if (passwordEncoder.matches(credential.getPassword(), existUser.get().getPassword())) {
                    AuthResponseDto authResponseDto = new AuthResponseDto();
                    authResponseDto.setToken(userAuthProvider.createToken(existUser.get()));
                    userRepository.save(existUser.get());
                    return authResponseDto;
                }
                throw new Exception("Invalid email or password.");
            }
            throw new Exception("Account is not active. Please contact support.");
        }
        throw new Exception("Invalid email or password.");
    }
    */


    public AuthResponseDto authenticate(AuthDto credential) throws Exception {
        if (passwordEncoder.matches(credential.getPassword(), userPassword)) {
            AuthResponseDto authResponseDto = new AuthResponseDto();
            authResponseDto.setToken(userAuthProvider.createToken(credential));
            return authResponseDto;
        }
        throw new Exception("Invalid email or password.");
    }

   /* public AuthResponseDto refreshToken(String email) throws Exception {
        Optional<User> user = userRepository.findByEmail(email);
        if (user.isPresent()) {
            AuthResponseDto authResponseDto = new AuthResponseDto();
            String newAccessToken = userAuthProvider.generateRefreshToken(user.get().getEmail());
            authResponseDto.setToken(newAccessToken);
            return authResponseDto;
        } else {
            throw new Exception("Invalid email");
        }
    }
    */

    public AuthResponseDto refreshToken(String email) throws Exception {
        AuthResponseDto authResponseDto = new AuthResponseDto();
        String newAccessToken = userAuthProvider.generateRefreshToken(email);
        authResponseDto.setToken(newAccessToken);
        return authResponseDto;
    }
}
