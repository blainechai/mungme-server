package test;

import org.junit.Test;

import java.io.FileWriter;

/**
 * Created by peterpet on 2016. 9. 7..
 */
public class HashTest {
//    @Autowired
//    UserTableOptionRepository userTableOptionRepository;

    @Test
    public void test1() {
        try {
            FileWriter fw = new FileWriter("pet.txt");

            String result = "";

            for (int i = 0; i <= 11172; i++) {
                char ch = (char) (i + 0xAC00);
                result +=ch+"펫\n";
            }
                System.out.println(result);
            fw.write(result);
            fw.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

//    @Test
//    public void getNames(){
//        System.out.println(userTableOptionRepository.findAll());
//    }

    @Test
    public void test2() {
//        BookInfo bookInfo = new BookInfo("id",)
    }
}
