package org.mpct.blood.repository;

import java.util.List;

import org.mpct.blood.model.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;



public interface UsersRepository extends JpaRepository<Users,Integer>{
	@Query("FROM Users WHERE phone=?1 and password=?2")
	List<Users> checkLogin(String phone,String password);
}
