package helpers;

/**
 *
 * @author nad
 */
public class StringSlasher {
    public void sqlSlasher (String sql){
        char arr [] = sql.toCharArray();
        String strarr [] = sql.split(" ");
        /*for (int i = 0; i< arr.length; i++){
            //System.out.print(arr[i]);
            if (arr[i] == '\''){
                 System.out.print("\\");
                 System.out.print(arr[i]);
            }
            else {
                System.out.print(arr[i]);
            }
            System.out.print("");
        }*/
        
        for (int i = 0 ; i< strarr.length ; i++){
            System.out.print(""+strarr[i]);
        }
    }
    
    public static void main(String args[]){
        StringSlasher slash = new StringSlasher();
        String sql = "Hi Nadiah ";
        slash.sqlSlasher(sql);
    }
    
}
