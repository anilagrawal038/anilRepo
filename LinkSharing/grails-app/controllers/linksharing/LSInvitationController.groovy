package linksharing



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LSInvitationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LSInvitation.list(params), model:[LSInvitationInstanceCount: LSInvitation.count()]
    }

    def show(LSInvitation LSInvitationInstance) {
        respond LSInvitationInstance
    }

    def create() {
        respond new LSInvitation(params)
    }

    @Transactional
    def save(LSInvitation LSInvitationInstance) {
        if (LSInvitationInstance == null) {
            notFound()
            return
        }

        if (LSInvitationInstance.hasErrors()) {
            respond LSInvitationInstance.errors, view:'create'
            return
        }

        LSInvitationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'LSInvitationInstance.label', default: 'LSInvitation'), LSInvitationInstance.id])
                redirect LSInvitationInstance
            }
            '*' { respond LSInvitationInstance, [status: CREATED] }
        }
    }

    def edit(LSInvitation LSInvitationInstance) {
        respond LSInvitationInstance
    }

    @Transactional
    def update(LSInvitation LSInvitationInstance) {
        if (LSInvitationInstance == null) {
            notFound()
            return
        }

        if (LSInvitationInstance.hasErrors()) {
            respond LSInvitationInstance.errors, view:'edit'
            return
        }

        LSInvitationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LSInvitation.label', default: 'LSInvitation'), LSInvitationInstance.id])
                redirect LSInvitationInstance
            }
            '*'{ respond LSInvitationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LSInvitation LSInvitationInstance) {

        if (LSInvitationInstance == null) {
            notFound()
            return
        }

        LSInvitationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LSInvitation.label', default: 'LSInvitation'), LSInvitationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'LSInvitationInstance.label', default: 'LSInvitation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
