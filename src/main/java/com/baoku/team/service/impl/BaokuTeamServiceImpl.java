package com.baoku.team.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.baoku.team.dao.IBaokuTeamDao;
import com.baoku.team.pojo.BaokuTeamUser;
import com.baoku.team.service.IBaokuTeamService;


@Service("userService")
public class BaokuTeamServiceImpl implements IBaokuTeamService {
	@Resource
	private IBaokuTeamDao baokuTeamDao;
	public Boolean save(BaokuTeamUser user, String fileName) {
		return baokuTeamDao.save(user,fileName);
	}
	public List<BaokuTeamUser> findAll() {
		return baokuTeamDao.findAll();
	}
	public BaokuTeamUser getUserById(int userId) {
		return null;
	}
	public int insert(BaokuTeamUser user) {
		return baokuTeamDao.insert(user);
	}
	public List<BaokuTeamUser> findByDate(String nowString) {
		return baokuTeamDao.findByDate(nowString);
	}

}
