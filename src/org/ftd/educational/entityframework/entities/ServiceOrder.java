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
    @NamedQuery(name = "ServiceOrder.findby.customer",
            query = "SELECT o FROM ServiceOrder o WHERE o.customerId = :customerId ORDER BY o.createdIn DESC")
    ,
    @NamedQuery(name = "ServiceOrder.findby.stakeholder",
            query = "SELECT o FROM ServiceOrder o WHERE o.stakeholderId = :stakeholderId ORDER BY o.createdIn DESC")
    ,
    @NamedQuery(name = "ServiceOrder.findby.customer.and.status",
            query = "SELECT o FROM ServiceOrder o WHERE o.customerId = :customerId AND o.ServiceOrderMainStatusId = :ServiceOrderMainStatusId ORDER BY o.createdIn DESC")
    ,
    @NamedQuery(name = "ServiceOrder.findby.customer.and.type",
            query = "SELECT o FROM ServiceOrder o WHERE o.customerId = :customerId AND o.serviceOrderTypeId = :serviceOrderTypeId ORDER BY o.createdIn DESC")
    ,
    @NamedQuery(name = "ServiceOrder.findby.customer.and.status",
            query = "SELECT o FROM ServiceOrder o WHERE o.customerId = :customerId AND o.ServiceOrderMainStatusId = :ServiceOrderMainStatusId ORDER BY o.createdIn DESC")
    ,
    @NamedQuery(name = "ServiceOrder.findby.customer.and.status.and.type",
            query = "SELECT o FROM ServiceOrder o WHERE o.customerId = :customerId AND o.ServiceOrderMainStatusId = :ServiceOrderMainStatusId AND o.serviceOrderTypeId = :serviceOrderTypeId ORDER BY o.createdIn DESC")
    ,
    @NamedQuery(name = "ServiceOrder.findby.status",
            query = "SELECT o FROM ServiceOrder o WHERE o.ServiceOrderMainStatusId = :ServiceOrderMainStatusId ORDER BY o.createdIn DESC"),})
public class ServiceOrder extends AbstractEntity {

    @Column(nullable = false, length = 255)
    private String detail;
    
    @Column(nullable = false, columnDefinition = "BIGINT(20)")
    private Long customerId;

    @Column(unique = false, nullable = true, length = 40)
    private String subsidiary;

    @Column(unique = false, nullable = true, length = 40)
    private String contacts;    
    
    @Column(nullable = true, columnDefinition = "BIGINT(20)")
    private Long stakeholderId;

    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long serviceOrderTypeId = 1L;

    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long ServiceOrderMainStatusId = 1L;

    @Temporal(TemporalType.DATE)
    @Column(nullable = true)
    private java.util.Date startDate;

    @Temporal(TemporalType.DATE)
    @Column(nullable = true)
    private java.util.Date endDate; 

    @Column(nullable = true, columnDefinition="Decimal(10,2) default '0.00'")
    private Double estimatedWork = 0.0;

    @Column(nullable = true, columnDefinition="Decimal(10,2) default '0.00'")
    private Double estimatedCust = 0.0;

    @Column(nullable = true, columnDefinition="Decimal(3,2) default '0.00'") 
    private Double completeness = 0.0;    
    
    public Long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Long customerId) {
        this.customerId = customerId;
    }

    public Long getStakeholderId() {
        return stakeholderId;
    }

    public void setStakeholderId(Long stakeholderId) {
        this.stakeholderId = stakeholderId;
    }

    public Long getServiceOrderTypeId() {
        return serviceOrderTypeId;
    }

    public void setServiceOrderTypeId(Long serviceOrderTypeId) {
        this.serviceOrderTypeId = serviceOrderTypeId;
    }

    public Long getServiceOrderMainStatusId() {
        return ServiceOrderMainStatusId;
    }

    public void setServiceOrderMainStatusId(Long ServiceOrderMainStatusId) {
        this.ServiceOrderMainStatusId = ServiceOrderMainStatusId;
    }

    public String getSubsidiary() {
        return subsidiary;
    }

    public void setSubsidiary(String subsidiary) {
        this.subsidiary = subsidiary;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
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

    public Double getEstimatedWork() {
        return estimatedWork;
    }

    public void setEstimatedWork(Double estimatedWork) {
        this.estimatedWork = estimatedWork;
    }

    public Double getEstimatedCust() {
        return estimatedCust;
    }

    public void setEstimatedCust(Double estimatedCust) {
        this.estimatedCust = estimatedCust;
    }

    public Double getCompleteness() {
        return completeness;
    }

    public void setCompleteness(Double completeness) {
        this.completeness = completeness;
    }

    public String getContacts() {
        return contacts;
    }

    public void setContacts(String contacts) {
        this.contacts = contacts;
    }        
    
}
