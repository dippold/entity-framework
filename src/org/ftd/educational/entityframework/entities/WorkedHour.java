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
 * @version 1.0.3 - 28/12/2016
 *
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "WorkedHour.findby.task",
            query = "SELECT o FROM WorkedHour o WHERE o.taskId = :taskId")
    ,
    @NamedQuery(name = "WorkedHour.findby.task.and.user",
            query = "SELECT o FROM WorkedHour o WHERE o.taskId = :taskId AND o.userId = :userId ORDER BY o.createdIn")
    ,    
    @NamedQuery(name = "WorkedHour.findby.project",
            query = "SELECT o FROM WorkedHour o WHERE o.projectId = :projectId")
    ,
    @NamedQuery(name = "WorkedHour.findby.project.and.task",
            query = "SELECT o FROM WorkedHour o WHERE o.projectId = :projectId AND o.taskId = :taskId")
    ,
    @NamedQuery(name = "WorkedHour.findby.project.and.task.and.user",
            query = "SELECT o FROM WorkedHour o WHERE o.projectId = :projectId AND o.taskId = :taskId AND o.userId =:userId")
})
public class WorkedHour extends AbstractEntity {

    @Column(nullable = false, columnDefinition = "BIGINT(20)")
    private Long taskId;

    @Temporal(TemporalType.DATE)
    private java.util.Date startDate;

    @Temporal(TemporalType.TIME)
    private java.util.Date endTime;

    // OBSERVAÇÃO(ÕES) SOBRE O(S) SERVIÇO(S) / ATIVIDADE(S) REALIZADA(S)
    @Column(nullable = false, length = 255)
    private String servicePerformed;

    // OBSERVAÇÃO(ÕES) SOBRE PENDÊNCIA(S) / IMPEDIMENTO(S)
    @Column(nullable = true, length = 255)
    private String pendency;      
    
    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long generalStateId = 1L;

    public Long getTaskId() {
        return taskId;
    }

    public void setTaskId(Long taskId) {
        this.taskId = taskId;
    }

    public java.util.Date getStartDate() {
        return startDate;
    }

    public void setStartDate(java.util.Date startDate) {
        this.startDate = startDate;
    }

    public java.util.Date getEndTime() {
        return endTime;
    }

    public void setEndTime(java.util.Date endTime) {
        this.endTime = endTime;
    }

    public String getServicePerformed() {
        return servicePerformed;
    }

    public void setServicePerformed(String servicePerformed) {
        this.servicePerformed = servicePerformed;
    }

    public String getPendency() {
        return pendency;
    }

    public void setPendency(String pendency) {
        this.pendency = pendency;
    }

    public Long getGeneralStateId() {
        return generalStateId;
    }

    public void setGeneralStateId(Long generalStateId) {
        this.generalStateId = generalStateId;
    }    
    
}
