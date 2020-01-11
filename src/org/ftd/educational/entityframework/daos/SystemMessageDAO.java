package org.ftd.educational.entityframework.daos;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import org.ftd.educational.entityframework.entities.SystemMessage;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 0.0.1 - 09/06/2016
 *
 */
public class SystemMessageDAO extends SystemMessageJpaController {

    public SystemMessageDAO(EntityManagerFactory emf) {
        super(emf);
    }

    public SystemMessage find(Long id) {
        return super.findSystemMessage(id);
    }

    public Long getSystemMessageCountByUser(Long userId, Boolean wasRead) {
        EntityManager em = getEntityManager();
        try {
            Query q = em.createNamedQuery("SystemMessage.count.by.user")
                    .setParameter("userId", userId)
                    .setParameter("wasRead", wasRead);

            return (Long) q.getSingleResult();

        } finally {
            em.close();
        }
    }

    public List<SystemMessage> findByUser(Long userId) {
        EntityManager em = getEntityManager();
        try {
            Query q = em.createNamedQuery("SystemMessage.find.by.user");
            q.setParameter("userId", userId);
            
            return q.getResultList();
        } finally {
            em.close();
        }
    }

}
