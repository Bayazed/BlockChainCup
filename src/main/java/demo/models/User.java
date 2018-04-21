package demo.models;

import java.util.HashMap;
import java.util.Map;

public class User {
    private String login;
    private String password;
    private long alpha;
    private long beta_a;
    private long beta_b;
    private long beta_c;
    private long beta_d;

    private Map<Skill, Byte> skills = new HashMap<>();

    public User() {

    }
}
