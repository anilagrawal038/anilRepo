package linksharing

class LSResource {

    String name,resourceType,description,owner,reference
    //here reference is to refer a existing resource
    LSTopic topic
    static constraints = {
    }
    static belongsTo = [topic:LSTopic]
}
