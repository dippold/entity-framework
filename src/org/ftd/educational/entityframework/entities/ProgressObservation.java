package org.ftd.educational.entityframework.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.3 - 28/12/2016
 *
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "ProgressObservation.findby.entity.and.type",
            query = "SELECT o FROM ProgressObservation o WHERE o.observedEntityId = :observedEntityId AND o.observedEntityType = :observedEntityType ORDER BY o.createdIn DESC"),
    @NamedQuery(name = "ProgressObservation.count.by.entity.and.type",
            query = "SELECT count(o) FROM ProgressObservation o WHERE o.observedEntityId = :observedEntityId AND o.observedEntityType = :observedEntityType")
})
public class ProgressObservation extends AbstractEntity {   
    @Column(nullable = false, length = 100)
    private String observedEntityType;     
    
    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long observedEntityId = 1L;       
    
    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long oldProgressStatus = 1L; 

    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long newProgressStatus = 1L;     
    
    @Column(nullable = false, length = 255)
    private String observations;

    @Column(nullable = true, length = 255)
    private String nextActions;    

    public Long getObservedEntityId() {
        return observedEntityId;
    }

    public void setObservedEntityId(Long observedEntityId) {
        this.observedEntityId = observedEntityId;
    }

    public String getObservations() {
        return observations;
    }

    public void setObservations(String observations) {
        this.observations = observations;
    }

    public String getNextActions() {
        return nextActions;
    }

    public void setNextActions(String nextActions) {
        this.nextActions = nextActions;
    }

    public String getObservedEntityType() {
        return observedEntityType;
    }

    public void setObservedEntityType(String observedEntityType) {
        this.observedEntityType = observedEntityType;
    }

    public Long getOldProgressStatus() {
        return oldProgressStatus;
    }

    public void setOldProgressStatus(Long oldProgressStatus) {
        this.oldProgressStatus = oldProgressStatus;
    }

    public Long getNewProgressStatus() {
        return newProgressStatus;
    }

    public void setNewProgressStatus(Long newProgressStatus) {
        this.newProgressStatus = newProgressStatus;
    }    
    
}
