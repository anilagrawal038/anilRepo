/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javapkg.groovyColExercise
//1. Initialize a list using a range and find all elements which are even.
def rangeList=(1..50);
rangeList.each(){
    if(!(it%2)){
        println it;
    }
        
}
