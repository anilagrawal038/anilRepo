package javapkg.groovyColExercise

/**
 * Created by anil on 7/4/14.
 */

//14. Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print "FizzBuzz".
def range=(1..100);
range.each {
    if(!(it%3)&&!(it%5)){
        println 'FIZZBUZZ';
    }else if(!(it%3)){
        println 'FIZZ';
    }else if(!(it%5)){
        println 'BUZZ';
    }else{
        println it;
    }
}