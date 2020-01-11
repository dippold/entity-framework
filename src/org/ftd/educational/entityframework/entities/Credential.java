package org.ftd.educational.entityframework.entities;

import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.0 - 27/12/2016
 *
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "Credential.findby.name",
            query = "SELECT o FROM Credential o WHERE o.name = :name")
})
public class Credential extends AbstractEntity {    
}
