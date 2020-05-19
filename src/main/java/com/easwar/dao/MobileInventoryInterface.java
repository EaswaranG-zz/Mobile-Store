package com.easwar.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface MobileInventoryInterface extends CrudRepository<MobileInventory, Integer> {
	
	@Query("select s from MobileInventory s where prod_name like %?1%")
	Page<MobileInventory> findByProductName(String name, Pageable pageable);

}
