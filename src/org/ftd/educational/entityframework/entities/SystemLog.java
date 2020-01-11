package org.ftd.educational.entityframework.entities;

import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.2 - 24/05/2016
 * 
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "SystemLog.orderby.create",
            query = "SELECT o FROM SystemLog o ORDER BY o.createdIn DESC")
})
public class SystemLog extends AbstractEntity {
}
