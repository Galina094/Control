package AllAnimals;

import java.time.LocalDate;

public class Dogs extends Pets {
    public Dogs(int id, String name, String date_of_birthday) {
        super(id, name, date_of_birthday);
    }

    public void sayVav() {
        System.out.println("Гав-гав!");
    }     
}
