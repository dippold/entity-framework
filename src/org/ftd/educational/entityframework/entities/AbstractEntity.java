package org.ftd.educational.entityframework.entities;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.2 - 2017-07-29
 *
 */
@Entity
@Table
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class AbstractEntity implements Serializable {

    @Id
    @SequenceGenerator(name = "ENTITY_GEN", sequenceName = "ENTITY_SEQ", initialValue = 1, allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(unique = true, nullable = false, length = 100)
    private String name;

    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long companyId = 1L;

    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long projectId = 1L;

    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long userId = 1L;

    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long ruleId = 1L;

    @Column(nullable = false, columnDefinition = "TINYINT(1) default false")
    private Boolean system = false;

    @Column(nullable = false, columnDefinition = "TINYINT(1) default false")
    private Boolean blocked = false;

    @Basic(optional = false)
    @Column(columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    @Temporal(TemporalType.TIMESTAMP)
    private java.util.Date createdIn = new Date();

    @Basic(optional = true)
    @Column(columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    @Temporal(TemporalType.TIMESTAMP)
    private java.util.Date updatedIn = new Date();    

    @Column(nullable = false, columnDefinition="Decimal(3,2) default '0.00'")    
    private Double coordsLatitude = 0.0;

    @Column(nullable = false, columnDefinition="Decimal(3,2) default '0.00'") 
    private Double coordsLongitude = 0.0;

    // CENTRO DE LUCRO
    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long profitCenterId = 1L;

    // CENTRO DE CUSTO
    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long costCenterId = 1L;

    // CONTA CONTÁBIL
    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long accountingAccountId = 1L;

    // ORDEM DE INVESTIMENTO
    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long investimentOrderId = 1L;

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AbstractEntity)) {
            return false;
        }
        AbstractEntity other = (AbstractEntity) object;
        return (this.id != null || other.id == null) && (this.id == null || this.id.equals(other.id));
    }

    @Override
    public String toString() {
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");
        
        return this.getClass().getSimpleName()
                + " [ Id:" + id + " | Nm:" + name + " | Cia:" + companyId + " | Prj:" + projectId
                + " | Usr:" + userId + " | Rule:" + ruleId
                + " | Sys:" + system + " | Block:" + blocked
                + " | Add:" + dateFormat.format(createdIn) 
                + " | Upd:" + dateFormat.format(updatedIn) + " ]";
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Long compannyId) {
        this.companyId = compannyId;
    }

    public Long getProjectId() {
        return projectId;
    }

    public void setProjectId(Long projectId) {
        this.projectId = projectId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getRuleId() {
        return ruleId;
    }

    public void setRuleId(Long ruleId) {
        this.ruleId = ruleId;
    }

    public Boolean getSystem() {
        return system;
    }

    public void setSystem(Boolean system) {
        this.system = system;
    }

    public Boolean getBlocked() {
        return blocked;
    }

    public void setBlocked(Boolean blocked) {
        this.blocked = blocked;
    }

    public Date getCreatedIn() {
        return createdIn;
    }

    public void setCreatedIn(Date createdIn) {
        this.createdIn = createdIn;
    }

    public java.util.Date getUpdatedIn() {
        return updatedIn;
    }

    public void setUpdatedIn(java.util.Date updatedIn) {
        this.updatedIn = updatedIn;
    }
    
    public Double getCoordsLatitude() {
        return coordsLatitude;
    }

    public void setCoordsLatitude(Double coordsLatitude) {
        this.coordsLatitude = coordsLatitude;
    }

    public Double getCoordsLongitude() {
        return coordsLongitude;
    }

    public void setCoordsLongitude(Double coordsLongitude) {
        this.coordsLongitude = coordsLongitude;
    }

    public Long getProfitCenterId() {
        return profitCenterId;
    }

    public void setProfitCenterId(Long profitCenterId) {
        this.profitCenterId = profitCenterId;
    }

    public Long getCostCenterId() {
        return costCenterId;
    }

    public void setCostCenterId(Long costCenterId) {
        this.costCenterId = costCenterId;
    }

    public Long getAccountingAccountId() {
        return accountingAccountId;
    }

    public void setAccountingAccountId(Long accountingAccountId) {
        this.accountingAccountId = accountingAccountId;
    }

    public Long getInvestimentOrderId() {
        return investimentOrderId;
    }

    public void setInvestimentOrderId(Long investimentOrderId) {
        this.investimentOrderId = investimentOrderId;
    }
    
}
