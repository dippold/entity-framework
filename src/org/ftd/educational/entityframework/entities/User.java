package org.ftd.educational.entityframework.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 2016-10-21
 *
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "User.authenticate",
            query = "SELECT o FROM User o WHERE o.email = :email AND o.passwd = :passwd"),
    @NamedQuery(name = "User.findby.name",
            query = "SELECT o FROM User o WHERE o.name = :name"),
    @NamedQuery(name = "User.findby.email",
            query = "SELECT o FROM User o WHERE o.email = :email"),
    @NamedQuery(name = "User.findby.keyword",
            query = "SELECT o FROM User o WHERE o.name LIKE :keyword ORDER BY o.name"),
    @NamedQuery(name = "User.findby.rule",
            query = "SELECT o FROM User o WHERE o.ruleId = :ruleId ORDER BY o.name"),
    @NamedQuery(name = "User.findall.by.name",
            query = "SELECT o FROM User o ORDER BY o.name"),
    @NamedQuery(name = "User.findby.company",
            query = "SELECT o FROM User o WHERE o.companyId = :companyId ORDER BY o.name"),
    @NamedQuery(name = "User.findby.project",
            query = "SELECT o FROM User o WHERE o.projectId = :projectId ORDER BY o.name")
})
public class User extends AbstractEntity {
    private static final long serialVersionUID = -6520061242222657623L;

    @Column(nullable = false, length = 20)
    private String nickname;    
    
    @Column(unique = true, nullable = false, length = 45)
    private String email;

    @Column(nullable = false, length = 20)
    private String passwd;

    @Column(nullable = false, length = 50)
    private String profileIds = "0";    
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }        

    public String getProfileIds() {
        return profileIds;
    }

    public void setProfileIds(String profileIds) {
        this.profileIds = profileIds;
    }
  
}
