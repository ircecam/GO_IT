package org.classes;

public class SumCalculator {
    public int sum(int n) throws IllegalArgumentException{
        int sum = 0;
        if(!isNumberValid(n)){
            throw new IllegalArgumentException("Number is invalid");
        }
        for(int i = 1; i <= n; i++){
            sum += i;
        }
        return sum;
    }
    private static boolean isNumberValid(int n){
        return n >= 1;
    }
}
