package org.ftd.educational.entityframework.setup;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.ftd.educational.entityframework.daos.CompanyDAO;
import org.ftd.educational.entityframework.daos.ServiceOrderMainStatusDAO;
import org.ftd.educational.entityframework.daos.ServiceOrderTypeDAO;
import org.ftd.educational.entityframework.entities.ServiceOrderMainStatus;
import org.ftd.educational.entityframework.entities.ServiceOrderType;
import org.ftd.educational.entityframework.daos.ConfigKeyDAO;
import org.ftd.educational.entityframework.daos.CredentialDAO;
import org.ftd.educational.entityframework.daos.CustomerDAO;
import org.ftd.educational.entityframework.daos.ProfileDAO;
import org.ftd.educational.entityframework.daos.ProjectDAO;
import org.ftd.educational.entityframework.daos.RotaDAO;
import org.ftd.educational.entityframework.daos.RuleDAO;
import org.ftd.educational.entityframework.daos.UserCredentialDAO;
import org.ftd.educational.entityframework.daos.UserDAO;
import org.ftd.educational.entityframework.entities.Company;
import org.ftd.educational.entityframework.entities.ConfigKey;
import org.ftd.educational.entityframework.entities.Credential;
import org.ftd.educational.entityframework.entities.Customer;
import org.ftd.educational.entityframework.entities.Profile;
import org.ftd.educational.entityframework.entities.Project;
import org.ftd.educational.entityframework.entities.Rota;
import org.ftd.educational.entityframework.entities.Rule;
import org.ftd.educational.entityframework.entities.User;
import org.ftd.educational.entityframework.entities.UserCredential;

/**
 *
 * @author Fabio Tavares Dippold
 * @version 2016-12-27
 *
 */
public class Init {

    private static final String VERSION = "BasicEntitySetup 1.0.3 running...\n";
    private static final String PERSISTENCE_UNIT_NAME = "entityframeworkPU";
    private static final boolean CREATE = Boolean.FALSE;
    private static final List<User> CREATED_USERS = new ArrayList<>();
    private static final List<Credential> CREATED_CREDENTIALS = new ArrayList<>();

    public static void main(String[] args) {
        if (CREATE) {
            System.out.println(create());
        }
//        System.out.println(show());
//        System.out.println("BasicEntitySetup finish!");

        getRotasActiveProfile("1", "5");

//        String[] userRulesIds = {"1","3"};
//        String[] rotaRulesIds = {"2","4","6"};
//        
//        thereIsSimilar2(userRulesIds,rotaRulesIds);
//        System.out.println(thereIsSimilar(userRulesIds,rotaRulesIds));
    }

    public static boolean thereIsSimilar(String[] lst1, String[] lst2) {
        boolean result = false;
        for (int i = 0; i < lst1.length; i++) {
            for (int j = 0; j < lst2.length; j++) {
                if (lst1[i].equals(lst2[j])) {
                    result = true;
                    break;
                }
            }
        }

        return result;
    }

    public static void thereIsSimilar2(String[] lst1, String[] lst2) {
        for (int i = 0; i < lst1.length; i++) {
            for (int j = 0; j < lst2.length; j++) {
                if (lst1[i].equals(lst2[j])) {
                    System.out.println("->" + lst1[i] + " & " + lst2[j] + " = Match!!!");
                } else {
                    System.out.println("->" + lst1[i] + " & " + lst2[j] + " = NO Match!!!");
                }
            }
        }
    }

