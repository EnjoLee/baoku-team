package com.baoku.team.pojo;

/**
 * JSON数据返回信息
 * @author liyingjie
 *
 * @param <T>
 */
public class BaseBackInfo<T> {
	private String code;// 编号 success 成功 ，失败 自己定义
	private String message;// 请求返回信息
	private Object extended1; // 扩展字段1
	private Object extended2; // 扩展字段1
	private T object;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public T getObject() {
		return object;
	}

	public void setObject(T object) {
		this.object = object;
	}

	public Object getExtended1() {
		return extended1;
	}

	public void setExtended1(Object extended1) {
		this.extended1 = extended1;
	}

	public Object getExtended2() {
		return extended2;
	}

	public void setExtended2(Object extended2) {
		this.extended2 = extended2;
	}

}
