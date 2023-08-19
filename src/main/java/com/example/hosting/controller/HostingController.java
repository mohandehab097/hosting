package com.example.hosting.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HostingController {

	
	@RequestMapping("/test")
	public String test() {
		return "Mohand";
	}
	
	
}