    public static void getRotasActiveProfile(String userId, String profileId) {
        // BUSCAR PERFIS DO USUARIO...
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        UserDAO userDAO = new UserDAO(factory);
        User user = userDAO.find(Long.parseLong(userId));
        System.out.println("User -> " + user.getId() + " (" + user.getName() + ") | ProfileIds: (" + user.getProfileIds() + ").");

        ProfileDAO profileDAO = new ProfileDAO(factory);
        Profile profile = profileDAO.find(Long.parseLong(profileId));
        System.out.println("Active Profile -> " + profile.getId() + " (" + profile.getName() + ").");

        System.out.println("User Rules Ids-> " + profile.getRoleIds());
        String userRuleIds[] = profile.getRoleIds().split(";");

        List<Rota> rotasValidas = new ArrayList<>();

        RotaDAO rotaDAO = new RotaDAO(factory);
        List<Rota> rotas = rotaDAO.findRotaMenu();
        System.out.println("Rotas com flag mostrarMenu=true...");
        for (Rota rota : rotas) {
            System.out.println(" + Rota:" + rota.getId() + " | " + rota.getNomeMenu() + "  | Rules: " + rota.getPermissoesId());
            String[] rotaRuleIds = rota.getPermissoesId().split(";");
            if (thereIsSimilar(rotaRuleIds, userRuleIds)) {
                rotasValidas.add(rota);
            }
        }

        System.out.println("Rotas liberada para o perfil...");
        for (Rota rota : rotasValidas) {
            System.out.println(" + Rota:" + rota.getId() + " | " + rota.getNomeMenu() + "  | Rules: " + rota.getPermissoesId());
        }

    }

    private static boolean validarRota(Rota rota, List<Rule> rules) {
        System.out.println("      validarRota...");
        boolean valid = false;
        String[] rotaRuleIds = rota.getPermissoesId().split(";");
        for (String rotaRuleId : rotaRuleIds) {
            System.out.println("        + rotaRuleId=" + rotaRuleId);
            for (Rule rule : rules) {
                System.out.println("          + rule.id=" + rule.getId());
                if (rotaRuleId.equals(Long.toString(rule.getId()))) {
                    valid = true;
                    break;
                }
            }
        }

        return valid;
    }

    public static List<Profile> getProfiles(String profileIds) {
        List<Profile> profiles = new ArrayList<>();
        String[] ids = profileIds.split(";");
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        ProfileDAO dao = new ProfileDAO(factory);
        for (String id : ids) {
            if (id.equals("*")) {
                profiles = dao.findProfileEntities();
                break;
            } else {
                Profile profile = dao.find(Long.parseLong(id));
                if (profile != null) {
                    profiles.add(profile);
                }
            }
        }

        return profiles;
    }

    public static List<Rule> getRules(String ruleIds) {
        List<Rule> rules = new ArrayList<>();
        String[] ids = ruleIds.split(";");
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        RuleDAO dao = new RuleDAO(factory);
        for (String id : ids) {
            if (id.equals("*")) {
                rules = dao.findAll();
                break;
            } else {
                Rule rule = dao.find(Long.parseLong(id));
                if (rule != null) {
                    rules.add(rule);
                }
            }
        }

        return rules;
    }

    public static String show() {
        StringBuilder sb = new StringBuilder();
        sb.append(VERSION);
        sb.append(showRules());
        sb.append(showUsers());
        //sb.append(showCredentials());
        //sb.append(showUserCredentials());
        sb.append(showConfigKeys());

        return sb.toString();
    }

    public static String create() {
        StringBuilder sb = new StringBuilder();
        sb.append(VERSION);
        sb.append(createRulesMasterData());
        sb.append(createUsersMasterData());
        sb.append(createConfigKeyMasterData());
        sb.append(createCredentialMasterData());
        sb.append(createUserCredentiLMasterData());
        sb.append(createCompaniesMasterData());
        sb.append(createProjectMasterData());

        return sb.toString();
    }

    private static String showRules() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        RuleDAO dao = new RuleDAO(factory);
        List<Rule> lst = dao.findAll();
        lst.stream().forEach((o) -> {
            sb.append("\n   + ");
            sb.append(o);
        });
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

    private static String showUsers() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        UserDAO dao = new UserDAO(factory);
        List<User> lst = dao.findAll();
        lst.stream().forEach((o) -> {
            sb.append("\n   + ");
            sb.append(o);
        });
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

    private static String showCredentials() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        CredentialDAO dao = new CredentialDAO(factory);
        List<Credential> lst = dao.findAll();
        lst.stream().forEach((o) -> {
            sb.append("\n   + ");
            sb.append(o);
        });
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

    private static String showUserCredentials() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        UserCredentialDAO dao = new UserCredentialDAO(factory);
        List<UserCredential> lst = dao.findAll();
        lst.stream().forEach((o) -> {
            sb.append("\n   + ");
            sb.append(o);
        });
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

