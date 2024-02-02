package AllAnimals;

import java.time.LocalDate;

public abstract class Pets extends AllAnimals {

    
    public Pets(int id, String name, String date_of_birthday) {
        super(id, name, date_of_birthday);  
     }      

    public void jump() {
        System.out.println("Прыг-скок!");
    }   
   

}