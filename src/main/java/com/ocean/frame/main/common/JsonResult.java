package com.ocean.frame.main.common;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;

public class JsonResult<T> {
    
    private static SerializerFeature[] features = {SerializerFeature.WriteNullNumberAsZero, 
        SerializerFeature.WriteNullStringAsEmpty, SerializerFeature.DisableCircularReferenceDetect};  
    
    T result;
    
    int ret;
    
    JsonResult(){
        this.ret = 0;
    }

   JsonResult(T result){
       
       this.result = result;
   }

    @Override
    public String toString() {

        return JSONObject.toJSONString(this, features).toString();
    }

}
