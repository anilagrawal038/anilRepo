package javapkg.groovyColExercise

//11. Print the table of a given number : 2 and 12


println 'Printing table of 3, Method : 1';
def rangeNo=(1..10);
rangeNo.each(){
    println it*3;
}

println 'Printing table of 3, Method : 2'
for(i in rangeNo){
    println i*3;
}

println 'Printing table of 3, Method : 3'
def no=3;
while(no<=30){
    println no;
    no+=3;
}


println 'Printing table of 12, Method : 1';
rangeNo.each(){
    println it*12;
}

println 'Printing table of 12, Method : 2'
for(i in rangeNo){
    println i*12;
}

println 'Printing table of 12, Method : 3'
def n=12;
while(n<=120){
    println n;
    n+=12;
}