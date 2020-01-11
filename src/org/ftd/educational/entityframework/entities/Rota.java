package org.ftd.educational.entityframework.entities;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 2018-08-30
 *
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "Rota.findby.resource.and.action",
            query = "SELECT o FROM Rota o WHERE o.recurso = :recurso AND o.acao = :acao")
    ,
    @NamedQuery(name = "Rota.findby.controller.and.action",
            query = "SELECT o FROM Rota o WHERE o.controlador = :controlador AND o.acao = :acao")
    ,
    @NamedQuery(name = "Rota.findby.showmenu.true",
            query = "SELECT o FROM Rota o WHERE o.mostrarNoMenu = true ORDER BY o.processoNegocio, o.nomeGrupoMenu")
})
public class Rota implements Serializable {

    private static final long serialVersionUID = 5151925002496921140L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(nullable = false, columnDefinition = "TINYINT(1) default false")
    private Boolean mostrarNoMenu = false;

    @Column(unique = false, nullable = false, length = 20)
    private String processoNegocio;

    @Column(nullable = false, columnDefinition = "TINYINT(1) default false")
    private Boolean sistema = true;

    @Column(unique = false, nullable = false, length = 20)
    private String nomeGrupoMenu;

    @Column(unique = true, nullable = false, length = 20)
    private String nomeMenu;

    @Column(unique = false, nullable = false, length = 50)
    private String recurso;

    @Column(unique = false, nullable = false, length = 10)
    private String acao;

    @Column(unique = false, nullable = false, length = 50)
    private String tela;

    @Column(unique = false, nullable = false, length = 50)
    private String controlador;

    @Column(unique = false, nullable = false, length = 10)
    private String acaoSucesso;

    @Column(unique = false, nullable = false, length = 10)
    private String acaoFalha;

    @Column(unique = false, nullable = false, length = 50)
    private String permissoesId;

    @Column(unique = false, nullable = true, length = 100)
    private String dicaTela;

    @Column(unique = false, nullable = true, length = 255)
    private String observacao;

    @Column(unique = false, nullable = true, length = 20)
    private String icon;

    @Column(unique = false, nullable = true, length = 20)
    private String btnType;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Boolean getMostrarNoMenu() {
        return mostrarNoMenu;
    }

    public void setMostrarNoMenu(Boolean mostrarNoMenu) {
        this.mostrarNoMenu = mostrarNoMenu;
    }

    public String getNomeGrupoMenu() {
        return nomeGrupoMenu;
    }

    public void setNomeGrupoMenu(String nomeGrupoMenu) {
        this.nomeGrupoMenu = nomeGrupoMenu;
    }

    public String getNomeMenu() {
        return nomeMenu;
    }

    public void setNomeMenu(String nomeMenu) {
        this.nomeMenu = nomeMenu;
    }

    public String getRecurso() {
        return recurso;
    }

    public void setRecurso(String recurso) {
        this.recurso = recurso;
    }

    public String getAcao() {
        return acao;
    }

    public void setAcao(String acao) {
        this.acao = acao;
    }

    public String getPermissoesId() {
        return permissoesId;
    }

    public void setPermissoesId(String permissoesId) {
        this.permissoesId = permissoesId;
    }

    public String getDicaTela() {
        return dicaTela;
    }

    public void setDicaTela(String dicaTela) {
        this.dicaTela = dicaTela;
    }

    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }

    public String getTela() {
        return tela;
    }

    public void setTela(String tela) {
        this.tela = tela;
    }

    public String getControlador() {
        return controlador;
    }

    public void setControlador(String controlador) {
        this.controlador = controlador;
    }

    public String getAcaoSucesso() {
        return acaoSucesso;
    }

    public void setAcaoSucesso(String acaoSucesso) {
        this.acaoSucesso = acaoSucesso;
    }

    public String getAcaoFalha() {
        return acaoFalha;
    }

    public void setAcaoFalha(String acaoFalha) {
        this.acaoFalha = acaoFalha;
    }

    public Boolean getSistema() {
        return sistema;
    }

    public void setSistema(Boolean sistema) {
        this.sistema = sistema;
    }

    public String getProcessoNegocio() {
        return processoNegocio;
    }

    public void setProcessoNegocio(String processoNegocio) {
        this.processoNegocio = processoNegocio;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getBtnType() {
        return btnType;
    }

    public void setBtnType(String btnType) {
        this.btnType = btnType;
    }

    
    
}
