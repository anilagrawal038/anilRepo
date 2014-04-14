package linksharing

class LSResource {

    String name, resourceType, description
    LSUser owner
    LSResource reference
    //here reference is to refer a existing resource
    LSTopic topic
    static constraints = {
        name()
        description()
        resourceType()
        topic()
        owner()
        reference()
        reference nullable: true
    }
    static belongsTo = [topic: LSTopic, owner: LSUser, reference: LSResource]

    String toString() {
        return name;
    }

    def customSave(Map param) {
        def sts = null;
        if (!this.hasErrors()) {
            sts = this.save(param);
            LSResourceAccessibility resourceAccessibility = new LSResourceAccessibility(user: LSUser.findById(1) /* session.getAttribute('loginUser') */, resource: this, isRead: true);
            resourceAccessibility.save();
        }
        return sts;
    }

    def customSave() {
        def sts = null;
        if (!this.hasErrors()) {
            sts = this.save();
            LSResourceAccessibility resourceAccessibility = new LSResourceAccessibility(user: LSUser.findById(1) /* session.getAttribute('loginUser') */, resource: this, isRead: true);
            resourceAccessibility.save();
        }
        if (sts) {
            return sts;
        } else {
            return this.errors;
        }

    }
}
