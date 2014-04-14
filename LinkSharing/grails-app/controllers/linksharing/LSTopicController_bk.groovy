package linksharing

import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class LSTopicController_bk {
    //LSCommonController commonController = new LSCommonController()


    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LSTopic.list(params), model:[LSTopicInstanceCount: LSTopic.count()]
    }

    def show(LSTopic LSTopicInstance) {
        respond LSTopicInstance
    }

    def create() {
        respond new LSTopic(params);
    }

    @Transactional
    def save(LSTopic LSTopicInstance) {
        if (LSTopicInstance == null) {
            notFound()
            return
        }

        if (LSTopicInstance.hasErrors()) {
            respond LSTopicInstance.errors, view:'create'
            return
        }

        LSTopicInstance.customSave flush:true


        /*//commonController.params.id = ..
        commonController.params.doNotRedirect = 'true'
        commonController.onSaveTopic(LSTopicInstance);*/

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'LSTopicInstance.label', default: 'LSTopic'), LSTopicInstance.id])
                redirect LSTopicInstance
            }
            '*' { respond LSTopicInstance, [status: CREATED] }
        }
    }

    def edit(LSTopic LSTopicInstance) {
        respond LSTopicInstance
    }

    @Transactional
    def update(LSTopic LSTopicInstance) {
        if (LSTopicInstance == null) {
            notFound()
            return
        }

        if (LSTopicInstance.hasErrors()) {
            respond LSTopicInstance.errors, view:'edit'
            return
        }

        LSTopicInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LSTopic.label', default: 'LSTopic'), LSTopicInstance.id])
                redirect LSTopicInstance
            }
            '*'{ respond LSTopicInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LSTopic LSTopicInstance) {

        if (LSTopicInstance == null) {
            notFound()
            return
        }

        LSTopicInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LSTopic.label', default: 'LSTopic'), LSTopicInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'LSTopicInstance.label', default: 'LSTopic'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
