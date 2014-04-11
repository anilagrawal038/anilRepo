/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javapkg.groovyColExercise

//3. Given two lists [11, 12, 13, 14] and [13, 14, 15], how would we obtain the list of items from the first that are not in the second?
//4. Find whether two lists have a common element or not
//5. Remove all records from a list whose index is odd

def list1=[18,11, 12, 13, 14];
def list2=[13, 14, 15];

println "list1 : $list1";
println "list2 : $list2";
println 'Subtraction results'
println list1-list2;//minus means values exist in first but not in second

println 'Intersection results, is have any common element :'+(list1.intersect(list2) as boolean)
println list1.intersect(list2);

println "removing all elements having odd indx from list $list1"
def indx=0;
list1.removeAll(){
    ele->
    indx++;
    indx%2>0
}
println 'after removal list is :'+list1;