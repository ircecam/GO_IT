package org.example;

public class Fibonachi {
    /**
     * Обчислює n-те число Фібоначчі за допомогою динамічного програмування.
     * Часова складність:
     * O(n), оскільки цикл виконується n - 1 разів.
     * Просторова складність:
     * O(n), оскільки масив розміром n + 1 зберігає всі значення чисел Фібоначчі до n-го.
     */
    public static int fibonacciDynamic(int n) {
        int[] steps = new int[n + 1];
        steps[0] = 0;
        steps[1] = 1;

        for (int i = 2; i <= n; i++) {
            steps[i] = steps[i - 1] + steps[i - 2];
        }
        return steps[n];
    }

    /**
     * Обчислює n-те число Фібоначчі рекурсивно.
     * Часова складність:
     * O(2^n), оскільки кожен рекурсивний виклик породжує два нових, що призводить до експоненційного зростання.
     * Просторова складність:
     * O(n), оскільки максимальна глибина рекурсивного стека викликів складає n.
     */
    public static int fibonacciRecursive(int n) {
        if (n == 0) {
            return 0;
        }
        if (n == 1) {
            return 1;
        }
        return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2);
    }

    /**
     * Обчислює n-те число Фібоначчі за допомогою ітерації.
     * Часова складність:
     * O(n), оскільки один цикл виконується n - 1 разів.
     * Просторова складність:
     * O(1), оскільки використовується фіксована кількість змінних для збереження результату.
     */
    public static int fibonacciIterative(int n) {
        if (n == 0) {
            return 0;
        }
        if (n == 1) {
            return 1;
        }
        int x = 0;
        int y = 1;
        for (int i = 2; i <= n; i++) {
            int temp = y;
            y = x + y;
            x = temp;
        }
        return y;
    }
}
