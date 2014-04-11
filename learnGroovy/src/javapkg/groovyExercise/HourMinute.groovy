/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javapkg.groovyExercise

/**
 *
 * @author anil
 */
class HourMinute {
    def hours,minutes
    def plus(HourMinute obj){
        return new HourMinute(hours:(obj.hours+hours),minutes:(obj.minutes+minutes))
    }
    def minus(HourMinute obj){
        return new HourMinute(hours:(hours-obj.hours),minutes:(minutes-obj.minutes))
    }
    String toString(){
        return "hours:$hours minutes:$minutes"
    }
    public static void main(String[] args){
        HourMinute time1=new HourMinute(hours:5,minutes:5);
        HourMinute time2=new HourMinute(hours:4,minutes:1);
        println "after addition ${(time1+time2)}"
        println "after subtraction ${(time1-time2)}"
        println "after subtraction ${(time2-time1)}"
    }
}

