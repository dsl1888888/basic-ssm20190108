package com.dorosdebby.web.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
public class DemoController {

//	@Value("${sendEmailWhenStart}")
	@Value("#{configproperties_disconf['sendEmailWhenStart']}")
	private String str;

	@RequestMapping("/aa/asdasd")
	@ResponseBody
	public Map<String, Object> ooooo() {

		Map<String, Object> map = new HashMap<>();

		map.put("a", "123123");
		map.put("b", "aaaaaaaa");
		map.put("str", str);

		return map;
	}

	public static void main(String[] args) {

	}
}
