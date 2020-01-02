package org.mpct.blood.repository;

import java.util.List;

import org.mpct.blood.model.IndiaHospital;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface HospitalRepository extends JpaRepository<IndiaHospital,Integer> {
	@Query("FROM IndiaHospital WHERE cityname=?1")
	List<IndiaHospital> findHospitalByCity(String cityname);
}
