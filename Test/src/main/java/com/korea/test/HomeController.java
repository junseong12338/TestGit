package com.korea.test;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	

	@RequestMapping("/naver.do")
    public String naver() {
        return "naver_login";
    }
    
    
    @RequestMapping(value="/callback", method=RequestMethod.GET)
    public String callBack(){
        return "callback";
    }
    
    @RequestMapping(value="naverSave", method=RequestMethod.POST)
    public @ResponseBody String naverSave( @RequestParam("n_email") String n_email, @RequestParam("n_id") String n_id, @RequestParam("n_name") String n_name) {
    System.out.println("#############################################");
    System.out.println(n_email);
    System.out.println(n_id);
    System.out.println(n_name);
    System.out.println("#############################################");
 
    NaverVo naver = new NaverVo();
 
  
    naver.setEmail(n_email);
    naver.setId(n_id);
    naver.setName(n_name);

    
    
    System.out.println("zzzzz =" +naver.getEmail());
 
    String result = "no";
    
    if(naver!=null) {
        result = "ok";
    }
 
    return result;
    
    }
}
