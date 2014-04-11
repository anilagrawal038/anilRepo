package testgrails

import grails.transaction.Transactional

@Transactional
class TestService {

    def serviceMethod() {

    }

    def add(num1, num2) {
        return num1 + num2;
    }

    def subtract(num1, num2) {
        return num1 + num2;
    }

    def multiply(num1, num2) {
        return num1 + num2;
    }

    def divide(num1, num2) {
        return num1 + num2;
    }

    def modulo(num1, num2) {
        return num1 + num2;
    }
}
