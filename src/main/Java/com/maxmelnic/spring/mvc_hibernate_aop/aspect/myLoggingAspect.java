package com.maxmelnic.spring.mvc_hibernate_aop.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class myLoggingAspect {

    @Around("execution(* com.maxmelnic.spring.mvc_hibernate_aop.service.*.*(..))")
            public Object myLoggingAspect(ProceedingJoinPoint pjp) throws Throwable {
        MethodSignature methodSignature = (MethodSignature) pjp.getSignature();
        String methodName = methodSignature.getName();
        System.out.println("Begin of method: " + methodName);
        Object result = pjp.proceed();
        System.out.println("End of method: " + methodName);
        return result;

    }





}
