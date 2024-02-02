package AllAnimals;

import java.time.LocalDate;

public class Camels extends Pack_Animals{

    public Camels(int id, String name, String date_of_birthday) {
        super(id, name, date_of_birthday);
    }

    public void downCamel() {
        System.out.println("Есть!");
    } 
    
}
