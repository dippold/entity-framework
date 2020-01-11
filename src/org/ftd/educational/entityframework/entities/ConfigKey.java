package org.ftd.educational.entityframework.entities;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Fabio Tavares Dipold
 *
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "ConfigKey.find.By.name",
            query = "SELECT o FROM ConfigKey o WHERE o.name =:name")
})

public class ConfigKey extends AbstractEntity {

    private static final long serialVersionUID = -1396555752780472095L;

    @Column(nullable = false, length = 255)
    private String value;

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @Override
    public String toString() {
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");
        
        return this.getClass().getSimpleName()
                + " [ Id:" + super.getId() + " | Nm:" + super.getName() + " | Vl:" + this.getValue()
                + " | Cia:" + super.getCompanyId() + " | Prj:" + super.getProjectId()
                + " | Usr:" + super.getUserId() + " | Rule:" + super.getRuleId()
                + " | Sys:" + super.getSystem() + " | Block:" + super.getBlocked()
                + " | Add:" + dateFormat.format(super.getCreatedIn())
                + " | Upd:" + dateFormat.format(super.getUpdatedIn()) + " ]";
    }    
    
}
