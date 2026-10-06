package com.patient.smart.qr.userAuth.config;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.patient.smart.qr.userAuth.payload.AuthDto;
import com.patient.smart.qr.userAuth.payload.UserDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.Date;

@RequiredArgsConstructor
@Component
public class UserAuthProvider {
    private final static String secret = "samplesecretkey123";
    @Value("${user-name}")
    private String username;
    @Value("${first-name}")
    private String firstName;


   /* public String createToken(User user) {
        Date now = new Date();
        Date expiresAt = new Date(now.getTime() + (24L * 60 * 60 * 1000));
        return JWT.create()
                .withIssuer(user.getEmail())
                .withIssuedAt(now)
                .withExpiresAt(expiresAt)
                .withClaim("id", user.getId())
                .withClaim("email", user.getEmail())
                .withClaim("firstName", user.getFirstName())
                .withClaim("lastName", user.getLastName())
                .withClaim("status", user.getStatus().toString())
                .sign(Algorithm.HMAC256(secret));
    }

    */

    public String createToken(AuthDto credential) {
        Date now = new Date();
        Date expiresAt = new Date(now.getTime() + (24L * 60 * 60 * 1000));
        return JWT.create()
                .withIssuer(credential.getUserName())
                .withIssuedAt(now)
                .withExpiresAt(expiresAt)
                .withClaim("email", username)
                .withClaim("firstName", firstName)
                .withClaim("lastName", "")
                .sign(Algorithm.HMAC256(secret));
    }
    public Authentication validateToken(String token) {
        try {
            JWTVerifier verifier = JWT.require(Algorithm.HMAC256(secret)).build();
            DecodedJWT decodedJWT = verifier.verify(token);
            UserDTO user = new UserDTO();
            user.setId(decodedJWT.getClaim("id").asLong());
            user.setEmail(decodedJWT.getClaim("userName").asString());
            user.setFirstName(decodedJWT.getClaim("firstName").asString());
            user.setLastName(decodedJWT.getClaim("lastName").asString());
            user.setStatus(decodedJWT.getClaim("status").asString());
            return new UsernamePasswordAuthenticationToken(user, null, Collections.emptyList());
        } catch (Exception e) {
            return null;
        }
    }

    public String generateRefreshToken(String email) {
        return JWT.create()
                .withSubject(email)
                .withExpiresAt(new Date(System.currentTimeMillis() + (7L * 24 * 60 * 60 * 1000)))
                .sign(Algorithm.HMAC256(secret));
    }
}
