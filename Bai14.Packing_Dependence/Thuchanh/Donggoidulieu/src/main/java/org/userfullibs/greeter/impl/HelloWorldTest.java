package org.userfullibs.greeter.impl;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class HelloWorldTest {
    @Test
    public void testGreet() {
        Greeter greeter = new HelloWorld();
        String actual = greeter.greet();
        String expected = "Hello world!";
        assertEquals(expected, actual);
    }
}
