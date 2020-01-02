package org.mpct.blood.repository;

import java.util.List;

import org.mpct.blood.model.BloodDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface BloodRepository extends JpaRepository<BloodDetails,Integer>{
	@Query("FROM BloodDetails WHERE hospitalname=?1")
	List<BloodDetails> findBloodByHospital(String hospitalname);
	
	@Query("FROM BloodDetails WHERE hospitalname=?1 and bloodtype=?2")
	List<BloodDetails> findQuantityByBlood(String hospitalname,String bloodtype);

}
