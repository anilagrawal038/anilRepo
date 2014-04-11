package javapkg.groovyColExercise

/**
 * Created by anil on 8/4/14.
 */

/*
15. Consider a class named "Stack" that holds a list of objects and has the following operations associated:
1) POP - Pops the last element off the stack
2) PUSH - Pushes an element on top of the stack
3) TOP - Returns the element at the top of the list
*/
Stack stack = new Stack();
//println stack.top();
stack.push("abc");
stack.push('bcd');
stack.push('weee');
println stack.top();
println stack.top();
println stack.pop();
println stack.pop();
