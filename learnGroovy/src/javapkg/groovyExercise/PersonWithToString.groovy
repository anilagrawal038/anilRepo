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
class PersonWithToString extends ExtendedPerson{
	String toString(){
            /$name is a $gender aged $age who lives at $address. He works for $company with employee id $empId and draws $salary $$$$$$$ lots of money !!!!./
        }
        public static void main(String[] args){
            PersonWithToString obj=new PersonWithToString(name:'xyz',age:44,gender:'M',address:'india',empId:876, company:'intelligrape', salary:'unknown')
            println obj
            
            //Changing the same within extendedPerson class
            
            ExtendedPerson.metaClass.toString={
                println it+"-----"
                / Mr\/Ms $gender $name is a $gender aged $age who lives at $address. He works for $company with employee id $empId and draws $salary $$$$$$$ lots of money !!!!./
            }
            ExtendedPerson o=new ExtendedPerson(name:'chota bheem',age:77,gender:'M',address:'india',empId:876, company:'intelligrape', salary:'unknown')
            println o.toString()
            
        }
}

