package com.hstn.spring.mvc_hibernate_aop.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class MyLoggingAspect {

    @Around("execution( * com.hstn.spring.mvc_hibernate_aop.dao.*.* (..) )")
    public Object aroundAllRepositoryMethodsAdvice(ProceedingJoinPoint pjp) throws Throwable {

        MethodSignature signature = (MethodSignature) pjp.getSignature();

        String methodName = signature.getMethod().getName();

        System.out.println("Begin of method: " + methodName);
        Object proceed = pjp.proceed();
        System.out.println("End of method: " + methodName);

        return proceed;
    }

}
