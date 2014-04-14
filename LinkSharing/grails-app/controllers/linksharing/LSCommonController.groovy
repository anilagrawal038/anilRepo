package linksharing

class LSCommonController {

    def index() {}

    void onSaveTopic(LSTopic topic){
        LSSubscription topicSubscription=new LSSubscription(user:LSUser.findById(1) /* session.getAttribute('loginUser') */,topic:topic,interestLevel:5);
        topicSubscription.save();

    }

    void onSaveResource(LSResource resource){
        LSResourceAccessibility resourceAccessibility=new LSResourceAccessibility(user:LSUser.findById(1) /* session.getAttribute('loginUser') */,resource:resource,isRead:true);
        resourceAccessibility.save();

    }
}
