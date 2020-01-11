package org.ftd.educational.entityframework.daos;

import java.util.List;
import javax.persistence.EntityManagerFactory;
import org.ftd.educational.entityframework.daos.ServiceOrderTypeJpaController;
import org.ftd.educational.entityframework.entities.ServiceOrderType;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 2016-12-28
 * 
 */
public class ServiceOrderTypeDAO extends ServiceOrderTypeJpaController {
    
    public ServiceOrderTypeDAO(EntityManagerFactory emf) {
        super(emf);
    }
    
    public ServiceOrderType find(Long id) {
        return super.findServiceOrderType(id);
    }
    
    public List<ServiceOrderType> findAll() {
        return super.findServiceOrderTypeEntities();
    }
    
}
