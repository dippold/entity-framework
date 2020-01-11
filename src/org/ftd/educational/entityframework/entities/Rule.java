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
    @NamedQuery(name = "Rule.findby.name",
            query = "SELECT o FROM Rule o WHERE o.name = :name")
})
public class Rule extends AbstractEntity {    
    private static final long serialVersionUID = 9165613710797562909L;
    
}
