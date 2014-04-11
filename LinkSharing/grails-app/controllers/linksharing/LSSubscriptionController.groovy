package linksharing



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LSSubscriptionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LSSubscription.list(params), model:[LSSubscriptionInstanceCount: LSSubscription.count()]
    }

    def show(LSSubscription LSSubscriptionInstance) {
        respond LSSubscriptionInstance
    }

    def create() {
        respond new LSSubscription(params)
    }

    @Transactional
    def save(LSSubscription LSSubscriptionInstance) {
        if (LSSubscriptionInstance == null) {
            notFound()
            return
        }

        if (LSSubscriptionInstance.hasErrors()) {
            respond LSSubscriptionInstance.errors, view:'create'
            return
        }

        LSSubscriptionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'LSSubscriptionInstance.label', default: 'LSSubscription'), LSSubscriptionInstance.id])
                redirect LSSubscriptionInstance
            }
            '*' { respond LSSubscriptionInstance, [status: CREATED] }
        }
    }

    def edit(LSSubscription LSSubscriptionInstance) {
        respond LSSubscriptionInstance
    }

    @Transactional
    def update(LSSubscription LSSubscriptionInstance) {
        if (LSSubscriptionInstance == null) {
            notFound()
            return
        }

        if (LSSubscriptionInstance.hasErrors()) {
            respond LSSubscriptionInstance.errors, view:'edit'
            return
        }

        LSSubscriptionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LSSubscription.label', default: 'LSSubscription'), LSSubscriptionInstance.id])
                redirect LSSubscriptionInstance
            }
            '*'{ respond LSSubscriptionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LSSubscription LSSubscriptionInstance) {

        if (LSSubscriptionInstance == null) {
            notFound()
            return
        }

        LSSubscriptionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LSSubscription.label', default: 'LSSubscription'), LSSubscriptionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'LSSubscriptionInstance.label', default: 'LSSubscription'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
