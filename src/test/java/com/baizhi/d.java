package com.baizhi;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class d {

    @Test
    void contextLoads() {
        System.out.println("========");
        int a = 2147483646;
        a=a+3;
        System.out.println(a);
        //-2147483647
    }

}
