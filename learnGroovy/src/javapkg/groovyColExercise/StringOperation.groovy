package javapkg.groovyColExercise

/*
9. Consider the following piece of code:
String s = "this string needs to be split"
println s.tokenize(" ")
println s.tokenize()


Compare this with the following code:
String s = "this string needs to be split"
println s.split(" ")
println s.split(/\s/) (Try Same Parameter with tokenize)

Also try the following exercise:
String s = "are.you.trying.to.split.me.mister?"
s.tokenize(".")
s.split(".")
*/


String s = "this string needs to be split";
println s.tokenize(" ");
println s.tokenize();



String str = "this string needs to be split";
println str.split(" ");
println str.split(/\s/);//(Try Same Parameter with tokenize)


String sr = "are.you.trying.to.split.me.mister?";
println sr.tokenize(".");
println sr.split(".");
println sr.split("\\.");