package org.mpct.blood.repository;

import org.mpct.blood.model.Donator;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DonatorRepository extends JpaRepository<Donator,Integer>{

}
