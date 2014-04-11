package linksharing



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LSResourceAccessibilityController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LSResourceAccessibility.list(params), model:[LSResourceAccessibilityInstanceCount: LSResourceAccessibility.count()]
    }

    def show(LSResourceAccessibility LSResourceAccessibilityInstance) {
        respond LSResourceAccessibilityInstance
    }

    def create() {
        respond new LSResourceAccessibility(params)
    }

    @Transactional
    def save(LSResourceAccessibility LSResourceAccessibilityInstance) {
        if (LSResourceAccessibilityInstance == null) {
            notFound()
            return
        }

        if (LSResourceAccessibilityInstance.hasErrors()) {
            respond LSResourceAccessibilityInstance.errors, view:'create'
            return
        }

        LSResourceAccessibilityInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'LSResourceAccessibilityInstance.label', default: 'LSResourceAccessibility'), LSResourceAccessibilityInstance.id])
                redirect LSResourceAccessibilityInstance
            }
            '*' { respond LSResourceAccessibilityInstance, [status: CREATED] }
        }
    }

    def edit(LSResourceAccessibility LSResourceAccessibilityInstance) {
        respond LSResourceAccessibilityInstance
    }

    @Transactional
    def update(LSResourceAccessibility LSResourceAccessibilityInstance) {
        if (LSResourceAccessibilityInstance == null) {
            notFound()
            return
        }

        if (LSResourceAccessibilityInstance.hasErrors()) {
            respond LSResourceAccessibilityInstance.errors, view:'edit'
            return
        }

        LSResourceAccessibilityInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LSResourceAccessibility.label', default: 'LSResourceAccessibility'), LSResourceAccessibilityInstance.id])
                redirect LSResourceAccessibilityInstance
            }
            '*'{ respond LSResourceAccessibilityInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LSResourceAccessibility LSResourceAccessibilityInstance) {

        if (LSResourceAccessibilityInstance == null) {
            notFound()
            return
        }

        LSResourceAccessibilityInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LSResourceAccessibility.label', default: 'LSResourceAccessibility'), LSResourceAccessibilityInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'LSResourceAccessibilityInstance.label', default: 'LSResourceAccessibility'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
