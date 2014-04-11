package linksharing

class LSSubscription {

    LSUser user
    LSTopic topic
    String interestLevel
    static constraints = {
    }
    static belongsTo = [user:LSUser,topic:LSTopic]
}
