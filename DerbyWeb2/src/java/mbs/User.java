package mbs;
import java.io.Serializable;

public class User extends Object implements Serializable {

    private String password;
    private String username;

    public User() {
        password= new String();
        username = new String();
    }

 
    public void setPassword(String value) {password = value;}
    public String getPassword() { return password;}

    public String getUsername() {return username;}
    public void setUsername(String value) {username = value;}

}
