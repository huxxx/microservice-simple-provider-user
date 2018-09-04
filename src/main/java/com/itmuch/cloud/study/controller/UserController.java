package com.itmuch.cloud.study.controller;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.itmuch.cloud.study.entity.TUser;
import com.itmuch.cloud.study.repository.TUserMapper;

@RestController
public class UserController {
  //@Autowired
  //private UserRepository userRepository;
  //@Autowired
  //private TUserMapper tUserMapper;

  /*@GetMapping("/{id}")
  public User findById(@PathVariable Long id) {
    User findOne = this.userRepository.findOne(id);
    return findOne;
  }*/
  
  @RequestMapping(value = "/api/test", method = RequestMethod.GET)
  public TUser test() {
	  //TUser tUser = this.tUserMapper.selectByPrimaryKey(1L);
	  
	  TUser tUser = new TUser();
	  tUser.setId(1L);
	  tUser.setName("黄家驹");
	  tUser.setAge(32);
	  tUser.setPassword("123456");
	  tUser.setUserName("huangjiaju");
	  tUser.setBalance(new BigDecimal(35000));
	   
	  return tUser;
  }
  
  @GetMapping("/index")
  public ModelAndView index() {
	  Map map = new HashMap();
	  map.put("1", "a");
	  map.put("2", "b");
	  return new ModelAndView("index", map);
  }
  
  @GetMapping("/linkage")
  public ModelAndView linkage() {
	  Map map = new HashMap();
	  map.put("1", "a");
	  map.put("2", "b");
	  return new ModelAndView("linkage", map);
  }
  
  @GetMapping("/personDetail")
  public ModelAndView personDetail() {
	  Map map = new HashMap();
	  map.put("1", "a");
	  map.put("2", "b");
	  return new ModelAndView("personDetail", map);
  }
  
}
