package org.ftd.educational.entityframework.daos;

import javax.persistence.EntityManagerFactory;
import org.ftd.educational.entityframework.entities.Profile;

/**
 *
 * @author Fabio Tavares Dipppold
 * @version 2017-09-01
 * 
 */
public class ProfileDAO extends ProfileJpaController {
    
    public ProfileDAO(EntityManagerFactory emf) {
        super(emf);
    }
    
    public Profile find(Long id) {
        return super.findProfile(id);
    }
}
