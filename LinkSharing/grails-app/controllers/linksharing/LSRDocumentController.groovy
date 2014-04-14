package linksharing



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LSRDocumentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    //LSCommonController commonController = new LSCommonController()

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LSRDocument.list(params), model:[LSRDocumentInstanceCount: LSRDocument.count()]
    }

    def show(LSRDocument LSRDocumentInstance) {
        respond LSRDocumentInstance
    }

    def create() {
        respond new LSRDocument(params)
    }

    @Transactional
    def save(LSRDocument LSRDocumentInstance) {
        if (LSRDocumentInstance == null) {
            notFound()
            return
        }

        if (LSRDocumentInstance.hasErrors()) {
            respond LSRDocumentInstance.errors, view:'create'
            return
        }

        LSRDocumentInstance.customSave flush:true
  /*      //commonController.params.id = ...
        commonController.params.doNotRedirect = 'true'
        commonController.onSaveResource(LSRDocumentInstance);*/

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'LSRDocumentInstance.label', default: 'LSRDocument'), LSRDocumentInstance.id])
                redirect LSRDocumentInstance
            }
            '*' { respond LSRDocumentInstance, [status: CREATED] }
        }
    }

    def edit(LSRDocument LSRDocumentInstance) {
        respond LSRDocumentInstance
    }

    @Transactional
    def update(LSRDocument LSRDocumentInstance) {
        if (LSRDocumentInstance == null) {
            notFound()
            return
        }

        if (LSRDocumentInstance.hasErrors()) {
            respond LSRDocumentInstance.errors, view:'edit'
            return
        }

        LSRDocumentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LSRDocument.label', default: 'LSRDocument'), LSRDocumentInstance.id])
                redirect LSRDocumentInstance
            }
            '*'{ respond LSRDocumentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LSRDocument LSRDocumentInstance) {

        if (LSRDocumentInstance == null) {
            notFound()
            return
        }

        LSRDocumentInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LSRDocument.label', default: 'LSRDocument'), LSRDocumentInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'LSRDocumentInstance.label', default: 'LSRDocument'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
