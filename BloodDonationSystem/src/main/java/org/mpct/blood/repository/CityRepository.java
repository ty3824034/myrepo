package org.mpct.blood.repository;

import java.util.List;

import org.mpct.blood.model.IndiaCity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


public interface CityRepository extends JpaRepository<IndiaCity,Integer>{
@Query("FROM IndiaCity WHERE statename=?1")
List<IndiaCity> findCityByState(String statename);
	

}
