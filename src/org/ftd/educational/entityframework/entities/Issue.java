package org.ftd.educational.entityframework.entities;

import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.1 - 28/12/2016
 *
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "Issue.findby.workpackage",
            query = "SELECT o FROM Issue o WHERE o.workPackeageId = :workPackeageId ORDER BY o.name"),
    @NamedQuery(name = "Issue.findby.user",
            query = "SELECT o FROM Issue o WHERE o.userId = :userId ORDER BY o.name"),
    @NamedQuery(name = "Issue.findby.project.and.user",
            query = "SELECT o FROM Issue o WHERE o.projectId = :projectId AND o.userId = :userId ORDER BY o.name"),
    @NamedQuery(name = "Issue.findby.project.and.workpackage",
            query = "SELECT o FROM Issue o WHERE o.projectId = :projectId AND o.workPackeageId = :workPackeageId ORDER BY o.name")
})
public class Issue extends Task {
}
