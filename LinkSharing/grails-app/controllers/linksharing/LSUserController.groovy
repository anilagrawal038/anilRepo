package linksharing



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LSUserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LSUser.list(params), model:[LSUserInstanceCount: LSUser.count()]
    }

    def show(LSUser LSUserInstance) {
        respond LSUserInstance
    }

    def create() {
        respond new LSUser(params)
    }

    @Transactional
    def save(LSUser LSUserInstance) {
        if (LSUserInstance == null) {
            notFound()
            return
        }

        if (LSUserInstance.hasErrors()) {
            respond LSUserInstance.errors, view:'create'
            return
        }

        LSUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'LSUserInstance.label', default: 'LSUser'), LSUserInstance.id])
                redirect LSUserInstance
            }
            '*' { respond LSUserInstance, [status: CREATED] }
        }
    }

    def edit(LSUser LSUserInstance) {
        respond LSUserInstance
    }

    @Transactional
    def update(LSUser LSUserInstance) {
        if (LSUserInstance == null) {
            notFound()
            return
        }

        if (LSUserInstance.hasErrors()) {
            respond LSUserInstance.errors, view:'edit'
            return
        }

        LSUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LSUser.label', default: 'LSUser'), LSUserInstance.id])
                redirect LSUserInstance
            }
            '*'{ respond LSUserInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LSUser LSUserInstance) {

        if (LSUserInstance == null) {
            notFound()
            return
        }

        LSUserInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LSUser.label', default: 'LSUser'), LSUserInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'LSUserInstance.label', default: 'LSUser'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
