package demo.models;

import java.util.HashMap;
import java.util.Map;

public class User {
    private long id;
    private String login;
    private String password;

    private long alpha;

    private long beta_a;
    private long beta_b;
    private long beta_c;
    private long beta_d;

    private Map<Skill, Integer> skills = new HashMap<>();

    public User(long id, String login, String password, Skill skill) {
        if (skill != null) skills.put(skill, 60);

        this.id = id;
        this.login = login;
        this.password = password;

        this.alpha = 0;
        this.beta_a = 0;
        this.beta_b = 0;
        this.beta_c = 0;
        this.beta_d = 0;
    }

    public long getId() {
        return id;
    }

    public String getLogin() {
        return login;
    }

    public String getPassword() {
        return password;
    }

    public long getAlpha() {
        return alpha;
    }

    public long getBeta() {
        return beta_a + beta_c - beta_b - beta_d;
    }

    public long getBeta_a() {
        return beta_a;
    }

    public long getBeta_b() {
        return beta_b;
    }

    public long getBeta_c() {
        return beta_c;
    }

    public long getBeta_d() {
        return beta_d;
    }

    public Map<Skill, Integer> getSkills() {
        return skills;
    }

    public void setAlpha(long alpha) {
        this.alpha = alpha;
    }

    public void setBeta_a(long beta_a) {
        this.beta_a = beta_a;
    }

    public void setBeta_b(long beta_b) {
        this.beta_b = beta_b;
    }

    public void setBeta_c(long beta_c) {
        this.beta_c = beta_c;
    }

    public void setBeta_d(long beta_d) {
        this.beta_d = beta_d;
    }

    @Override
    public boolean equals(Object obj) {
        try {
            User user = (User) obj;
            return this.login.equals(user.login);
        } catch (Exception e) {
            return false;
        }
    }

    @Override
    public String toString() {
        return this.login;
    }
}
