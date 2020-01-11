package org.ftd.educational.entityframework.daos;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import org.ftd.educational.entityframework.entities.Credential;

/**
 *
 * @author Fabio Tavares Dippold
 * 
 */
public class CredentialDAO extends CredentialJpaController {

    public CredentialDAO(EntityManagerFactory emf) {
        super(emf);
    }

    public Credential find(Long id) {
        return  super.findCredential(id);
    }    
    
    public Credential findByName(String name) throws NoResultException {
        EntityManager em = getEntityManager();
        try {
            return (Credential) em.createNamedQuery("Credential.findby.name")
                    .setParameter("name", name)
                    .getSingleResult();
        } finally {
            em.close();
        }
    }    
    
    public List<Credential> findAll() {
        return findCredentialEntities();
    }
    
}
