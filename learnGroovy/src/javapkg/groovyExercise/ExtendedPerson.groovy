/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javapkg.groovyExercise

/**
 *
 * @author anil
 */
class ExtendedPerson extends Person{
    def  empId, company, salary;
    public static void main(String[] args){
        ExtendedPerson exPer=new ExtendedPerson(name:'xyz',age:44,gender:'M',address:'india',empId:876, company:'intelligrape', salary:'unknown')
        println "name:$exPer.name age:${exPer.getAge()} gender:${exPer.gender} address:$exPer.address empID:$exPer.empId company:${exPer.getCompany()} salary:${exPer.@salary}"
        //note ${exPer.@gender} can't be used, b/c gender is member of java class Person
    }
}

