package linksharing

class LSResourceAccessibility {
    LSResource resource
    LSUser user
    boolean isRead

    static constraints = {
        resource()
        user()
        isRead()
    }
}
