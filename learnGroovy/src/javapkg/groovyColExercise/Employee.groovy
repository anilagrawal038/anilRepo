package javapkg.groovyColExercise

/**
 * Created by anil on 7/4/14.
 */
class Employee {
    def name,age,salary;
    String toString(){
        return "Employee[name:$name age:$age salary:$salary]"
    }
    public static void main(String[] args){
        def list=[new Employee(name:'jon',age:55,salary:30000),
                  new Employee(name:'lary',age:23,salary:2000),
                  new Employee(name:'sam',age:43,salary:25000),
                  new Employee(name:'bob',age:35,salary:50000),
                  new Employee(name:'frank',age:28,salary:80000),
                  new Employee(name:'nikol',age:21,salary:11000),
                  new Employee(name:'thomson',age:72,salary:18000),
                  new Employee(name:'cris',age:33,salary:22000),
                  new Employee(name:'rick',age:19,salary:37000),
                  new Employee(name:'tom',age:32,salary:52000)
        ];
        println 'employee with minimum salary is :';
        println list.findAll {it.salary<5000};

        println 'employee with minimum age is :';
        println list.min(){it.age
        };

        println 'employee with maximum age is :';
        println list.max(){it.age
        };

        println 'employee with maximum salary is :';
        println list.max(){it.salary
        };

        println 'all employees names';
        println list*.name;

        println 'age list of employees';
        println list*.age;
        println ((list*.age).getClass());
    }
}

