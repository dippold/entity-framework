package org.ftd.educational.entityframework.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;


/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.0 - 16/05/2017
 *
 */
@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class AbstractResource extends AbstractEntity { 

    private static final long serialVersionUID = -2403786348534308936L;
    
    @Column(nullable = false, columnDefinition = "TINYINT(1) default false")
    private boolean isMaterial = false;
    
    
}
