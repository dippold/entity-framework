package org.ftd.educational.entityframework.entities.adapters;

import org.ftd.educational.entityframework.entities.AbstractEntity;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 2016-12-28
 * 
 */
public class AbstractEntityDTO {
    public final Long id;
    public final String name;
    
    public AbstractEntityDTO(AbstractEntity o) {
        this.id = o.getId();
        this.name = o.getName();
    }
    
    public AbstractEntityDTO(Long id, String custonName) {
        this.id = id;
        this.name = custonName;
    }
    
}
