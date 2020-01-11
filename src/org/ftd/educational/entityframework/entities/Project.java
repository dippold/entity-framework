package org.ftd.educational.entityframework.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.1 - 28/06/2016
 *
 */
@Entity
public class Project extends AbstractEntity {

    @Column(nullable = true, columnDefinition = "BIGINT(20) default 1")
    private Long managerId = 1L;    
    
    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")    
    private Long projectMainStatus = 1L;
    
    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")    
    private Long projectTransitionStatus = 1L;    
    
    @Temporal(TemporalType.DATE)
    private java.util.Date startDate;

    @Temporal(TemporalType.DATE)
    private java.util.Date endDate;    

    public Long getProjectMainStatus() {
        return projectMainStatus;
    }

    public void setProjectMainStatus(Long projectMainStatus) {
        this.projectMainStatus = projectMainStatus;
    }

    public Long getProjectTransitionStatus() {
        return projectTransitionStatus;
    }

    public void setProjectTransitionStatus(Long projectTransitionStatus) {
        this.projectTransitionStatus = projectTransitionStatus;
    }

    public java.util.Date getStartDate() {
        return startDate;
    }

    public void setStartDate(java.util.Date startDate) {
        this.startDate = startDate;
    }

    public java.util.Date getEndDate() {
        return endDate;
    }

    public void setEndDate(java.util.Date endDate) {
        this.endDate = endDate;
    }

    public Long getManagerId() {
        return managerId;
    }

    public void setManagerId(Long managerId) {
        this.managerId = managerId;
    }    
    
}
