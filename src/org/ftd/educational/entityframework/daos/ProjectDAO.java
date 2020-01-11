package org.ftd.educational.entityframework.daos;

import java.util.List;
import javax.persistence.EntityManagerFactory;
import org.ftd.educational.entityframework.entities.Project;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 2016-12-30
 * 
 */
public class ProjectDAO extends ProjectJpaController {
    
    public ProjectDAO(EntityManagerFactory emf) {
        super(emf);
    }
    
    public Project find(Long id) {
        return super.findProject(id);
    }
    
    public List<Project> findAll() {
        return super.findProjectEntities();
    }
    
    
}
