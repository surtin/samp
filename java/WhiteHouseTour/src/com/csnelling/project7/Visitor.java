package com.csnelling.project7;

/**
 * Created by Chris on 3/16/14.
 */

public class Visitor {
    // variables
    private String name;
    private char gender;
    private String age;
    private String nationality;
    private int current_room;

    // constructor
    public Visitor(String theName, char theGender, String theAge, String theCitizenship) {
        name = theName;
        gender = theGender;
        age = theAge;
        nationality = theCitizenship;

        // for current room
        current_room = 0;
    }

    // getters
    public String getName() {
        return name;
    }

    public String getAge() {
        return age;
    }

    public char getGender() {
        return gender;
    }

    public String getCitizenship() {
        return nationality;
    }

    public void next_room() {
        if (current_room <= 6) {
            current_room++;
        }
    }

    //fixme name_citizenship return string
    public name_citizenship() {
        return format("%20-s %-15s\n", name, theCitizenship);
    }

    public String toString() {
        return format("%-20s %-15s %-d\n", name, citizenship, current_room);
    }
}
