/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javapkg.groovyExercise

def closer={list,val2->
    println "Is value:$val2 exist in given List:$list => ${list.contains(val2)}"
}
def list=(1..9);
closer(list,22);

