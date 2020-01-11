package org.ftd.educational.entityframework.daos;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import org.ftd.educational.entityframework.entities.SystemLog;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.1 - 29/06/2016
 * 
 */
public class SystemLogDAO extends SystemLogJpaController {
    
    public SystemLogDAO(EntityManagerFactory emf) {
        super(emf);
    }
    
    public List<SystemLog> findAll() {
        EntityManager em = getEntityManager();
        try {
            Query q = em.createNamedQuery("SystemLog.orderby.create");
            return q.getResultList();
        } finally {
            em.close();
        }
    }    
    
}
