package org.ftd.educational.entityframework.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.2 - 2016-12-30
 * 
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "SystemMessage.count.by.user",
            query = "SELECT count(o) FROM SystemMessage o WHERE o.userId = :userId AND o.wasRead = :wasRead"),
    @NamedQuery(name = "SystemMessage.find.by.user",
            query = "SELECT o FROM SystemMessage o WHERE o.userId = :userId ORDER BY o.createdIn DESC")    
})
public class SystemMessage extends AbstractEntity {    
    @Column(nullable = false)
    private Long userSenderId;
    
    @Column(nullable = false, columnDefinition = "TINYINT(1) default false")
    private Boolean urgent = false;

    @Column(nullable = false, length = 100)
    private String subject;
    
    @Column(nullable = false, length = 255)
    private String message;
    
    @Column(nullable = true, length = 45)
    private String resource;
    
    @Column(nullable = true)
    private Long resourceId;
    
    @Column(nullable = false, columnDefinition = "TINYINT(1) default false")
    private Boolean wasRead = false;

    public Boolean getUrgent() {
        return urgent;
    }

    public void setUrgent(Boolean urgent) {
        this.urgent = urgent;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getResource() {
        return resource;
    }

    public void setResource(String resource) {
        this.resource = resource;
    }

    public Boolean getWasRead() {
        return wasRead;
    }

    public void setWasRead(Boolean wasRead) {
        this.wasRead = wasRead;
    }    

    public Long getResourceId() {
        return resourceId;
    }

    public void setResourceId(Long resourceId) {
        this.resourceId = resourceId;
    }

    public Long getUserSenderId() {
        return userSenderId;
    }

    public void setUserSenderId(Long userSenderId) {
        this.userSenderId = userSenderId;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }
           
}
