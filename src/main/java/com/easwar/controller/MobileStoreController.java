package com.easwar.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.easwar.dao.MobileInventory;
import com.easwar.dao.MobileInventoryInterface;

@RestController
public class MobileStoreController {

	@Autowired
	MobileInventoryInterface mobileInventoryInterface;
	
	@Autowired
	MobileInventory mobileInventory;

	@GetMapping("/listAllMobiles")
	public List<MobileInventory> getAllMobiles() {		
		List<MobileInventory> studentsList = (List<MobileInventory>) mobileInventoryInterface.findAll();
		
		return studentsList;
	}
	
	@RequestMapping(value="/buy", method=RequestMethod.GET)
	public ModelAndView getBuyerPage() {		
		ModelAndView buyerPageView = new ModelAndView("buyerPage");
		return buyerPageView;
	}
	
	@RequestMapping(value="/sell", method=RequestMethod.GET)
	public ModelAndView getSellerPage() {		
		ModelAndView homeView = new ModelAndView("sellerPage");		
		return homeView;
	}
	
	@RequestMapping(value="/addMobile", method=RequestMethod.GET)
	public ModelAndView addMobile(@RequestParam("productID") int productID, @RequestParam("productName") String productName,
			@RequestParam("unitCost") int unitCost) throws SQLException {

		ModelAndView mv = new ModelAndView();
		mv.addObject("productID", productID);
		mv.addObject("productName", productName);
		mv.addObject("unitCost", unitCost);
		mv.setViewName("sellerPage");

		mobileInventory.setProductID(productID);
		mobileInventory.setProductName(productName);
		mobileInventory.setUnitCost(unitCost);
		mobileInventoryInterface.save(mobileInventory);
		return mv;
	}
	
	@RequestMapping(value="/findMobilebyID", method=RequestMethod.GET)
	public List<MobileInventory> searchMobile(@RequestParam("productName") String productName) throws SQLException {
		List<MobileInventory> studentsList = (List<MobileInventory>) mobileInventoryInterface.findAll();
		
		return studentsList;
	}

	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView getHome() {		
		ModelAndView homeView = new ModelAndView("home");		
		return homeView;
	}

	private static final String PATH ="/error";
	
	@RequestMapping(value=PATH, method=RequestMethod.GET)
	public String error() {
		
		return "Custom Error";
	}
	
	public String getErrorPath() {
		return PATH;
	}

}
