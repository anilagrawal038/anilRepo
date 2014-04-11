package linksharing

class LSUser {

    String name,password,emailId,userName;

    static constraints = {
    }
    static hasMany=[topic:LSTopic]
}
