package linksharing

class LSRDocument extends LSResource{
    String docPath,docContent
    LSRDocument(){
        resourceType='Document'
    }
    static constraints = {
        name()
        description()
        docPath()
        docContent()
        resourceType()
        topic()
        owner()
        reference()
    }

}
