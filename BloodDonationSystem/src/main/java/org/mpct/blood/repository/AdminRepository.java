package org.mpct.blood.repository;

import java.util.List;

import org.mpct.blood.model.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface AdminRepository extends JpaRepository<Admin,Integer>{
@Query("FROM Admin WHERE adminid=?1 and password=?2")
public List<Admin> checkAdminLogin(int adminid,String password);
}
