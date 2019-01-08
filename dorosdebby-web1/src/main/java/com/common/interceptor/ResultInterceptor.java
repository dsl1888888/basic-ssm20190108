package com.common.interceptor;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;
import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ResultInterceptor implements MethodInterceptor
{
    private final static ObjectMapper jsonMapper = new ObjectMapper();

    private static final Logger logger = LoggerFactory.getLogger(ResultInterceptor.class);

    @Override
    public Object invoke(MethodInvocation invocation) throws Throwable
    {
        Object result = invocation.proceed();
        // 随意处理结果吧
        // System.out.println("After: result: "+ jsonMapper.writeValueAsString(result));  

        logger.info(jsonMapper.writeValueAsString(result));
        return result;
    }

}
