package com.patient.smart.qr.response;

import lombok.*;

import java.time.LocalDate;
import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class IptDTO {
    private String hn;
    private String an;
    private String hospitalName;
    private String patientName;
    private Integer patientId;
    private String age;
    private String cid;
    private String bedNo;
    private String wardName;
    private Date regDate;
    private String bloodGroup;
    private String bloodGroupRh;
    private String barAn;
    private Date birthday;
}
