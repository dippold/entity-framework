package org.ftd.educational.entityframework.entities;

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
    @NamedQuery(name = "CompanyGroup.findby.name",
            query = "SELECT o FROM CompanyGroup o WHERE o.name = :name")
})
public class CompanyGroup extends AbstractEntity {    

    private static final long serialVersionUID = 5598584063289709661L;
}
