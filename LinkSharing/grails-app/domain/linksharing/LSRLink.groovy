package linksharing

class LSRLink extends LSResource{
    String linkPath
    LSRLink(){
        resourceType='Link'
    }
    static constraints = {
        name()
        description()
        linkPath()
        resourceType()
        topic()
        owner()
        reference()
    }

}
