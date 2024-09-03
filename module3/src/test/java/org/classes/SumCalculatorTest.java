package org.classes;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;


class SumCalculatorTest {
    private SumCalculator calculator;

    @BeforeEach
    public void beforeEach(){
        calculator = new SumCalculator();
    }

    @Test
    public void testSumWithOne() {
        int actual = calculator.sum(1);

        int expected = 1;

        Assertions.assertEquals(expected,actual);
    }
    @Test
    public void testSumWithSix() {
        int actual = calculator.sum(3);

        int expected = 6;

        Assertions.assertEquals(expected,actual);
    }
    @Test
    public void testSumWithException() {
        Assertions.assertThrows(IllegalArgumentException.class, () -> calculator.sum(0));
    }
}