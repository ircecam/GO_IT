package mavenExample;

import classes.Person;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class Main {
    public static void main(String[] args) {
        Person person = new Person("Yaroslava","Khrabrova");
        Gson gson = new GsonBuilder().setPrettyPrinting().create();
        String jsonString = gson.toJson(person);
        System.out.println(jsonString);
    }
}
