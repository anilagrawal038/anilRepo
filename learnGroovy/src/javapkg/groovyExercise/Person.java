/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javapkg.groovyExercise;

/**
 *
 * @author anil
 */
public class Person {

    private String name;
    private int age;
    private char gender;
    private String address;

    Person() {
    }

    Person(String name, int age, char gender, String address) {
        this.name = name;
        this.address = address;
        this.age = age;
        this.gender = gender;
    }

    public static void main(String[] args) {
        Person per = new Person("xyz", 44, 'M', "india");
        System.out.println("name:" + per.getName() + " age:" + per.getAge() + " gender:" + per.getGender() + " address:" + per.getAddress());
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the age
     */
    public int getAge() {
        return age;
    }

    /**
     * @param age the age to set
     */
    public void setAge(int age) {
        this.age = age;
    }

    /**
     * @return the gender
     */
    public char getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(char gender) {
        this.gender = gender;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }
}