    private static String showConfigKeys() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        ConfigKeyDAO dao = new ConfigKeyDAO(factory);
        List<ConfigKey> lst = dao.findAll();
        lst.stream().forEach((o) -> {
            sb.append("\n   + ");
            sb.append(o);
        });
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

    /*
        CREATE MEMBERS...
     */
    private static String createRulesMasterData() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        String[] names = {"Admin", "Gerente", "Vendedor", "Técnico", "Financeiro"};
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        RuleDAO dao = new RuleDAO(factory);
        for (String name : names) {
            Rule o = new Rule();
            o.setName(name);
            o.setSystem(Boolean.TRUE);
            dao.create(o);
        }
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

    private static String createUsersMasterData() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        final String EMAIL_DOMAIN = "@digitaldoor.com.br";
        final String DEFAULT_PASSWD = "dd@1234";
        String[] data = {
            "Alexandro Luiz Acerga", "", "",
            "Bruno dos Santos", "", "",
            "Daniel Natal de Souza", "", "",
            "Denilson Furtado", "", "",
            "Fabio Tavares Dippold", "dippold.br@gmail.com", "galateo2013",
            "Fernando Maciel Hiller Voigt", "", "",
            "Jefferson Fernando Macial", "", "",
            "João Roberto Bittencourt", "", "",
            "Jony Udson Torres", "", "",
            "Laercio Bento", "", "",
            "Leonardo Viriato da Silva", "", "",
            "Lucas Sprenger de Oliveira", "", "",
            "Matheus Daniel Rosa", "", "",
            "Rafael Cardoso Gonsalves", "", "",};

        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        UserDAO dao = new UserDAO(factory);
        for (int i = 0; i < data.length; i++) {
            User o = new User();
            o.setName(data[i]);
            o.setNickname(getFirstName(data[i]));
            if (data[i + 1].equals("")) {
                o.setEmail(getFirstName(data[i]) + "." + getLastName(data[i]) + EMAIL_DOMAIN);
                o.setPasswd(DEFAULT_PASSWD);
            } else {
                o.setEmail(data[i + 1]);
                o.setPasswd(data[i + 2]);
            }
            o.setSystem(Boolean.TRUE);
            dao.create(o);
            i++;
            i++;

            Init.CREATED_USERS.add(o);
        }
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

    private static String createConfigKeyMasterData() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        String[] data = {
            "app.version", "10.0.1",
            "app.smtp.server", "smtp.gmail.com",
            "app.smtp.account", "ppm@gmail.com",
            "app.smtp.passwd", "ppm@123",
            "app.default.role.id", "3",
            "app.default.company.id", "1",
            "app.default.project.id", "1",
            "app.default.project.state.id", "1",
            "app.portlet.my.project.by.status.show", "yes",
            "app.portlet.my.task.by.project.show", "yes",
            "app.portlet.my.task.by.status.show", "yes",
            "app.portlet.my.task.by.project.status.id.lst", "*",
            "app.portlet.my.task.by.status.status.id.lst", "*",
            "app.portlet.project.by.status.project.id.lst", "*",
            "app.portlet.project.by.status.status.id.lst", "*"
        };
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        ConfigKeyDAO dao = new ConfigKeyDAO(factory);
        for (int i = 0; i < data.length; i++) {
            ConfigKey o = new ConfigKey();
            o.setCompanyId(1L);
            o.setName(data[i]);
            o.setValue(data[i + 1]);
            o.setRuleId(1L);
            o.setSystem(Boolean.TRUE);
            dao.create(o);
            i++;
        }
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

    private static String createCredentialMasterData() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        String[] names = {"Google", "SalesForce", "SAP ECC", "AD"};
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        CredentialDAO dao = new CredentialDAO(factory);
        for (String name : names) {
            Credential o = new Credential();
            o.setName(name);
            o.setSystem(Boolean.TRUE);
            dao.create(o);

            Init.CREATED_CREDENTIALS.add(o);
        }
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

