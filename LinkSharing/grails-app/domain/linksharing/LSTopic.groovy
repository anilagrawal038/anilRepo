package linksharing

class LSTopic {
    String topicName,description
    Date dateCreated,lastUpdate
    TopicType accessType

    static constraints = {
        topicName()
        description()
        accessType()
        user()
        owner()
    }
    static belongsTo = [user:LSUser,owner:LSUser]
    String toString(){
        return topicName;
    }

    def customSave(Map param){
        def sts=null;
        if(!this.hasErrors()){
            sts=save(param);
            LSSubscription topicSubscription=new LSSubscription(user:LSUser.findById(1) /* session.getAttribute('loginUser') */,topic:this,interestLevel:5);
            topicSubscription.save();
        }
        return sts;
    }
    def customSave(){
        def sts=null;
        if(!this.hasErrors()){
            sts=save();
            LSSubscription topicSubscription=new LSSubscription(user:LSUser.findById(1) /* session.getAttribute('loginUser') */,topic:this,interestLevel:5);
            topicSubscription.save();
        }
        return sts;
    }
}
enum TopicType{
    Public,
    Private;
}
