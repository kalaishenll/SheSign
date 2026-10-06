package com.patient.smart.qr.service;

import com.patient.smart.qr.response.CommonResponseDTO;

public interface IptService {
    CommonResponseDTO findIpt(String token, String id) throws Exception;
}
