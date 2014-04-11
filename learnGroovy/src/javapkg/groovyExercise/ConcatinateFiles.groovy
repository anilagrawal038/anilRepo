/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javapkg.groovyExercise

def dirPath="/home/anil/Desktop/anil/Boot Camp Excercises"; //System.console().readLine('Enter the path of Directory :');
def dir=new File(dirPath);
println dir.absolutePath;
println 'Is given path represent a Directory :'+dir.isDirectory();
if(!dir.isDirectory()){
    System.exit(0);
}
def newFile=new File(dirPath+"/CombinedFile.txt");
newFile.write('');
dir.eachFile(){
    file->
    newFile.text=file.text+newFile.text;
}
println newFile.text;
newFile.deleteOnExit();
