package com.example.jenkins.service;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class ExampleTest {
    Example example;
    @Test
    public void addTest(){
        example = new Example();
        int sum = example.add(5, 10);
        assertEquals(sum,15);

    }
}