package com.baoku.team.pojo;

public class BaokuTeamUser {

	private Long id;
	private String userName;//姓名
	private String sex;//性别
	private String zhiWei;//职位
	private String buMen;//部门
	private String fuZeRen;//直属负责人
	private String touXiang;//头像地址
	private String date;//当天日期
	private String email;//邮箱
	private String oldCompany;//上家公司名称
	private String oldZhiWei;//上家公司职位
	private String doWhat;//负责什么方面的工作
	private String school;//学校
	private String zhuanYe;//负责什么方面的工作
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getZhiWei() {
		return zhiWei;
	}
	public void setZhiWei(String zhiWei) {
		this.zhiWei = zhiWei;
	}
	public String getBuMen() {
		return buMen;
	}
	public void setBuMen(String buMen) {
		this.buMen = buMen;
	}
	public String getFuZeRen() {
		return fuZeRen;
	}
	public void setFuZeRen(String fuZeRen) {
		this.fuZeRen = fuZeRen;
	}
	public String getTouXiang() {
		return touXiang;
	}
	public void setTouXiang(String touXiang) {
		this.touXiang = touXiang;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOldZhiWei() {
		return oldZhiWei;
	}
	public void setOldZhiWei(String oldZhiWei) {
		this.oldZhiWei = oldZhiWei;
	}
	public String getZhuanYe() {
		return zhuanYe;
	}
	public void setZhuanYe(String zhuanYe) {
		this.zhuanYe = zhuanYe;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getDoWhat() {
		return doWhat;
	}
	public void setDoWhat(String doWhat) {
		this.doWhat = doWhat;
	}
	public String getOldCompany() {
		return oldCompany;
	}
	public void setOldCompany(String oldCompany) {
		this.oldCompany = oldCompany;
	}
	@Override
	public String toString() {
		return "BaokuTeamUser [id=" + id + ", userName=" + userName + ", sex=" + sex + ", zhiWei=" + zhiWei + ", buMen="
				+ buMen + ", fuZeRen=" + fuZeRen + ", touXiang=" + touXiang + ", date=" + date + ", email=" + email
				+ ", oldCompany=" + oldCompany + ", oldZhiWei=" + oldZhiWei + ", doWhat=" + doWhat + ", school="
				+ school + ", zhuanYe=" + zhuanYe + "]";
	}

}
