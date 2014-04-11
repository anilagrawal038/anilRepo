package javapkg.groovyColExercise

/**
 * Created by anil on 7/4/14.
 */

//10. Get first, second and last element of Range.
//12. We have a sorted list of alphabets a-z, print all alphabets appearing after j


def range=(1..100);
range.eachWithIndex{ int entry, int i ->
    if(i==0){
        println 'first element of range is :';
        println entry;
    }
    if(i==1){
        println 'second element of range is :';
        println entry;
    }
    if(i==range.size()-1){
        println 'last element of range is :';
        println entry;
    }
}

def alphaRange=('a'..'z');
alphaRange.each {
    if(it>'j'){
        print it;
    }
}