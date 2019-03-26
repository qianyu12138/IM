package com.im.web.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.im.domain.Record;
import com.im.domain.User;
import com.im.service.RecordService;
import com.im.utils.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class RecordAction extends ActionSupport implements ModelDriven<Record>{
	private Record record = new Record(); 
	private RecordService rs;
	private Integer currentPage;
	
	private Date startTime;
	private Date endTime;
	
	public String home() throws Exception {
		User u = (User) ActionContext.getContext().getSession().get("user");
		DetachedCriteria dc = DetachedCriteria.forClass(Record.class);
		dc.add(Restrictions.eq("user.uid", u.getUid()));
		PageBean pb = rs.getPageBean(dc,currentPage,10);
		ActionContext.getContext().put("pagebean", pb);
		return "home";
	}

	public String homecheck() throws Exception {
		User u = (User) ActionContext.getContext().getSession().get("user");
		DetachedCriteria dc = DetachedCriteria.forClass(Record.class);
		dc.add(Restrictions.eq("user.uid", u.getUid()));
		
		//比较用户名匹配
		if(record.getServer()!=null) {
			System.out.println(record.getServer());
			dc.add(Restrictions.like("server", "%"+record.getServer()+"%"));
		}
		
		//比较日期范围
		System.out.println("  RecordAction homecheck:   \"" + startTime+" "+endTime + "\"");
		if(endTime!=null&&startTime!=null) {
			dc.add(Restrictions.lt("useTime", endTime));
			dc.add(Restrictions.ge("useTime", startTime));

			ActionContext.getContext().put("startTime", new SimpleDateFormat("yyyy-MM-dd").format(startTime));
			ActionContext.getContext().put("endTime", new SimpleDateFormat("yyyy-MM-dd").format(endTime));
		}
		
		PageBean pb = rs.getPageBean(dc,currentPage,10);
		ActionContext.getContext().put("record", record);
		ActionContext.getContext().put("pagebean", pb);
		return "home_check";
	}
	
	public String report() throws Exception {
		//
		System.out.println(record.getRid());
		rs.report(record);
		return "recordReport";
	}

	@Override
	public Record getModel() {
		// TODO Auto-generated method stub
		return record;
	}
	
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public void setRs(RecordService rs) {
		this.rs = rs;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	
}
