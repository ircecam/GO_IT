package org.example;


import java.util.Scanner;

public class Main {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        menuBar();
    }
    public static void menuBar(){
        int choice = 1;
        int n = -1;
        while(choice > 0){
            System.out.println("1 - Dynamic \n" +
                    "2 - Iterative \n" +
                    "3 - Recursive \n" +
                    "Else - exit \n" +
                    "Your choice: ");
            choice = sc.nextInt();
            n = getN();
            switch (choice){
                case 1:
                    System.out.println(Fibonachi.fibonacciDynamic(n)); break;
                case 2:
                    System.out.println(Fibonachi.fibonacciIterative(n)); break;
                case 3:
                    System.out.println(Fibonachi.fibonacciRecursive(n)); break;
                default: choice = -1; break;
            }
        }
    }
    public static int getN(){
        int n = -1;
        while(n < 0){
            System.out.println("Print n: ");
            n = sc.nextInt();
            if(n < 0){
                System.out.println("Invalid input");
            }
        }
        return n;
    }
}
