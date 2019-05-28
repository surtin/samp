package com.csnelling.project7;

public class Room {
    // instance variables
    private String name;
    private String description;

    // constructor
    public Room(String theName, String theDescription) {
        name = theName;
        description = theDescription;
    }

    // getters
    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    // ruby to_s equivalent
    public String toString() {
        return "The " + name + "\n" +
                description;
    }
}
