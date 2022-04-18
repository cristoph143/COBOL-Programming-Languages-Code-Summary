//PROCEDURE DIVISION
public class sample{ //PROGRAM ID. sample.
    //MAIN-DIVISION
    public static void main(String[] args){ //100-MAIN
        System.out.println("Hello..."); //DISPLAY "Hello..."
        print1(); // PERFORM 200-SUB
        print2(); // PERFORM 300-SUB
        return; // GOBACK
    }
    //Can Compared to 100-MAIN.
    static void print0(){
        print1(); // PERFORM 200-SUB
        print2(); // PERFORM 300-SUB
        return; // GOBACK
    }
    //Can Compared to 200-SUB.
    static void print1(){
        System.out.println("...World!"); //DISPLAY "...World"
    }
    //Can Compared to 300-SUB.
    static void print2(){
        System.out.println("...PHILIPPINES"); //DISPLAY "...PHILIPPINES"
    }
    //END PROGRAM sample
}