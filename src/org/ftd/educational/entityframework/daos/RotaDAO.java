package org.ftd.educational.entityframework.daos;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import org.ftd.educational.entityframework.entities.Rota;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 2017-08-30
 * 
 */
public class RotaDAO extends RotaJpaController {

    private static final long serialVersionUID = 1085878017261222922L;
    
    public RotaDAO(EntityManagerFactory emf) {
        super(emf);
    }
    
    public Rota findRotaByResource(String recurso, String acao) throws NoResultException {
        EntityManager em = getEntityManager();
        try {
            return (Rota) em.createNamedQuery("Rota.findby.resource.and.action")
                    .setParameter("recurso", recurso)
                    .setParameter("acao", acao)
                    .getSingleResult();
        } finally {
            em.close();
        }
    }

    public Rota findRotaByController(String controlador, String acao) throws NoResultException {
        EntityManager em = getEntityManager();
        try {
            return (Rota) em.createNamedQuery("Rota.findby.controller.and.action")
                    .setParameter("controlador", controlador)
                    .setParameter("acao", acao)
                    .getSingleResult();
        } finally {
            em.close();
        }
    }    
    
    public List<Rota> findRotaMenu() {
        EntityManager em = getEntityManager();
        try {
            Query q = em.createNamedQuery("Rota.findby.showmenu.true");
            return q.getResultList();
        } finally {
            em.close();
        }
    }    
    
}
