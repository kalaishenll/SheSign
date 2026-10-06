package com.patient.smart.qr.controller;

import com.patient.smart.qr.response.CommonResponseDTO;
import com.patient.smart.qr.service.IptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/ipt")
public class IptController {

    @Autowired
    IptService iptService;

    @GetMapping()
    public CommonResponseDTO getIpt(@RequestHeader("Authorization") String token, @RequestParam String id) throws Exception {
        return iptService.findIpt(token,id);
    }

}
