<<<<<<< HEAD
package simpletest;

//枚举， 1、用做常量，增强可读性，2、规定集合内容，保证安全
public enum TestEnum {

    a(1,"bac");
    
    private int keys;
    private String values;
    
    TestEnum(int keys, String values){
        
        this.keys = keys;
        this.values = values;
        
    }

    public int getKeys() {
        return keys;
    }

    public void setKeys(int keys) {
        this.keys = keys;
    }

    public String getValues() {
        return values;
    }

    public void setValues(String values) {
        this.values = values;
    }
    
}
=======
package simpletest;

//枚举， 1、用做常量，增强可读性，2、规定集合内容，保证安全
public enum TestEnum {

    a(1,"bac");
    
    private int keys;
    private String values;
    
    TestEnum(int keys, String values){
        
        this.keys = keys;
        this.values = values;
        
    }

    public int getKeys() {
        return keys;
    }

    public void setKeys(int keys) {
        this.keys = keys;
    }

    public String getValues() {
        return values;
    }

    public void setValues(String values) {
        this.values = values;
    }
    
}
>>>>>>> f408f554b21e14547e35d9285de23957fe5c9e99
