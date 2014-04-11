/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javapkg.groovyColExercise

//2. Create a set from a list containing duplicate elements. What do you observe? How can you achieve the same result without converting a list to a set?

def list=[3,4,8,3,4,9,0,1,9];
println list;
def set=list as Set;
println 'After converting the list to Set '
println set;
println 'unique list '
println list.unique();
