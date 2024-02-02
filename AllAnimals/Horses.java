package AllAnimals;

import java.time.LocalDate;

public class Horses extends Pack_Animals{

    public Horses(int id, String name, String date_of_birthday) {
        super(id, name, date_of_birthday);
    }

    public void sayIgogo() {
        System.out.println("И-го-го");
    }   
    
}
