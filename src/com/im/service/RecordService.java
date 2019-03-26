package com.im.service;

import org.hibernate.criterion.DetachedCriteria;

import com.im.domain.Record;
import com.im.utils.PageBean;

public interface RecordService {

	PageBean getPageBean(DetachedCriteria dc, Integer curentPage, Integer pageSize);

	void save(Record record);

	void report(Record record);

}
