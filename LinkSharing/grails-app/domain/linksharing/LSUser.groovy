package linksharing

class LSUser {

    String name,emailId,userName;
    String password;
    UserType userType;

    /*transient*/ String confirmPassword;

    static transients=['confirmPassword']

    static constraints = {
        name()
        emailId()
        userName()
        userType()
        password password:true, validator :{pass,obj ->
            println pwd+"kkkkkkkkkkkkkkkkkk"
            def pwd=obj.confirmPassword
            println pwd+"kkkkkkkkkkkkkkkkkk"
            if(pwd == null) return true
            pwd == pass ? true : ['invalid.matchingpasswords']

        }
        confirmPassword  password:true, nullable: true

    }

    /*static constraints = {
        password(blank: false, nullable: false, size:5..20, validator: {password, obj ->
            def password2 = obj.properties['confirmPassword']
            if(password2 == null) return true // skip matching password validation (only important when setting/resetting pass)
            password2 == password ? true : ['invalid.matchingpasswords']
        })
    }*/

    static hasMany=[topic:LSTopic]
    static mappedBy = [topic:'user']

    String toString(){
        return name;
    }
}
enum UserType{
    Simple,
    Admin,
    Guest;
}
