package com.poly.rest.controller;

import java.util.List;

import com.poly.dtos.FileDTO;
import com.poly.entity.Voucher;
import com.poly.exceptions.MoneyNotEnoughException;
import com.poly.mappers.JsonMapper;
import com.poly.service.ReportService;
import com.poly.service.VoucherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.fasterxml.jackson.databind.JsonNode;
import com.poly.dao.OrderDao;
import com.poly.entity.Order;
import com.poly.service.OrderService;

@CrossOrigin("*")
@RestController
public class OrderRestController {
	@Autowired
	OrderDao odao;
	@Autowired
	OrderService orderService;
    @Autowired
	ReportService reportService;
    @Autowired
	VoucherService voucherService;
	@GetMapping("/rest/orders")
	public List<Order> getAll(){
		return orderService.findByAllDesc();
	}
	@GetMapping("/rest/ordersstatus")
	public List<Order> getStatus(){
		return odao.getStatus();
	}
	
	@PostMapping("/rest/orders")
	public Order create(@RequestBody JsonNode orderData,@RequestParam("code") String code) throws Throwable {
		return orderService.create(orderData,code);
	}

	@PostMapping("/rest/orders/sell")
	public FileDTO createOrderOfSell(@RequestBody JsonNode orderData,@RequestParam("code") String code) throws Throwable {
		var billDTO = JsonMapper.convertToBillDTO(orderData);
		if(billDTO.getOrder().getMoney_give()<(billDTO.getOrder().getPrice()-billDTO.getOrder().getVoucher_price()))
			throw  new MoneyNotEnoughException("Money not enough");
		String pdfPath= reportService.createPdf(billDTO);
		orderService.createBillSell(billDTO,code);
		FileDTO fileDTO = new FileDTO(pdfPath);
		return fileDTO;
	}
	
	@PutMapping("/rest/orders/{id}")
	public Order put(@PathVariable("id")Integer id,@RequestBody Order order) {
		return  orderService.update(order);
	}
}