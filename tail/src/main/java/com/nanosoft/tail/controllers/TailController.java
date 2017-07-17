package com.nanosoft.tail.controllers;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.web.bind.annotation.RestController;

import com.nanosoft.tail.services.TailService;

@RestController
public class TailController {
	
	@Autowired
	TailService tailservice;
	
@MessageMapping("/tail")
@SendTo("/tail/tailfile")
	public List<String> tail(TailService tailService) throws IOException{
           	//tailService.fileDiff();
           	
           	return tailservice.fileDiff();
	}

}