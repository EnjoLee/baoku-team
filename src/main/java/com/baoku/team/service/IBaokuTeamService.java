/** 
  *@Copyright (c) 宝库技术团队 www.baoku.com
  *@Package com.test.service
  *@Project：mavenmvc
  *@authur：liyingjie liyingjie@baoku.com
  *@date：2017年1月25日 下午12:40:25   
  *@version 1.0
  */
package com.baoku.team.service;

import java.util.List;

import com.baoku.team.pojo.BaokuTeamUser;

/** 
 *@ClassName：IUserService
 *@authur：liyingjie liyingjie@baoku.com
 *@date：2017年1月25日 下午12:40:25   
 *@version 1.0
 */
public interface IBaokuTeamService {

	BaokuTeamUser getUserById(int userId);

	int insert(BaokuTeamUser user);

	List<BaokuTeamUser> findAll();

	List<BaokuTeamUser> findByDate(String nowString);
}

