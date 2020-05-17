package com.easwar.dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Component
@Table(name = "mobile_inventory")
public class MobileInventory {
	
	@Id
	@Column(name = "prod_id")
	private int productID;
	
	@Column(name = "prod_name")
	private String productName;
	
	@Column(name = "unit_cost")
	private int unitCost;
	
	public int getProductID() {
		return productID;
	}

	public void setProductID(int productID) {
		this.productID = productID;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getUnitCost() {
		return unitCost;
	}

	public void setUnitCost(int unitCost) {
		this.unitCost = unitCost;
	}
	
}
