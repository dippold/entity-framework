package org.ftd.educational.entityframework.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.1 - 27/06/2016
 *
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "Company.findby.name",
            query = "SELECT o FROM Company o WHERE o.name = :name"),
    @NamedQuery(name = "Company.findby.group",
            query = "SELECT o FROM Company o WHERE o.companyGroupId = :companyGroupId")
})
public class Company extends AbstractEntity {

    private static final long serialVersionUID = -8064583791704647263L;
    
    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long companyGroupId = 1L;

    public Long getCompanyGroupId() {
        return companyGroupId;
    }

    public void setCompanyGroupId(Long companyGroupId) {
        this.companyGroupId = companyGroupId;
    }
    
}
