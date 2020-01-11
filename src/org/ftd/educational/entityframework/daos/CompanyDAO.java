package org.ftd.educational.entityframework.daos;

import java.util.List;
import javax.persistence.EntityManagerFactory;
import org.ftd.educational.entityframework.entities.Company;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 0.0.1 - 27/06/2016
 */
public class CompanyDAO extends CompanyJpaController {
    
    public CompanyDAO(EntityManagerFactory emf) {
        super(emf);
    }
    
    public Company find(Long id) {
        return super.findCompany(id);
    }
    
    public List<Company> findAll() {
        return super.findCompanyEntities();
    }
    
}
