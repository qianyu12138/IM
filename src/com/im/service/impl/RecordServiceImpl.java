package com.im.service.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.im.dao.RecordDao;
import com.im.domain.Record;
import com.im.service.RecordService;
import com.im.utils.PageBean;

public class RecordServiceImpl implements RecordService {

	private RecordDao rd;
	@Override
	public PageBean getPageBean(DetachedCriteria dc, Integer currentPage, Integer pageSize) {
		int totalcount = rd.getTotalCount(dc);
		
		PageBean pb = new PageBean(currentPage, totalcount, pageSize);
		
		List<Record> list = rd.getPageList(dc,pb.getStart(),pb.getPageSize());
		pb.setList(list);
		return pb;
	}
	public void setRd(RecordDao rd) {
		this.rd = rd;
	}
	@Override
	public void save(Record record) {
		rd.saveOrUpdate(record);
		
	}
	@Override
	public void report(Record record) {
		record = rd.getById(record.getRid());
		record.setState(1);
		rd.saveOrUpdate(record);
	}

	
}
