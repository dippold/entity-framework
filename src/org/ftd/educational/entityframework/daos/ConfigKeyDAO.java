package org.ftd.educational.entityframework.daos;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import org.ftd.educational.entityframework.entities.ConfigKey;
import org.ftd.educational.entityframework.entities.User;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 21/05/2016
 *
 */
public class ConfigKeyDAO extends ConfigKeyJpaController {

    public ConfigKeyDAO(EntityManagerFactory emf) {
        super(emf);
    }

    public ConfigKey findConfigKey(String cfgKeyName) throws NoResultException {
        EntityManager em = getEntityManager();
        try {
            return (ConfigKey) em.createNamedQuery("ConfigKey.findBy.name")
                    .setParameter("name", cfgKeyName)
                    .getSingleResult();
        } finally {
            em.close();
        }
    }

    public ConfigKey find(Long id) {
        return  super.findConfigKey(id);
    }
    
    public ConfigKey find(String keyName) {
        EntityManager em = getEntityManager();
        try {
            return (ConfigKey) em.createNamedQuery("ConfigKey.find.By.name")
                    .setParameter("name", keyName)
                    .getSingleResult();
        } finally {
            em.close();
        }        
    }
    
    public List<ConfigKey> findAll() {
        return super.findConfigKeyEntities();
    }

}
