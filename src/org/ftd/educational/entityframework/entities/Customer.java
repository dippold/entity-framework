package org.ftd.educational.entityframework.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.2 - 28/12/2016
 *
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "Customer.find.by.name",
            query = "SELECT o FROM Customer o WHERE o.name = :name")
    ,
    @NamedQuery(name = "Customer.find.by.type",
            query = "SELECT o FROM Customer o WHERE o.physicalPerson = :physicalPerson ORDER BY o.name")
    ,
    @NamedQuery(name = "Customer.find.by.prospect",
            query = "SELECT o FROM Customer o WHERE o.prospect = :prospect ORDER BY o.name")
    ,
    @NamedQuery(name = "Customer.find.all.order.by.name",
            query = "SELECT o FROM Customer o ORDER BY o.name")
})
public class Customer extends AbstractEntity {

    // É PESSOA FÍSICA?
    @Column(nullable = false, columnDefinition = "TINYINT(1) default false")
    private Boolean physicalPerson = false;

    // É PROSPECT?
    @Column(nullable = false, columnDefinition = "TINYINT(1) default false")
    private Boolean prospect = false;

    public Boolean getPhysicalPerson() {
        return physicalPerson;
    }

    public void setPhysicalPerson(Boolean physicalPerson) {
        this.physicalPerson = physicalPerson;
    }

    public Boolean getProspect() {
        return prospect;
    }

    public void setProspect(Boolean prospect) {
        this.prospect = prospect;
    }

}
