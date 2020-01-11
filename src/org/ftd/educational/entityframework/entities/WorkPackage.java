package org.ftd.educational.entityframework.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.2 - 28/12/2016
 *
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "WorkPackage.findby.project",
            query = "SELECT o FROM WorkPackage o WHERE o.projectId = :id"),
    @NamedQuery(name = "WorkPackage.findby.manager",
            query = "SELECT o FROM WorkPackage o WHERE o.managerId = :id"),
    @NamedQuery(name = "WorkPackage.findby.state",
            query = "SELECT o FROM WorkPackage o WHERE o.generalStateId = :id"),
    @NamedQuery(name = "WorkPackage.findby.stakeholder",
            query = "SELECT o FROM WorkPackage o WHERE o.stakeholderId = :id")        
})
public class WorkPackage extends AbstractEntity {
    
    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long generalStateId = 1L;
    
    @Column(nullable = true, columnDefinition = "BIGINT(20) default 1")
    private Long stakeholderId = 1L;
    
    @Column(nullable = true, columnDefinition = "BIGINT(20) default 1")
    private Long managerId = 1L;

    @Temporal(TemporalType.DATE)
    private java.util.Date startDate;

    @Temporal(TemporalType.DATE)
    private java.util.Date endDate; 

    private int estimatedWork;

    private int estimatedCust;

    private int completeness;   

    /*
        GETTER'S AND SETTER'S MEMBER'S...
    */
    public Long getStakeholderId() {
        return stakeholderId;
    }

    public void setStakeholderId(Long stakeholderId) {
        this.stakeholderId = stakeholderId;
    }

    public Long getManagerId() {
        return managerId;
    }

    public void setManagerId(Long managerId) {
        this.managerId = managerId;
    }

    public Long getGeneralStateId() {
        return generalStateId;
    }

    public void setGeneralStateId(Long generalStateId) {
        this.generalStateId = generalStateId;
    }

    public int getEstimatedWork() {
        return estimatedWork;
    }

    public void setEstimatedWork(int estimatedWork) {
        this.estimatedWork = estimatedWork;
    }

    public int getEstimatedCust() {
        return estimatedCust;
    }

    public void setEstimatedCust(int estimatedCust) {
        this.estimatedCust = estimatedCust;
    }

    public int getCompleteness() {
        return completeness;
    }

    public void setCompleteness(int completeness) {
        this.completeness = completeness;
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
    
}
