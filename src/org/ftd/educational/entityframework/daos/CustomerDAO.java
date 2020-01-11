package org.ftd.educational.entityframework.daos;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import org.ftd.educational.entityframework.entities.Customer;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.0 - 2016-12-30
 * 
 */
public class CustomerDAO extends CustomerJpaController {
    
    public CustomerDAO(EntityManagerFactory emf) {
        super(emf);
    }
    
    public Customer find(Long id) {
        return super.findCustomer(id);
    }
    
    public List<Customer> findAll() {
        EntityManager em = getEntityManager();
        try {
            Query q = em.createNamedQuery("Customer.find.all.order.by.name");

            return q.getResultList();
        } finally {
            em.close();
        }
    }    
    
    
}
