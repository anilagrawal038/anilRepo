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
def printOneSidedPyramid(height){
    (0..<height).each(){it->
        (0..(2*it)).each(){
            print '*'
        }
        println ''
    }
}
def printOneSidedPyramidWithDoubleWidthRow(height){
    def width=-1;
    (0..<height).each(){it->
        if (it==0){
            width=1;
        }else{
            width=width*2;
        }
        (0..<width).each(){
            print '*'
        }
        println ''
    }
}
def printOneSidedPyramidWithFor(height){
    for(int i=0;i<height;i++){
        for(int j=0;j<=i*2;j++){
            print '*'
        }
        println ''
    }
}
def printPyramidWithFor(height){
    int indx=-1;
    for(int i=0;i<height;i++){
        indx=height-i-1;
        for(int j=0;j<(2*height-1);j++){
            if(j<indx){
                print ' ';
            }
            if(j>=indx && j<=(2*i+indx)){
                print '*';
            }
        }
        println '';
    }
}
printOneSidedPyramidWithDoubleWidthRow(8)
