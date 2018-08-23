package com.itmuch.cloud.study.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.itmuch.cloud.study.entity.TUser;
import com.itmuch.cloud.study.repository.TUserMapper;

@Controller
public class UserController {
 /* @Autowired
  private UserRepository userRepository;*/
  //@Autowired
  //private TUserMapper tUserMapper;

/*  @GetMapping("/{id}")
  public User findById(@PathVariable Long id) {
    User findOne = this.userRepository.findOne(id);
    return findOne;
  }*/
  
/*  @RequestMapping(value = "/api/test", method = RequestMethod.GET)
  public TUser test() {
	  TUser tUser = this.tUserMapper.selectByPrimaryKey(1L);
	   
	   return tUser;
  }*/
  
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
  
}
