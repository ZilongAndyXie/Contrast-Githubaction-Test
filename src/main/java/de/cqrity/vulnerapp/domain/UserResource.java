package de.cqrity.vulnerapp.domain;

import com.google.common.base.MoreObjects;
import org.hibernate.validator.constraints.NotEmpty;

public class UserResource {

    private long userid;
    @NotEmpty
    private String username;
    private String firstname;
    private String lastname;
    private String creditcardnumber;
    private String phonenumber;
    @NotEmpty
    private String password;
    @NotEmpty
    private String password2;

    public UserResource() {
    }

    public UserResource(User user) {
        this.userid = user.getId();
        this.username = user.getUsername();
        this.firstname = user.getFirstname();
        this.lastname = user.getLastname();
        this.creditcardnumber = user.getCreditcardnumber();
        this.phonenumber = user.getPhonenumber();
        this.password = user.getPassword();
        this.password2 = user.getPassword();
    }

    public long getUserid() {
        return userid;
    }

    public void setUserid(long userid) {
        this.userid = userid;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getCreditcardnumber() {
        return creditcardnumber;
    }

    public void setCreditcardnumber(String creditcardnumber) {
        this.creditcardnumber = creditcardnumber;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword2() {
        return password2;
    }

    public void setPassword2(String password2) {
        this.password2 = password2;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("username", username)
                .add("firstname", firstname)
                .add("lastname", lastname)
                .add("creditcardnumber", creditcardnumber)
                .add("phonenumber", phonenumber)
                .add("password", password)
                .add("password2", password2)
                .toString();
    }
}
