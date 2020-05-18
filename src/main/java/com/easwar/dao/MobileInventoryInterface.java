package com.easwar.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface MobileInventoryInterface extends CrudRepository<MobileInventory, Integer> {
	
	@Query("select s from MobileInventory s where prod_name like %?1%")
	List<MobileInventory> findByProductName(String name);

}
