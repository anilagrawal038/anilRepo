package linksharing



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LSResourceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LSResource.list(params), model:[LSResourceInstanceCount: LSResource.count()]
    }

    def show(LSResource LSResourceInstance) {
        respond LSResourceInstance
    }

    def create() {
        respond new LSResource(params)
    }

    @Transactional
    def save(LSResource LSResourceInstance) {
        if (LSResourceInstance == null) {
            notFound()
            return
        }

        if (LSResourceInstance.hasErrors()) {
            respond LSResourceInstance.errors, view:'create'
            return
        }

        LSResourceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'LSResourceInstance.label', default: 'LSResource'), LSResourceInstance.id])
                redirect LSResourceInstance
            }
            '*' { respond LSResourceInstance, [status: CREATED] }
        }
    }

    def edit(LSResource LSResourceInstance) {
        respond LSResourceInstance
    }

    @Transactional
    def update(LSResource LSResourceInstance) {
        if (LSResourceInstance == null) {
            notFound()
            return
        }

        if (LSResourceInstance.hasErrors()) {
            respond LSResourceInstance.errors, view:'edit'
            return
        }

        LSResourceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LSResource.label', default: 'LSResource'), LSResourceInstance.id])
                redirect LSResourceInstance
            }
            '*'{ respond LSResourceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LSResource LSResourceInstance) {

        if (LSResourceInstance == null) {
            notFound()
            return
        }

        LSResourceInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LSResource.label', default: 'LSResource'), LSResourceInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'LSResourceInstance.label', default: 'LSResource'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
