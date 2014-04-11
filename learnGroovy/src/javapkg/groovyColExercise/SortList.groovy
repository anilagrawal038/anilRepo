/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javapkg.groovyColExercise

/*
7. Sort the given list in descending order having distinct elements:
[14,12, 11,10, 16, 15,12, 10, 99, 90, 14, 16, 35]
*/
def list =[14,12, 11,10, 16, 15,12, 10, 99, 90, 14, 16, 35];
list.unique();
list.sort();//will sort in asc order
list=list.reverse();//will sort in desc order
println list;
