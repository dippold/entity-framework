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
import org.ftd.educational.entityframework.entities.ServiceOrderType;

/**
 *
 * @author fabiot
 */
public class ServiceOrderTypeJpaController implements Serializable {

    public ServiceOrderTypeJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(ServiceOrderType serviceOrderType) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(serviceOrderType);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(ServiceOrderType serviceOrderType) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            serviceOrderType = em.merge(serviceOrderType);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Long id = serviceOrderType.getId();
                if (findServiceOrderType(id) == null) {
                    throw new NonexistentEntityException("The serviceOrderType with id " + id + " no longer exists.");
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
            ServiceOrderType serviceOrderType;
            try {
                serviceOrderType = em.getReference(ServiceOrderType.class, id);
                serviceOrderType.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The serviceOrderType with id " + id + " no longer exists.", enfe);
            }
            em.remove(serviceOrderType);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<ServiceOrderType> findServiceOrderTypeEntities() {
        return findServiceOrderTypeEntities(true, -1, -1);
    }

    public List<ServiceOrderType> findServiceOrderTypeEntities(int maxResults, int firstResult) {
        return findServiceOrderTypeEntities(false, maxResults, firstResult);
    }

    private List<ServiceOrderType> findServiceOrderTypeEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(ServiceOrderType.class));
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

    public ServiceOrderType findServiceOrderType(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(ServiceOrderType.class, id);
        } finally {
            em.close();
        }
    }

    public int getServiceOrderTypeCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<ServiceOrderType> rt = cq.from(ServiceOrderType.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
