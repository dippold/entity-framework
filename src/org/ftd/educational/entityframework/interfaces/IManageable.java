package org.ftd.educational.entityframework.interfaces;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.0 - 2016-12-28
 * 
 */
public interface IManageable {
    Long getId();
    String getName();
    Long getGeneralStateId();
    Long getUserId();
    
    java.util.Date getCreatedIn();
    java.util.Date getUpdatedIn();
    
    Long getCompanyId();
    Long getProjectId();
    
    java.util.Date getEstimatedStartDate();
    java.util.Date getStartDatePerformed();
    
    java.util.Date getEstimatedEndDate();
    java.util.Date getEndDatePerformed();
    
    int getEstimatedWork();
    int getWorkDone();
        
    int getEstimatedCust();
    int getCostRealized();
    
    int getCompleteness();       
    
}
