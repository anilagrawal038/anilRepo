/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javapkg.groovyColExercise

/*
6. Consider the following list:
[1, 2, 3, "element1", 0.3, [2, 4, 6], 0..10 ]
Print the class name of each element. What's the output of the following statement?
list.get(6).get(9)
*/

def list=[1, 2, 3, "element1", 0.3, [2, 4, 6], 0..10 ];
list.each(){
    println it.class;
}
println list.get(6).get(9);