    private static String createUserCredentiLMasterData() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        UserCredentialDAO dao = new UserCredentialDAO(factory);
        for (User user : Init.CREATED_USERS) {
            for (Credential credential : Init.CREATED_CREDENTIALS) {
                UserCredential o = new UserCredential();
                o.setName(user.getName() + " -> " + credential.getName());
                o.setUserId(user.getId());
                o.setCredentialId(credential.getId());
                o.setIdentification(user.getName());
                o.setPasswd(credential.getName() + "@1234");
                dao.create(o);
            }
        }
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

    private static String createCompaniesMasterData() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        String[] names = {"Padrão", "Filial-1", "Filial-2", "Filial-3", "Filial-4"};
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        CompanyDAO dao = new CompanyDAO(factory);
        for (String name : names) {
            Company o = new Company();
            o.setName(name);
            o.setSystem(Boolean.TRUE);
            dao.create(o);
        }
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

    private static String createProjectMasterData() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        String[] names = {"Rotina", "Administrativo", "Treinamentos", "Férias", "Projeto ABC"};
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        ProjectDAO dao = new ProjectDAO(factory);
        for (String name : names) {
            Project o = new Project();
            o.setName(name);
            o.setSystem(Boolean.TRUE);
            dao.create(o);
        }
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

    /*
        UTILS MEMBERS...
     */
    private static String getFirstName(String name) {
        String[] splited = name.split(" ");

        return splited[0];
    }

    private static String getLastName(String name) {
        String[] splited = name.split(" ");

        return splited[splited.length - 1];
    }

    /*
        DIGITALDOOR SHOW MEMBERS ...
     */
    private static String showOSType() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        ServiceOrderTypeDAO dao = new ServiceOrderTypeDAO(factory);
        List<ServiceOrderType> lst = dao.findAll();
        lst.stream().forEach((o) -> {
            sb.append("\n   + ");
            sb.append(o);
        });
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

    private static String showOSStatus() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        ServiceOrderMainStatusDAO dao = new ServiceOrderMainStatusDAO(factory);
        List<ServiceOrderMainStatus> lst = dao.findAll();
        lst.stream().forEach((o) -> {
            sb.append("\n   + ");
            sb.append(o);
        });
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

    /*
        DIGITALDOOR CREATE MEMBERS ...
     */
    private static String createOSTypesMasterData() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        String[] names = {
            "Serviço",
            "Serviço garantia",
            "Serviço cortesia",
            "Serviço interno",
            "Rotina",
            "Outros"};
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        ServiceOrderTypeDAO dao = new ServiceOrderTypeDAO(factory);
        for (String name : names) {
            ServiceOrderType o = new ServiceOrderType();
            o.setName(name);
            o.setSystem(Boolean.TRUE);
            dao.create(o);
        }
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

    private static String createOSStatusMasterData() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        String[] names = {
            "1 Em triagem",
            "2 Em oçamentação",
            "3 Em aprovação interna",
            "4 Em aprovação cliente",
            "40 Orçamento cancelado",
            "5 Firme para execução",
            "6 Em execução",
            "60 Para execução",
            "61 Retomada execução",
            "7 Finalizado e solicitado aceite",
            "71 Em revisão do Serviço",
            "8 Pronto p/ faturamento",
            "9 Faturado",
            "90 Pgto em atraso",
            "10 Paga",
            "11 Fechada"};
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        ServiceOrderMainStatusDAO dao = new ServiceOrderMainStatusDAO(factory);
        for (String name : names) {
            ServiceOrderMainStatus o = new ServiceOrderMainStatus();
            o.setName(name);
            o.setSystem(Boolean.TRUE);
            dao.create(o);
        }
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

    private static String createCustomersMasterData() {
        final String methodName = new Object() {
        }.getClass().getEnclosingMethod().getName();
        StringBuilder sb = new StringBuilder("  + ");
        sb.append(methodName);
        sb.append("...");
        String[] names = {
            "EUAX",
            "BMW",
            "WEG",
            "A ser cadastrado (TBD)"};
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        CustomerDAO dao = new CustomerDAO(factory);
        for (String name : names) {
            Customer o = new Customer();
            o.setName(name);
            o.setSystem(Boolean.TRUE);
            dao.create(o);
        }
        sb.append("\n  + ");
        sb.append(methodName);
        sb.append(" finish!\n");

        return sb.toString();
    }

}
