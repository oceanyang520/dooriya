package dooriya;

import java.util.Date;

public class test {
    public static void main(String[] args) {
        long start = System.currentTimeMillis();
        for (int i = 0; i < 100; i++) {
            Date date = new Date();
            long time = date.getTime();
            System.out.println( String.valueOf(time) );
        }
        long end = System.currentTimeMillis();
        System.out.println(start+"@"+end);
        long finalT =end-start;
        System.out.println(finalT);
    }
    
}
