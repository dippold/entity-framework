package org.ftd.educational.entityframework.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 1.0.0 - 13/08/2016
 * 
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "Stakeholder.find.all.by.customer",
            query = "SELECT o FROM Stakeholder o WHERE o.customerId = :customerId ORDER BY o.name"),    
    @NamedQuery(name = "Stakeholder.find.all.by.name",
            query = "SELECT o FROM Stakeholder o WHERE o.companyId = :companyId ORDER BY o.name"),    
    @NamedQuery(name = "Stakeholder.find.all.by.project",
            query = "SELECT o FROM Stakeholder o WHERE o.companyId = :companyId AND o.projectId = :projectId ORDER BY o.name"),
    @NamedQuery(name = "Stakeholder.find.all.like.affinityGroup",
            query = "SELECT o FROM Stakeholder o WHERE o.companyId = :companyId AND o.affinityGroup LIKE :keyword ORDER BY o.name")
})

public class Stakeholder extends AbstractEntity { 

    @Column(nullable = false, columnDefinition = "BIGINT(20) default 1")
    private Long customerId = 1L;
    
    @Column(nullable = false, length = 45)
    private String affinityGroup;
    
    @Column(unique = false, nullable = false, length = 45)
    private String hierarchy;
    
    @Column(unique = true, nullable = false, length = 45)
    private String email;

    @Column(nullable = false)
    // GRAU DE INTERESSE: 0-9    
    private int interestDegree = 0;
    
    // GRAU DE PODER & INFLUÊNCIA: 0-9
    private int powerDegree = 0;
    
    @Column(nullable = true, length = 45)    
    private String officePhoneNumber;
    
    @Column(nullable = true, length = 45)
    private String cellPhoneNumber;
    
    @Column(nullable = true, length = 45)
    private String skype;
    
    @Column(nullable = true, length = 45)
    private String gmail;
    
    @Column(nullable = true, length = 255)
    // COMO ELE PODE AJUDAR?
    private String howCanItHelp;
    
    @Column(nullable = true, length = 255)
    // COMO ELE PODE ATRAPALAR?
    private String howItCanMessUp;
    
    @Column(nullable = true, length = 255)
    // ESTRATÉGIA DE ATITUDE: GERENCIAR / MONITORAR / MANTER SATISFEITO / MANTER INFORMADO
    private String strategyAttitude;
    
    @Column(nullable = true, length = 255)
    // ESTRATÉGIA DE COMUNICAÇÃO
    private String strategyCommunication; 
    
    @Column(nullable = true, length = 255)
    // PERIODICIDADE DA COMUNICAÇÃO
    private String communicationFrequency;
    
    @Column(nullable = true, length = 255)
    // OBSERVAÇÕES ADICIONAIS
    private String additionalNotes;

    public String getAffinityGroup() {
        return affinityGroup;
    }

    public void setAffinityGroup(String affinityGroup) {
        this.affinityGroup = affinityGroup;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getInterestDegree() {
        return interestDegree;
    }

    public void setInterestDegree(int interestDegree) {
        this.interestDegree = interestDegree;
    }

    public int getPowerDegree() {
        return powerDegree;
    }

    public void setPowerDegree(int powerDegree) {
        this.powerDegree = powerDegree;
    }

    public String getOfficePhoneNumber() {
        return officePhoneNumber;
    }

    public void setOfficePhoneNumber(String officePhoneNumber) {
        this.officePhoneNumber = officePhoneNumber;
    }

    public String getCellPhoneNumber() {
        return cellPhoneNumber;
    }

    public void setCellPhoneNumber(String cellPhoneNumber) {
        this.cellPhoneNumber = cellPhoneNumber;
    }

    public String getSkype() {
        return skype;
    }

    public void setSkype(String skype) {
        this.skype = skype;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getHowCanItHelp() {
        return howCanItHelp;
    }

    public void setHowCanItHelp(String howCanItHelp) {
        this.howCanItHelp = howCanItHelp;
    }

    public String getHowItCanMessUp() {
        return howItCanMessUp;
    }

    public void setHowItCanMessUp(String howItCanMessUp) {
        this.howItCanMessUp = howItCanMessUp;
    }

    public String getStrategyAttitude() {
        return strategyAttitude;
    }

    public void setStrategyAttitude(String strategyAttitude) {
        this.strategyAttitude = strategyAttitude;
    }

    public String getStrategyCommunication() {
        return strategyCommunication;
    }

    public void setStrategyCommunication(String strategyCommunication) {
        this.strategyCommunication = strategyCommunication;
    }

    public String getCommunicationFrequency() {
        return communicationFrequency;
    }

    public void setCommunicationFrequency(String communicationFrequency) {
        this.communicationFrequency = communicationFrequency;
    }

    public String getAdditionalNotes() {
        return additionalNotes;
    }

    public void setAdditionalNotes(String additionalNotes) {
        this.additionalNotes = additionalNotes;
    }    

    public String getHierarchy() {
        return hierarchy;
    }

    public void setHierarchy(String hierarchy) {
        this.hierarchy = hierarchy;
    }

    public Long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Long customerId) {
        this.customerId = customerId;
    }    
    
}
