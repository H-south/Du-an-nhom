package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entity.Companys;



public interface CompanysRepository extends JpaRepository<Companys,String>{
	@Query("select x from Companys x where x.id Like %?1% or x.tenCty Like %?1%")
	List<Companys> findByIdOrName(String keywords);
}
