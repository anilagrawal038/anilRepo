package linksharing

class LSTopic {
    String topicName,description,owner,accessType
    Date dateCreated,lastUpdate
    LSUser user

    static constraints = {
    }
    static belongsTo = [user:LSUser]
}
