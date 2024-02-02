package AllAnimals;

import java.time.LocalDate;

public abstract class AllAnimals {

    protected int id;
    protected String name;
    protected String date_of_birthday;

    public AllAnimals(int id, String name, String date_of_birthday) {

        this.id = id;
        this.name = name;
        this.date_of_birthday = date_of_birthday;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate_of_birthday() {
        return date_of_birthday;
    }

    public void setDate_of_birthday(String date_of_birthday) {
        this.date_of_birthday = date_of_birthday;
    }

   
    public String getInfo(){
        return String.format(" Id: %d, Name: %s, Birthdsy: %s" ,   
                                      this.id, this.name, this.date_of_birthday);
    }
    

}