package linksharing

class LSSubscription {

    LSUser user
    LSTopic topic
    String interestLevel
    static constraints = {
        user()
        topic()
        interestLevel()
    }
    static belongsTo = [user:LSUser,topic:LSTopic]
}
