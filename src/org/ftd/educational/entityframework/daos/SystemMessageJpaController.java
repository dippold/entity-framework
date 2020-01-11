/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ftd.educational.entityframework.daos;

import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.ftd.educational.entityframework.daos.exceptions.NonexistentEntityException;
import org.ftd.educational.entityframework.entities.SystemMessage;

/**
 *
 * @author ftd
 */
public class SystemMessageJpaController implements Serializable {

    public SystemMessageJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(SystemMessage systemMessage) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(systemMessage);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(SystemMessage systemMessage) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            systemMessage = em.merge(systemMessage);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Long id = systemMessage.getId();
                if (findSystemMessage(id) == null) {
                    throw new NonexistentEntityException("The systemMessage with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Long id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            SystemMessage systemMessage;
            try {
                systemMessage = em.getReference(SystemMessage.class, id);
                systemMessage.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The systemMessage with id " + id + " no longer exists.", enfe);
            }
            em.remove(systemMessage);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<SystemMessage> findSystemMessageEntities() {
        return findSystemMessageEntities(true, -1, -1);
    }

    public List<SystemMessage> findSystemMessageEntities(int maxResults, int firstResult) {
        return findSystemMessageEntities(false, maxResults, firstResult);
    }

    private List<SystemMessage> findSystemMessageEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(SystemMessage.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public SystemMessage findSystemMessage(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(SystemMessage.class, id);
        } finally {
            em.close();
        }
    }

    public int getSystemMessageCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<SystemMessage> rt = cq.from(SystemMessage.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
