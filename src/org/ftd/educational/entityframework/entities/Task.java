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
 * @version 1.0.1 - 28/12/2016
 *
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "Task.findby.workpackage",
            query = "SELECT o FROM Task o WHERE o.workPackeageId = :workPackeageId ORDER BY o.name"),
    @NamedQuery(name = "Task.findby.serviceorder",
            query = "SELECT o FROM Task o WHERE o.serviceOrderId = :serviceOrderId ORDER BY o.createdIn"),
    @NamedQuery(name = "Task.findby.serviceorder.and.user",
            query = "SELECT o FROM Task o WHERE o.serviceOrderId = :serviceOrderId AND o.userId = :userId ORDER BY o.createdIn"),    
    @NamedQuery(name = "Task.findby.user",
            query = "SELECT o FROM Task o WHERE o.userId = :userId ORDER BY o.name"),
    @NamedQuery(name = "Task.findby.project.and.user",
            query = "SELECT o FROM Task o WHERE o.projectId = :projectId AND o.userId = :userId ORDER BY o.name"),
    @NamedQuery(name = "Task.findby.project.and.workpackage",
            query = "SELECT o FROM Task o WHERE o.projectId = :projectId AND o.workPackeageId = :workPackeageId ORDER BY o.name")
})
public class Task extends AbstractEntity {

    @Column(nullable = true, columnDefinition = "BIGINT(20) default 0")
    private Long workPackeageId = 0L;

    @Column(nullable = true, columnDefinition = "BIGINT(20) default 0")
    private Long serviceOrderId = 0L;    
    
    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long generalStateId = 1L;

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
    public Long getWorkPackeageId() {
        return workPackeageId;
    }

    public void setWorkPackeageId(Long workPackeageId) {
        this.workPackeageId = workPackeageId;
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

    public Long getServiceOrderId() {
        return serviceOrderId;
    }

    public void setServiceOrderId(Long serviceOrderId) {
        this.serviceOrderId = serviceOrderId;
    }    
    
}
