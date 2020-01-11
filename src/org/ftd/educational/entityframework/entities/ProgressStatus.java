package org.ftd.educational.entityframework.entities;

import javax.persistence.Column;
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
    @NamedQuery(name = "ProgressStatus.findby.name",
            query = "SELECT o FROM ProgressStatus o WHERE o.name = :name"),
    @NamedQuery(name = "ProgressStatus.findby.transition",
            query = "SELECT o FROM ProgressStatus o WHERE o.transition = :transition")    
})
public class ProgressStatus extends AbstractEntity {

    @Column(nullable = false, columnDefinition = "TINYINT(1) default false")
    private Boolean transition = false;    
    
}
