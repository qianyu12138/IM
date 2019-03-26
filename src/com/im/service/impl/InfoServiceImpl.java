package com.im.service.impl;

import com.im.dao.InfoDao;
import com.im.domain.Info;
import com.im.service.InfoService;

public class InfoServiceImpl implements InfoService{

	private InfoDao infoDao;
	@Override
	public void save(Info info) {
		infoDao.saveOrUpdate(info);
	}
	public void setInfoDao(InfoDao infoDao) {
		this.infoDao = infoDao;
	}
	@Override
	public Info getInfo(Integer iid) {
		return infoDao.getById(iid);
	}
	
}
