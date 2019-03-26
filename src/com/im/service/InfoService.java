package com.im.service;

import com.im.domain.Info;

public interface InfoService {
	public void save(Info info);

	public Info getInfo(Integer iid);

}
