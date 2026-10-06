package com.patient.smart.qr.serviceImpl;

import com.patient.smart.qr.repository.IptRepository;
import com.patient.smart.qr.response.CommonResponseDTO;
import com.patient.smart.qr.response.IptDTO;
import com.patient.smart.qr.service.IptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IptServiceImpl implements IptService {
    @Autowired
    IptRepository iptRepository;

    @Override
    public CommonResponseDTO findIpt(String token, String id) throws Exception {
        List<IptDTO> data = iptRepository.findByAn(id);
        if (data.isEmpty()) {
            return new CommonResponseDTO(201, "The data is empty", data);
        } else {
            return new CommonResponseDTO<>(200, "Successfully fetched", data);
        }
    }
}
