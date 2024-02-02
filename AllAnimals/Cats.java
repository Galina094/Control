package AllAnimals;

import java.time.LocalDate;

public class Cats extends Pets { 

    public Cats(int id, String name, String date_of_birthday) {
        super(id, name, date_of_birthday);
    }

    public void sayMeow() {
        System.out.println("Мяу!");
    }
    

    
}
