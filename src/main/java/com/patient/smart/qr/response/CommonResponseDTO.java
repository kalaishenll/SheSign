package com.patient.smart.qr.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CommonResponseDTO<T> {
    private Integer code;
    private String message;
    private T data;
}
