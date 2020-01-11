package org.ftd.educational.entityframework.entities;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.1 - 24/05/2016
 *
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "UserCredential.findby.user",
            query = "SELECT o FROM UserCredential o WHERE o.userId = :userId"),
    @NamedQuery(name = "UserCredential.findby.user.credential",
            query = "SELECT o FROM UserCredential o WHERE o.userId = :userId AND o.credentialId = :credentialId"),
    @NamedQuery(name = "UserCredential.findby.user.credential.authentication",
            query = "SELECT o FROM UserCredential o WHERE o.userId = :userId AND o.credentialId = :credentialId AND o.identification = :identification AND o.passwd = :passwd")
})
public class UserCredential extends AbstractEntity {

    @Column(nullable = false, columnDefinition = "BIGINT(20) default 0")
    private Long credentialId;

    @Column(nullable = false, length = 40)
    private String identification;

    @Column(nullable = false, length = 20)
    private String passwd;

    public Long getCredentialId() {
        return credentialId;
    }

    public void setCredentialId(Long credentialId) {
        this.credentialId = credentialId;
    }

    public String getIdentification() {
        return identification;
    }

    public void setIdentification(String identification) {
        this.identification = identification;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }   
    
    @Override
    public String toString() {
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");
        
        return this.getClass().getSimpleName()
                + " [ Id:" + super.getId() + " | Nm:" + super.getName() + " | Cred:" + this.getIdentification() + " | Cia:" + super.getCompanyId() + " | Prj:" + super.getProjectId()
                + " | Usr:" + super.getUserId() + " | Rule:" + super.getRuleId()
                + " | Sys:" + super.getSystem() + " | Block:" + super.getBlocked()
                + " | Add:" + dateFormat.format(super.getCreatedIn()) 
                + " | Upd:" + dateFormat.format(super.getUpdatedIn()) + " ]";
    }    
    
}
