package org.ftd.educational.entityframework.entities;

import org.ftd.educational.entityframework.entities.*;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.1 - 28/12/2016
 *
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "ServiceOrderType.findby.name",
            query = "SELECT o FROM ServiceOrderType o WHERE o.name = :name")
})
public class ServiceOrderType extends AbstractEntity {    
}
