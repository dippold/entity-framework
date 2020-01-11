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
 * @version 1.0.0 - 28/12/2016
 *
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "ProjectBaseLine.findby.project",
            query = "SELECT o FROM ProjectBaseLine o WHERE o.projectId = :projectId ORDER BY o.createdIn")
})
public class ProjectBaseLine extends AbstractEntity {

    @Column(nullable = false, length = 255)
    // QUAL A JUSTIFICATIVA?
    private String changeJustification;

    @Column(nullable = false, length = 255)
    // QUAL FOI A PROVAÇÃO DA SOLICITAÇÃO DE MUDANÇA?
    private String changeApproval;    
    
    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long workPackeageId = 1L;

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

    public String getChangeJustification() {
        return changeJustification;
    }

    public void setChangeJustification(String changeJustification) {
        this.changeJustification = changeJustification;
    }

    public String getChangeApproval() {
        return changeApproval;
    }

    public void setChangeApproval(String changeApproval) {
        this.changeApproval = changeApproval;
    }

    
    
}
