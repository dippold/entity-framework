package org.ftd.educational.entityframework.daos;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import org.ftd.educational.entityframework.entities.UserCredential;

/**
 *
 * @author Fabio Tavares Dippold
 *
 */
public class UserCredentialDAO extends UserCredentialJpaController {

    public UserCredentialDAO(EntityManagerFactory emf) {
        super(emf);
    }

    public UserCredential find(Long id) {
        return super.findUserCredential(id);
    }

    public List<UserCredential> findAll() {
        return findUserCredentialEntities();
    }

    public UserCredential findByUser(Long userId) throws NoResultException {
        EntityManager em = getEntityManager();
        try {
            return (UserCredential) em.createNamedQuery("UserCredential.findby.user")
                    .setParameter("userId", userId)
                    .getSingleResult();
        } finally {
            em.close();
        }
    }

    public UserCredential findByUserAndCredential(Long userId, Long credentialId) throws NoResultException {
        EntityManager em = getEntityManager();
        try {
            return (UserCredential) em.createNamedQuery("UserCredential.findby.user.credential")
                    .setParameter("userId", userId)
                    .setParameter("credentialId", credentialId)
                    .getSingleResult();
        } finally {
            em.close();
        }
    }    

    public UserCredential findByUserAndCredentialAndAuthentication(
            Long userId, Long credentialId, String identification, String passwd) throws NoResultException {
        EntityManager em = getEntityManager();
        try {
            return (UserCredential) em.createNamedQuery("UserCredential.findby.user.credential.authentication")
                    .setParameter("userId", userId)
                    .setParameter("credentialId", credentialId)
                    .setParameter("identification", identification)
                    .setParameter("passwd", passwd)
                    .getSingleResult();
        } finally {
            em.close();
        }
    }
    
}
