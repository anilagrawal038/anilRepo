package com.test

import grails.converters.XML

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserDomainController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UserDomain.list(params), model: [userDomainInstanceCount: UserDomain.count()]
    }

    def show(UserDomain userDomainInstance) {
        respond userDomainInstance
    }

    def show={
        println "inside show------------------------"
        if(params.id && UserDomain.exists(params.id as long)){
            render UserDomain.findById(params.id as long) as XML
        }else{
            render UserDomain.list() as XML
        }
    }

    def save = {
        println "inside save------------------------"
        def user = new UserDomain(params['userDomain'])

        if(user.save()){
            render user as XML
        }else{
            //handle errors...
            render "<e>some error</e>" as XML
        }
    }
    def update={
        println "inside update------------------------"
        render "<a>some error while updating</a>" as XML
    }
    def remove={
        println "inside remove------------------------"
        render UserDomain.findById(1) as XML
    }

    def create() {
        respond new UserDomain(params)
    }

    @Transactional
    def save(UserDomain userDomainInstance) {
        if (userDomainInstance == null) {
            notFound()
            return
        }

        if (userDomainInstance.hasErrors()) {
            respond userDomainInstance.errors, view: 'create'
            return
        }

        userDomainInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'userDomainInstance.label', default: 'UserDomain'), userDomainInstance.id])
                redirect userDomainInstance
            }
            '*' { respond userDomainInstance, [status: CREATED] }
        }
    }

    def edit(UserDomain userDomainInstance) {
        respond userDomainInstance
    }

    @Transactional
    def update(UserDomain userDomainInstance) {
        if (userDomainInstance == null) {
            notFound()
            return
        }

        if (userDomainInstance.hasErrors()) {
            respond userDomainInstance.errors, view: 'edit'
            return
        }

        userDomainInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UserDomain.label', default: 'UserDomain'), userDomainInstance.id])
                redirect userDomainInstance
            }
            '*' { respond userDomainInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UserDomain userDomainInstance) {

        if (userDomainInstance == null) {
            notFound()
            return
        }

        userDomainInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UserDomain.label', default: 'UserDomain'), userDomainInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userDomainInstance.label', default: 'UserDomain'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
