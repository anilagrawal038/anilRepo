package linksharing



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LSRLinkController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    //LSCommonController commonController = new LSCommonController()

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LSRLink.list(params), model:[LSRLinkInstanceCount: LSRLink.count()]
    }

    def show(LSRLink LSRLinkInstance) {
        respond LSRLinkInstance
    }

    def create() {
        respond new LSRLink(params)
    }

    @Transactional
    def save(LSRLink LSRLinkInstance) {
        if (LSRLinkInstance == null) {
            notFound()
            return
        }

        if (LSRLinkInstance.hasErrors()) {
            respond LSRLinkInstance.errors, view:'create'
            return
        }

        LSRLinkInstance.customSave flush:true


        /*//commonController.params.id = ...
        commonController.params.doNotRedirect = 'true'
        commonController.onSaveResource(LSRLinkInstance);*/

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'LSRLinkInstance.label', default: 'LSRLink'), LSRLinkInstance.id])
                redirect LSRLinkInstance
            }
            '*' { respond LSRLinkInstance, [status: CREATED] }
        }
    }

    def edit(LSRLink LSRLinkInstance) {
        respond LSRLinkInstance
    }

    @Transactional
    def update(LSRLink LSRLinkInstance) {
        if (LSRLinkInstance == null) {
            notFound()
            return
        }

        if (LSRLinkInstance.hasErrors()) {
            respond LSRLinkInstance.errors, view:'edit'
            return
        }

        LSRLinkInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LSRLink.label', default: 'LSRLink'), LSRLinkInstance.id])
                redirect LSRLinkInstance
            }
            '*'{ respond LSRLinkInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LSRLink LSRLinkInstance) {

        if (LSRLinkInstance == null) {
            notFound()
            return
        }

        LSRLinkInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LSRLink.label', default: 'LSRLink'), LSRLinkInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'LSRLinkInstance.label', default: 'LSRLink'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
