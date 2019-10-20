package entity;

import java.util.List;

public class PageBean<T> {

	
    private List<T> list;// 页面需要展示的数据
    private Integer totalNum;// 显示的总记录数
    private Integer totalPage;// 总页数
    private Integer currentPage;// 当前页  
    private Integer pageSize;// 每页显示的数目
	public PageBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PageBean(List<T> list, Integer totalNum, Integer totalPage, Integer currentPage, Integer pageSize) {
		super();
		this.list = list;
		this.totalNum = totalNum;
		this.totalPage = totalPage;
		this.currentPage = currentPage;
		this.pageSize = pageSize;
	}
	@Override
	public String toString() {
		return "PageBean [list=" + list + ", totalNum=" + totalNum + ", totalPage=" + totalPage + ", currentPage="
				+ currentPage + ", pageSize=" + pageSize + "]";
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public Integer getTotalNum() {
		return totalNum;
	}
	public void setTotalNum(Integer totalNum) {
		this.totalNum = totalNum;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}


}
