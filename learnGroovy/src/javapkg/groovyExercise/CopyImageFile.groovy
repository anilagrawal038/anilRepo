/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javapkg.groovyExercise

def dirPath="/home/anil/Images/1557690_714528385265095_3521414161723419104_n.jpg"; //System.console().readLine('Enter the path of Directory :');
def file=new File(dirPath);
def newFile=new File("/home/anil/Desktop/anil/Boot Camp Excercises/Image Copy.jpg");
newFile.createNewFile();
newFile.append(file.getBytes());
//newFile.deleteOnExit();