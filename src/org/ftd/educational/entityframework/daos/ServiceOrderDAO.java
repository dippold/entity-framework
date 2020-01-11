package org.ftd.educational.entityframework.daos;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import org.ftd.educational.entityframework.daos.ServiceOrderJpaController;
import org.ftd.educational.entityframework.entities.ServiceOrder;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 2016-12-28
 * 
 */
public class ServiceOrderDAO extends ServiceOrderJpaController {
    
    public ServiceOrderDAO(EntityManagerFactory emf) {
        super(emf);
    }
    
    public ServiceOrder find(Long id) {
        return super.findServiceOrder(id);
    }
    
    public List<ServiceOrder> findAll() {
        return super.findServiceOrderEntities();
    }
    
    public List<ServiceOrder> findServiceOrderById(Long id) {
        List<ServiceOrder> lst = new ArrayList<>();
        ServiceOrder os = this.find(id);
        if (os != null) {
            lst.add(os);
        }

        return lst;
    }    
    
    public List<ServiceOrder> findServiceOrderByStatus(Long ServiceOrderMainStatusId) {
        EntityManager em = getEntityManager();
        try {
            Query q = em.createNamedQuery("ServiceOrder.findby.status");
            q.setParameter("ServiceOrderMainStatusId", ServiceOrderMainStatusId);
            return q.getResultList();
        } finally {
            em.close();
        }
    }    
    
    public List<ServiceOrder> findServiceOrderByCustomer(Long customerId) {
        EntityManager em = getEntityManager();
        try {
            Query q = em.createNamedQuery("ServiceOrder.findby.customer");
            q.setParameter("customerId", customerId);
            return q.getResultList();
        } finally {
            em.close();
        }
    }     
    
    public List<ServiceOrder> findServiceOrderByStakeholder(Long stakeholderId) {
        EntityManager em = getEntityManager();
        try {
            Query q = em.createNamedQuery("ServiceOrder.findby.stakeholder");
            q.setParameter("stakeholderId", stakeholderId);
            return q.getResultList();
        } finally {
            em.close();
        }
    }    
    
    public List<ServiceOrder> findServiceOrderByCustomerAndStatus(Long customerId, Long ServiceOrderMainStatusId) {
        EntityManager em = getEntityManager();
        try {
            Query q = em.createNamedQuery("ServiceOrder.findby.customer.and.status");
            q.setParameter("customerId", customerId);
            q.setParameter("ServiceOrderMainStatusId", ServiceOrderMainStatusId);
            return q.getResultList();
        } finally {
            em.close();
        }
    }     

    public List<ServiceOrder> findServiceOrderByCustomerAndType(Long customerId, Long serviceOrderTypeId) {
        EntityManager em = getEntityManager();
        try {
            Query q = em.createNamedQuery("ServiceOrder.findby.customer.and.type");
            q.setParameter("customerId", customerId);
            q.setParameter("serviceOrderTypeId", serviceOrderTypeId);
            return q.getResultList();
        } finally {
            em.close();
        }
    }    
    
    public List<ServiceOrder> findServiceOrderByCustomerAndStatusAndType(Long customerId, Long ServiceOrderMainStatusId, Long serviceOrderTypeId) {
        EntityManager em = getEntityManager();
        try {
            Query q = em.createNamedQuery("ServiceOrder.findby.customer.and.status.and.type");
            q.setParameter("customerId", customerId);
            q.setParameter("ServiceOrderMainStatusId", ServiceOrderMainStatusId);
            q.setParameter("serviceOrderTypeId", serviceOrderTypeId);
            return q.getResultList();
        } finally {
            em.close();
        }
    }
    
}
