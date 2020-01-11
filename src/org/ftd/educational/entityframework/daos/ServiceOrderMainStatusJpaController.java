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
import org.ftd.educational.entityframework.entities.ServiceOrderMainStatus;

/**
 *
 * @author fabiot
 */
public class ServiceOrderMainStatusJpaController implements Serializable {

    public ServiceOrderMainStatusJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(ServiceOrderMainStatus serviceOrderMainStatus) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(serviceOrderMainStatus);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(ServiceOrderMainStatus serviceOrderMainStatus) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            serviceOrderMainStatus = em.merge(serviceOrderMainStatus);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Long id = serviceOrderMainStatus.getId();
                if (findServiceOrderMainStatus(id) == null) {
                    throw new NonexistentEntityException("The serviceOrderMainStatus with id " + id + " no longer exists.");
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
            ServiceOrderMainStatus serviceOrderMainStatus;
            try {
                serviceOrderMainStatus = em.getReference(ServiceOrderMainStatus.class, id);
                serviceOrderMainStatus.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The serviceOrderMainStatus with id " + id + " no longer exists.", enfe);
            }
            em.remove(serviceOrderMainStatus);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<ServiceOrderMainStatus> findServiceOrderMainStatusEntities() {
        return findServiceOrderMainStatusEntities(true, -1, -1);
    }

    public List<ServiceOrderMainStatus> findServiceOrderMainStatusEntities(int maxResults, int firstResult) {
        return findServiceOrderMainStatusEntities(false, maxResults, firstResult);
    }

    private List<ServiceOrderMainStatus> findServiceOrderMainStatusEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(ServiceOrderMainStatus.class));
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

    public ServiceOrderMainStatus findServiceOrderMainStatus(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(ServiceOrderMainStatus.class, id);
        } finally {
            em.close();
        }
    }

    public int getServiceOrderMainStatusCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<ServiceOrderMainStatus> rt = cq.from(ServiceOrderMainStatus.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
