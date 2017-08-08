package com.baoku.team.dao;

import java.util.List;

import com.baoku.team.pojo.BaokuTeamUser;


public interface IBaokuTeamDao {
    int insert(BaokuTeamUser user);

    int insertSelective(BaokuTeamUser user);

    BaokuTeamUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BaokuTeamUser user);

    int updateByPrimaryKey(BaokuTeamUser user);

	Boolean save(BaokuTeamUser user, String fileName);

	List<BaokuTeamUser> findAll();

	List<BaokuTeamUser> findByDate(String nowString);
}