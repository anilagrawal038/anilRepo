/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javapkg.groovyExercise

def dirPath="/home/anil/Desktop/anil/Boot Camp Excercises/Groovy Collections - Exercise.txt"; //System.console().readLine('Enter the path of Directory :');
def file=new File(dirPath);
def newFile=new File("/home/anil/Desktop/anil/Boot Camp Excercises/File With Odd Lines.txt");
newFile.write('');
file.eachLine(){
    line,lineNo->
    if(lineNo%2){
        //println "$lineNo $line"
        newFile.append("$lineNo $line \n");
    }
}
println newFile.text;
newFile.deleteOnExit();