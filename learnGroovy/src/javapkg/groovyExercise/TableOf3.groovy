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
class TableOf3 {
    public static void main(String[] args){
        println 'Printing table of 3, Method : 1';
        def rangeNo=(1..10);
        rangeNo.each(){
            println it*3;
        }
        
        println 'Printing table of 3, Method : 2'
        for(i in rangeNo){
            println i*3;
        }
        
        println 'Printing table of 3, Method : 3'
        def no=3;
        while(no<=30){
            println no;
            no+=3;
        }
    }
	
}

