package application.data.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity(name = "dbo_role")
public class Role {

    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "role_id")
    @Id
    private int Id;

    @Column(name = "name")
    private String name;

    @ManyToMany(fetch = FetchType.LAZY,
            cascade = {
                    CascadeType.PERSIST,
                    CascadeType.MERGE
            })
    @JoinTable(name = "dbo_user_role",
            joinColumns = {@JoinColumn(name = "role_id")},
            inverseJoinColumns = {@JoinColumn(name = "user_id")})
    private Set<User> listRole = new HashSet<>();


    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<User> getListRole() {
        return listRole;
    }

    public void setListRole(Set<User> listRole) {
        this.listRole = listRole;
    }
}
