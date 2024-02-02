import java.util.ArrayList;
import java.util.Random;

import AllAnimals.AllAnimals;
import AllAnimals.Camels;
import AllAnimals.Cats;
import AllAnimals.Dogs;
import AllAnimals.Horses;

public class Program {

    public static final int UNIT = 4;

    public static ArrayList<AllAnimals> pets = new ArrayList<>();
    public static ArrayList<AllAnimals> pack_animals = new ArrayList<>();

    public static void command() {
        System.out.println("Ко мне!");
    }


    public static void init(){

        for(int i = 1;i<UNIT+1;i++)
        {
            switch (new Random().nextInt(2)) {
                case 1:
                    pets.add(new Cats(i, "Manya", "2018-12-12"));                    
                    break;
                case 2:
                    pets.add(new Dogs(i, "Klaus", "2018-12-12"));                    
                    break;
            }
    
            switch (new Random().nextInt(2)) {
                case 1:
                    pack_animals.add(new Horses(i, "Black", "2018-12-12"));
                    break;
                case 2:
                    pack_animals.add(new Camels(i, "Vasya", "2018-12-12"));
                    break;
            }    

        }
        
        
        System.out.println("!!! Pets !!!");
          for (int i = 0; i < pets.size(); i++) {
             System.out.println(pets.get(i).getInfo());                                 
         }  
        
         System.out.println("------------------------");

         System.out.println("!!! Pack_animals !!!");
         for (int i = 0; i < pack_animals.size(); i++) {
             System.out.println(pack_animals.get(i).getInfo());                                 
         }  
           

    }


    

   
  


    public static void main(String[] args) {
        init();     
    }

}

        

    


