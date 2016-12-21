package com.bird.struts2.action;

import java.io.File;

import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport {
	private File file;
	private String name;
	private static final long serialVersionUID = 1L;
	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String execute() {

		System.out.println(name);
		System.out.println(file);
		return SUCCESS;
	}
}
