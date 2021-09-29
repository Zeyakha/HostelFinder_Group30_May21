package hostelfinder.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.*;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import hostelfinder.dao.CityMapper;
import hostelfinder.dao.Dao;
import hostelfinder.dao.HostelDataMapper;
import hostelfinder.dao.HostelGetterMapper;
import hostelfinder.dao.IdMapper;
import hostelfinder.dao.LoginMapper;
import hostelfinder.dao.clientMapper;
import hostelfinder.entites.Booking;
import hostelfinder.entites.Client;
import hostelfinder.entites.HostelData;
import hostelfinder.entites.HostelInfo;
import hostelfinder.entites.Id;
import hostelfinder.entites.Room;
import hostelfinder.entites.city;
import hostelfinder.entites.login;
import hostelfinder.entites.registration;
import hostelfinder.entites.hostelGetter;

@Controller
public class BackendController {

	Dao d = new Dao();
	String em;
	int count = 0;
	int hostelid1;
	int activestatus=0;
	int clientid=0;

	@RequestMapping(path = "/registrationModel", method = RequestMethod.POST)
	public String registrationModel(@ModelAttribute registration reg, Model model) {
		JdbcTemplate template = d.getTemplate();
		String query = "insert into registration(email,password,firstname,lastname,phone,gender,dob,usertype) values(?,?,?,?,?,?,?,?)";
		int result = template.update(query, reg.getEmail(), reg.getPassword(), reg.getFirstname(), reg.getLastname(),
				reg.getPhone(), reg.getGender(), reg.getDob(), reg.getUsertype());
		System.out.println(result + " row effected");
		return "login";
	}

	@RequestMapping(path = "/loginModel", method = RequestMethod.POST)
	public ModelAndView loginModel(@RequestParam("email") String email, @RequestParam("password") String password) {
		ModelAndView m = new ModelAndView();
		try {
			String query = "select password,usertype,email from registration where email=?";
			JdbcTemplate template = d.getTemplate();
			login log = template.queryForObject(query, new LoginMapper(), email);
			em = log.getEmail();
			if (log.getPassword().equals(password) && log.getUserType().equals("1")) {
				String q1 = "select id,firstname,lastname,email,phone,dob from registration where email=?";
				Client c = template.queryForObject(q1, new clientMapper(), email);
				clientid=Integer.parseInt(c.getId());
				m.addObject("firstname", c.getFirstname());
				m.addObject("lastname", c.getLastname());
				m.addObject("email", c.getEmail());
				m.addObject("phone", c.getPhone());
				m.addObject("dob", c.getDob());
				m.setViewName("Client");
				activestatus=1;
			
				return m;
			} else if (log.getPassword().equals(password) && log.getUserType().equals("2")) {
				m.setViewName("AdminPanel");
				return m;
			}
		} catch (EmptyResultDataAccessException e) {
			e.printStackTrace();
		} catch (IncorrectResultSizeDataAccessException e) {
			e.printStackTrace();
		}
		m.setViewName("Notification");
		return m;
	}

	@RequestMapping(path = "/addhostelModel", method = RequestMethod.POST)
	public String addhostelModel(@ModelAttribute HostelInfo hf, Model model,
			@RequestParam("image") CommonsMultipartFile file, HttpSession s) {
		byte[] data = file.getBytes();
		// we have to save this file to server...
		/*
		 * String path = s.getServletContext().getRealPath("/") + "WEB-INF" +
		 * File.separator + "resources" + File.separator + "images" + File.separator +
		 * file.getOriginalFilename();
		 */
		String uhome=System.getProperty("user.home");
		String path="F:\\eclipse\\Hostel_Finder\\src\\main\\resources\\static\\images\\"+file.getOriginalFilename();
				/*
				 * uhome+File.separator+"Downloads"+File.separator+"Hostelimages"+File.separator
				 * +file.getOriginalFilename();
				 */

		System.out.println(path);
		try {
			FileOutputStream fos = new FileOutputStream(path);
			fos.write(data);
			fos.close();
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("Uploading Error");
		}
		String query = "select id from registration where email=?";
		JdbcTemplate template = d.getTemplate();
		Id id = template.queryForObject(query, new IdMapper(), em);
		int ownerid = Integer.parseInt(id.getId());
		String q1 = "insert into hostelinfo(ownerid,hostelname,nearcollage) values(?,?,?)";
		template.update(q1, ownerid, hf.getHostelname(), hf.getNearcollege());
		String q2 = "select id from hostelinfo where hostelname=?";
		Id hid = template.queryForObject(q2, new IdMapper(), hf.getHostelname());
		int hostelid = Integer.parseInt(hid.getId());
		hostelid1 = hostelid;
		String q3 = "insert into hosteldata(hostelid,description,hosteltype,imgpath) values(?,?,?,?)";
		template.update(q3, hostelid, hf.getHosteldes(), hf.getHosteltype(), path);
		String q7 = "select * from city";
		List<city> c = template.query(q7, new CityMapper());
		for (city c1 : c) {
			if (c1.getCityname().equals(hf.getCity())) {
				count++;
			}
		}
		if (count == 0) {
			String q4 = "insert into city(cityname) values(?)";
			template.update(q4, hf.getCity());
		}
		String q5 = "select id from city where cityname=?";
		Id cid = template.queryForObject(q5, new IdMapper(), hf.getCity());
		int cityid = Integer.parseInt(cid.getId());
		String q6 = "insert into area(hostelid,cityid,areaname) values(?,?,?)";
		template.update(q6, hostelid1, cityid, hf.getArea());
		return "Room";
	}

