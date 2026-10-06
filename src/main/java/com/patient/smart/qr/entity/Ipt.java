package com.patient.smart.qr.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.Date;


@Entity
@Getter
@Setter
@Table(name = "ipt", schema = "public")
public class Ipt {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String an;

    @Column(name = "hn", nullable = false, length = 50)
    private String hn;

    @Column(name = "ward", length = 10)
    private String ward;

}
