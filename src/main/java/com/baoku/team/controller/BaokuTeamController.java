package com.baoku.team.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.baoku.team.pojo.BaokuTeamUser;
import com.baoku.team.pojo.BaseBackInfo;
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
			HttpServletRequest request,HttpServletResponse response, ModelMap map) {
		BaseBackInfo<String> baseinfo = new BaseBackInfo<String>();
		System.out.println("开始");
		//获得物理路径webapp所在路径  
		String pathRoot = request.getSession().getServletContext().getRealPath("");  
        String path="";  
		// 保存
		try {
			if(!file.isEmpty()){  
			    //生成uuid作为文件名称  
				String uuid = UUID.randomUUID().toString().replaceAll("-","");  
				//获得文件类型（可以判断如果不是图片，禁止上传）  
				String contentType=file.getContentType();  
				//获得文件后缀名称  
				String imageName=contentType.substring(contentType.indexOf("/")+1);  
				path="/static/images/"+uuid+"."+imageName;  
				File targetFile = new File(pathRoot+path);
				if (!targetFile.exists()) {//
					targetFile.mkdirs();
				}
				file.transferTo(targetFile);  
				logger.info(path);
				baseinfo.setCode("success");
				baseinfo.setMessage("上传成功!");
			}
			user.setTouXiang(request.getContextPath()+path);
			Date nowDate = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String saveString = sdf.format(nowDate);
			user.setDate(saveString);
			baokuTeamService.insert(user);
		} catch (Exception e) {
			baseinfo.setCode("error");
			baseinfo.setMessage("上传失败!");
			baseinfo.setExtended1(e);
			map.put("baseinfo", baseinfo);
			logger.error(e);
			e.printStackTrace();
			return new ModelAndView("/error/error", map);
		}
		return teamList();
	}

	@RequestMapping(value = "/teamList.do")
	private ModelAndView teamList() {
		Map<String, Object> map = new HashMap<String, Object>();
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
		return new ModelAndView("/jsp/index_list", map);
	}

}
