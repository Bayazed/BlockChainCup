package demo.models;

public class Skill {
    private String name;
    private long id;

    public Skill(long id, String name) {
        this.id = id;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public long getId() {
        return id;
    }

    @Override
    public String toString() {
        return this.name;
    }

    @Override
    public boolean equals(Object obj) {
        Skill skill = (Skill) obj;
        return this.name.equals(skill.name);
    }
}
