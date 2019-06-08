package dawid.appdemo.user;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="user")
public class User {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Getter
    @Setter
    @Column(name = "id")
    private int id;

    @Column(name = "email")
    @Getter
    @Setter
    @NotNull
    private String email;

    @Column(name = "name")
    @Getter
    @Setter
    @NotNull
    private String name;

    @Column(name = "login")
    @Getter
    @Setter
    private String login;


    @Column(name = "last_name")
    @Getter
    @Setter
    private String lastName;


    @Column(name = "password")
    @Getter
    @Setter
    @NotNull
    private String password;

}
