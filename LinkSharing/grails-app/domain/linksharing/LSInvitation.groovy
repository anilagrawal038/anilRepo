package linksharing

class LSInvitation {

    LSUser fromUser
    List<LSUser> toUsers
    LSTopic topic
    Map<LSUser,Boolean> isAcceptedMap
    String message
    static constraints = {
        fromUser()
        topic()
        toUsers()
        message()
    }
}
