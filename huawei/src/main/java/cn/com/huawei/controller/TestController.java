package cn.com.huawei.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

// mvc
@Controller
public class TestController {
	// @Autowired
	// @Qualifier("")

	@RequestMapping("/test.htm")
	public String test() {
		return "userGroup.jsp";
	}
}
