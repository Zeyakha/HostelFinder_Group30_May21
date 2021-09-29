package hostelfinder.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FrontController {
	@RequestMapping
	public String home() {
		return "home";
	}

	@RequestMapping("/home")
	public String home1() {
		return "home";
	}

	@RequestMapping("/registration")
	public String registration() {
		return "registration";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/ContactUs")
	public String contactus() {
		return "Contact Us";
	}

	@RequestMapping("/AboutUs")
	public String aboutus() {
		return "About Us";
	}

	@RequestMapping("/AcRoom")
	public String acroom() {
		return "AcRoom";
	}

	@RequestMapping("/NonAcRoom")
	public String nonacroom() {
		return "NonAcRoom";
	}

	@RequestMapping("/LowToHigh")
	public String lowtohigh() {

		return "LowToHigh";
	}

	@RequestMapping("/HighToLow")
	public String hightolow() {

		return "HighToLow";
	}

}
