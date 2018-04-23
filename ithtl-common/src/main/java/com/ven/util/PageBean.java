package com.ven.util;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.Transient;

public class PageBean {

    @Transient
    private Integer pageNum = 1;

    @Transient
    private Integer pageSize = 10;

    @Transient
    private String orderBy;

    @JsonIgnore
    public Integer getPageNum() {
        return pageNum;
    }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }

    @JsonIgnore
    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    @JsonIgnore
    public String getOrderBy() {
        return orderBy;
    }

    public void setOrderBy(String orderBy) {
        this.orderBy = orderBy;
    }
}