	@RequestMapping("/hostelGetter")
	@ResponseBody
	public String hostelGetter() {
		JSONObject obj = new JSONObject();
		String s = null;
		JdbcTemplate template = d.getTemplate();
		String query = "select hostelname,description,imgpath,rent from hosteldata,hostelinfo,room where hostelinfo.id=hosteldata.hostelid and room.roomtype='single' and room.hostelid=hostelinfo.id;";
		List<hostelGetter> hg = template.query(query, new HostelGetterMapper());
		JSONArray list = new JSONArray();
		for (hostelGetter h : hg) {

			JSONObject obj1 = new JSONObject();
			obj1.put("hostelname", h.getHostelname());
			obj1.put("description", h.getDescription());
			obj1.put("imgpath", h.getPath());
			obj1.put("rent", h.getRent());
			list.add(obj1);

		}
		obj.put("hostelinfo", list);
		s = obj.toJSONString();
		return s;
	}

	@RequestMapping(path = "/addroomModel", method = RequestMethod.POST)
	public String addroomModel(@ModelAttribute Room r, Model model) {
		JdbcTemplate template = d.getTemplate();
		String query = "insert into room(hostelid,roomtype,available,rent,ac) values(?,?,?,?,?)";
		template.update(query, hostelid1, r.getRoomtype(), r.getAvailable(), r.getRent(), r.getAc());
		return "Room";
	}

	@RequestMapping("/LowToHighModel")
	@ResponseBody
	public String LowToHighModel() {
		JSONObject obj = new JSONObject();
		String s = null;
		JdbcTemplate template = d.getTemplate();
		String query = "select hostelname,description,imgpath,rent from hosteldata,hostelinfo,room where hostelinfo.id=hosteldata.hostelid and room.roomtype='single' and room.hostelid=hostelinfo.id order by rent asc;";
		List<hostelGetter> hg = template.query(query, new HostelGetterMapper());
		JSONArray list = new JSONArray();
		for (hostelGetter h : hg) {

			JSONObject obj1 = new JSONObject();
			obj1.put("hostelname", h.getHostelname());
			obj1.put("description", h.getDescription());
			obj1.put("imgpath", h.getPath());
			obj1.put("rent", h.getRent());
			list.add(obj1);

		}
		obj.put("hostelinfo", list);
		s = obj.toJSONString();
		return s;
	}

	@RequestMapping("/HighToLowModel")
	@ResponseBody
	public String HighToLowModel() {
		JSONObject obj = new JSONObject();
		String s = null;
		JdbcTemplate template = d.getTemplate();
		String query = "select hostelname,description,imgpath,rent from hosteldata,hostelinfo,room where hostelinfo.id=hosteldata.hostelid and room.roomtype='single' and room.hostelid=hostelinfo.id order by rent desc;";
		List<hostelGetter> hg = template.query(query, new HostelGetterMapper());
		JSONArray list = new JSONArray();
		for (hostelGetter h : hg) {

			JSONObject obj1 = new JSONObject();
			obj1.put("hostelname", h.getHostelname());
			obj1.put("description", h.getDescription());
			obj1.put("imgpath", h.getPath());
			obj1.put("rent", h.getRent());
			list.add(obj1);

		}
		obj.put("hostelinfo", list);
		s = obj.toJSONString();
		return s;
	}
	String hostelname;
	@RequestMapping("/HostelData")
	public String HostelData(@RequestParam("hostelname") String name) {
		hostelname=name;
		JdbcTemplate template = d.getTemplate();
		return "HostelData";
	}
	
	@RequestMapping("/hosteldataModel")
	@ResponseBody
	public String hosteldataModel() {
		System.out.println(hostelname);
		JSONObject obj = new JSONObject();
		String s = null;
		JdbcTemplate template = d.getTemplate();
		String query = "select hostelname,description,imgpath from hostelinfo h,hosteldata where h.hostelname='"+hostelname+"' and h.id=hosteldata.hostelid;";
		List<HostelData> hg =template.query(query, new HostelDataMapper());
		JSONArray list = new JSONArray();
		for(HostelData h:hg) {
		JSONObject obj1 = new JSONObject();
		obj1.put("hostelname", h.getHostelname());
		obj1.put("description", h.getDescription());
		obj1.put("imgpath", h.getImgpath());
		list.add(obj1);
		}
		obj.put("hostelinfo", list);
		s = obj.toJSONString();
		return s;
	}
	
	@RequestMapping(path = "/bookingModel", method = RequestMethod.POST)
	public String bookingModel(@ModelAttribute Booking b) {
		if(activestatus==0) {
			System.out.println("FirstLogin");
			return "login";
		}
		JdbcTemplate template = d.getTemplate();
		String query="insert into booking(hostelname,customerid,checkin,checkout,bookingtime,roomtype) values(?,?,?,?,?,?)";
		template.update(query,hostelname,clientid,b.getCheckin(),b.getCheckout(),java.time.LocalDateTime.now(),b.getRoomtype());
		
		
		return "confirmation";
	}

}