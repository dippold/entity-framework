package org.ftd.educational.entityframework.daos;

import java.util.List;
import javax.persistence.EntityManagerFactory;
import org.ftd.educational.entityframework.daos.ServiceOrderMainStatusJpaController;
import org.ftd.educational.entityframework.entities.ServiceOrderMainStatus;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 2016-12-28
 * 
 */
public class ServiceOrderMainStatusDAO extends ServiceOrderMainStatusJpaController {
    
    public ServiceOrderMainStatusDAO(EntityManagerFactory emf) {
        super(emf);
    }
    
    public ServiceOrderMainStatus find(Long id) {
        return super.findServiceOrderMainStatus(id);
    }
    
    public List<ServiceOrderMainStatus> findAll() {
        return super.findServiceOrderMainStatusEntities();
    }
    
}
