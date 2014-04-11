package javapkg.groovyColExercise

/**
 * Created by anil on 8/4/14.
 */
class Stack {
    def list = [];
    int topIndx = list.size() - 1;

    def push(val) {
        list.add(val);
        topIndx = topIndx + 1;
    }

    def pop() {
        try {
            topIndx = topIndx - 1;
            return list.remove(topIndx + 1);
        } catch (Exception ex) {
            throw new Throwable() {
                String toString() {
                    return 'MyEmptyListException';
                }
            };
        }
    }

    def top() {
        try {
            return list.get(topIndx);
        } catch (Exception ex) {
            throw new Throwable() {
                String toString() {
                    return 'MyEmptyListException';
                }
            };
        }
    }
}
