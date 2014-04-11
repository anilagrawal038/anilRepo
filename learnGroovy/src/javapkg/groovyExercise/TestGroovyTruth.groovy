/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javapkg.groovyExercise

def name='anil'

if('test') { 
    println "'test' evaluated to true inside if" 
}else{
    println "'test' evaluated to false inside if"
}
if(name) { 
    println "non empty string var evaluated to true inside if" 
}else{
    println "non empty string var evaluated to false inside if"
}
name=null
if(name) { 
    println "null string var evaluated to true inside if" 
}else{
    println "null string var evaluated to false inside if"
}
name=''
if(name) { 
    println "empty string var evaluated to true inside if" 
}else{
    println "empty string var evaluated to false inside if"
}
name='null'
if('null') { 
    println "'null' evaluated to true inside if" 
}else{
    println "'null' evaluated to false inside if"
}
if(100) { 
    println "100 evaluated to true inside if" 
}else{
    println "100 evaluated to false inside if"
}
if(0) { 
    println "0 evaluated to true inside if" 
}else{
    println "0 evaluated to false inside if"
}
def list=['abcd']
if(list) { 
    println "non empty list var evaluated to true inside if" 
}else{
    println "non empty list var evaluated to false inside if"
}
list=[]
if(list) { 
    println "empty list var evaluated to true inside if" 
}else{
    println "empty list var evaluated to false inside if"
}
list=null
if(list) {
    println "null list var evaluated to true inside if" 
}else{
    println "null list var evaluated to false inside if"
}
list=[null]
if(list) {
    println "list var with null value evaluated to true inside if" 
}else{
    println "list var with null value evaluated to false inside if"
}