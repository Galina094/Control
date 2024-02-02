package AllAnimals;

import java.time.LocalDate;
   
public abstract class Pack_Animals extends AllAnimals {

    
    public Pack_Animals(int id, String name, String date_of_birthday) {
        super(id, name, date_of_birthday);  
     }    

    public void go() {
        System.out.println("Идти вперед.");
    }    

}
    

