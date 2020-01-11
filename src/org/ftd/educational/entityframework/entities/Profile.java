package org.ftd.educational.entityframework.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.1 - 01/09/2017
 *
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "Profile.findby.name",
            query = "SELECT o FROM Profile o WHERE o.name = :name")
})
public class Profile extends AbstractEntity {

    private static final long serialVersionUID = 7449701051637832388L;
    
    @Column(nullable = false, length = 100)
    private String roleIds = "0";

    @Column(nullable = false, length = 100)
    private String homeView;    
    
    public String getRoleIds() {
        return roleIds;
    }

    public void setRoleIds(String roleIds) {
        this.roleIds = roleIds;
    }

    public String getHomeView() {
        return homeView;
    }

    public void setHomeView(String homeView) {
        this.homeView = homeView;
    }    
    
}
