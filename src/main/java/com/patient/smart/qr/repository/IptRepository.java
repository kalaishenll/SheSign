package com.patient.smart.qr.repository;

import com.patient.smart.qr.entity.Ipt;
import com.patient.smart.qr.response.IptDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IptRepository extends JpaRepository<Ipt, String> {

    @Query(value = "SELECT ipt.hn, ipt.an, " +
            "patient.clinic AS hospitalName, " +
            "Concat(patient.pname, patient.fname, ' ', patient.lname) AS patientName, " +
            "patient.patient_type_id AS patientId, "+
            "Concat(Extract(YEAR FROM Age(Now()::DATE, patient.birthday)), ' ปี ', " +
            "Extract(MONTH FROM Age(Now()::DATE, patient.birthday)), ' เดือน ', " +
            "Extract(DAY FROM Age(Now()::DATE, patient.birthday)), ' วัน') AS age, " +
            "CASE WHEN Left(patient.cid, 6) = '010741' THEN '' ELSE patient.cid END AS cid, " +
            "iptadm.bedno, ward.name AS wardName, ipt.regdate, " +
            "Replace(patient.bloodgrp, 'ไม่ทราบ', '') AS bloodGroup, patient.bloodgroup_rh, " +
            "Concat('302', ipt.an) AS barAn, patient.birthday " +
            "FROM ipt " +
            "INNER JOIN patient ON patient.hn = ipt.hn " +
            "LEFT JOIN iptadm ON iptadm.an = ipt.an " +
            "LEFT JOIN ward ON ward.ward = ipt.ward " +
            "WHERE ipt.an = :an", nativeQuery = true)
    List<IptDTO> findByAn(@Param("an") String an);
}
