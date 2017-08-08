package com.baoku.team.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.baoku.team.pojo.BaokuTeamUser;
import com.baoku.team.service.IBaokuTeamService;

@Controller
@RequestMapping(value = "/baokuTeam")
public class BaokuTeamController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static Logger logger = Logger.getLogger(BaokuTeamController.class);

	@Autowired
	private IBaokuTeamService baokuTeamService;

	public void setBaokuTeamService(IBaokuTeamService baokuTeamService) {
		this.baokuTeamService = baokuTeamService;
	}

	@RequestMapping(value = "/toAdd.do")
	public ModelAndView toAdd(BaokuTeamUser user,@RequestParam(value = "file", required = false) MultipartFile file,
			HttpServletRequest request, ModelMap map) {
		System.out.println("开始");
		String path = request.getSession().getServletContext().getRealPath("upload");
		String fileName = file.getOriginalFilename();
		// String fileName = new Date().getTime()+".jpg";
		System.out.println(path);
		File targetFile = new File(path, fileName);
		if (!targetFile.exists()) {//
			targetFile.mkdirs();
		}
		Date nowDate = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String saveString = sdf.format(nowDate);
		// 保存
		try {
			user.setTouXiang(request.getContextPath() + "/upload/" + fileName);
			user.setDate(saveString);
			baokuTeamService.insert(user);
			file.transferTo(targetFile);//保存位置
		} catch (Exception e) {
			logger.error(e);
			e.printStackTrace();
		}
		return Teamlist(request, map);
	}

	private ModelAndView Teamlist(HttpServletRequest request, ModelMap map) {
		List<BaokuTeamUser> list = new ArrayList<BaokuTeamUser>();
		try {
			Date nowDate = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String nowString = sdf.format(nowDate);
			list = baokuTeamService.findByDate(nowString);
		} catch (Exception e) {
			e.printStackTrace();
		}
		map.put("listt", list);
		return new ModelAndView("/index_list", map);
	}

}
