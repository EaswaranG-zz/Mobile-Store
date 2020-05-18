package com.easwar.dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Component
@AllArgsConstructor
@NoArgsConstructor
@Data
@Table(name = "mobile_inventory")
public class MobileInventory {
	
	@Id
	@Column(name = "prod_id")
	private int productID;
	
	@Column(name = "prod_name")
	private String productName;
	
	@Column(name = "unit_cost")
	private int unitCost;
	
	
}
