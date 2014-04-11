package javapkg.groovyColExercise

/**
 * Created by anil on 8/4/14.
 */

/*
16. Create a new map consisting of 10 of your friend's name's as keys and their ages as value.

17. Iterate over the previous map in as many ways as possible

18. Create a new map by adding two existing maps

19. Try the following code on a map:
println map.class
println map.getClass()
What do you observe?
*/
def map = ['jon': 22, 'sam': 34, 'frank': 32, 'cliff': 31, 'thomson': 44, 'jim': 51, 'larry': 19, 'bob': 21, 'cross': 43, 'jack': 30];

/*
map.each {
    println it.key+" aged "+it.value;
}

map.reverseEach {
    println it.key+" aged "+it.value;
}

map.any {
    println it.key+" aged "+it.value;
}

for(it in map){
    println it.key+" aged "+it.value;
}


map.find(){
    println it.key+" aged "+it.value;
}
*/

// Result variable for storing loop results.
def result = ''
// Closure to fill result variable with value.
def createResult = {
    if (!it) {  // A bit of Groovy truth: it == 0 is false
        result = '0'
    } else {
        result += it
    }
}
// Classic for loop.
for (i = 0; i < 5; i++) {
    createResult(i)
}
assert '01234' == result

// Using int.upto(max).
0.upto(4, createResult)
assert '01234' == result

// Using int.times.
5.times(createResult)
assert '01234' == result

// Using int.step(to, increment).
0.step 5, 1, createResult
assert '01234' == result

// Classic while loop.
def z = 0
while (z < 5) {
    createResult(z)
    z++
}
assert '01234' == result

def list = [0, 1, 2, 3, 4]

// Classic Java for-each loop.
for (int i : list) {
    createResult(i)
}
assert '01234' == result

// Groovy for-each loop.
for (i in list) {
    createResult(i)
}
assert '01234' == result

// Use each method to loop through list values.
list.each(createResult)
assert '01234' == result

// Ranges are lists as well.
(0..4).each(createResult)
assert '01234' == result

// eachWithIndex can be used with closure: first parameter is value, second is index.
result = ''
list.eachWithIndex { listValue, index -> result += "$index$listValue" }
assert '0011223344' == result