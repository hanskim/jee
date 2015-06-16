package com.homepage.web.service;

public class KaupServiceImpl implements KaupService {
	int idx ;
	String msg ;

	@Override
	public int showIdx(double weight, double height) {
		this.idx = (int) ((weight / (height * height) * 10000)) ;
		return idx;
		
	}

	@Override
	public String showkaup() {
		
		if (this.idx > 30) {
			this.msg = "비만";
		} else if (idx > 24) {
			this.msg = "과체중";
		} else if (idx > 20) {
			this.msg = "정상";
		} else if (idx > 17) {
			this.msg = "저체중";
		} else if (idx > 13) {
			this.msg = "마름";
		} else if (idx > 10) {
			this.msg = "영양실조";
		} else {
			this.msg = "소모증";
		}
		
		return msg ;
	
	}


}
