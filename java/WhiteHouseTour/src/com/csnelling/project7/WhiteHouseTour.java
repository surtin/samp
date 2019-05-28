package com.csnelling.project7;

import java.util.Random;
import java.util.Vector;

public class WhiteHouseTour {
    // variables
    private String rooms;
    private String visitors;
    int current_time;
    int num_visitors;

    int current_time() { return current_time; }
    int num_visitors() { return num_visitors; }

    public static void main(String[] args) {

    }

    public WhiteHouseTour() {

        Vector<Room> rooms = new Vector<Room>();
        num_visitors = 0;
        current_time = 540;

        rooms.add(new Room("Entrance Hall",
                "This room (also called the Grand Foyer) is the \n" +
                "primary and formal entrance to the White House. The room \n" +
                "is rectilinear in shape and measures approximately 31 by \n" +
                "44 feet. Located on the State Floor, the room is entered \n" +
                "from outdoors through the North Portico, which faces the \n" +
                "North Lawn and Pennsylvania Avenue. The south side of \n" +
                "the room opens to the Cross Hall through a screen of \n" +
                "paired Roman Doric columns. The east wall opens to the \n" +
                "Grand Staircase."));

        rooms.add(new Room("Cross Hall",
                "This hall connects the first floor in the White House. \n" +
                "It runs east to west connecting the State Dining Room with \n" +
                "the East Room. The room is used for receiving lines \n" +
                "following a State Arrival Ceremony on the South Lawn, \n" +
                "or a procession of the President and a visiting head of \n" +
                "state and their spouses.  The space measures just under \n" +
                "18 by 80 feet (5.5 by 24 m). It allows access to the \n" +
                "elevator vestibule, Entrance Hall,East Room, Blue Room, \n" +
                "Green Room, Red Room, and State Dining Room. The Grand \n" +
                "Staircase is visible from an opening directly across from\n" +
                "the Green Room."));

        rooms.add(new Room("East Room",
                "This is the largest room in the White House. It is \n" +
                "used for receptions, press conferences, ceremonies, \n" +
                "concerts, and banquets. The room is \"not quite 80 feet\n" +
                "by 37 feet\" and the ceiling is \"over 20 feet high.\"\n" +
                "The White House's oldest possession, the Lansdowne \n" +
                "portrait depicting George Washington, painted by \n" +
                "Gilbert Stuart in 1797, was rescued from the 1814 \n" +
                "fire, and now hangs in the East Room with a companion\n" +
                "portrait of Martha Washington painted by Eliphalet\n" +
                "F. Andrews in 1878."));

        rooms.add(new Room("Green Room",
                "It is one of three state parlors on the first floor \n" +
                "in the White House, It is used for small receptions and\n" +
                "teas. During a state dinner, guests are served cocktails\n" +
                "in the three state parlors before the president, first\n" +
                "lady, and visiting head of state descend the Grand\n" +
                "Staircase for dinner. The room is traditionally \n" +
                "decorated in shades of green. The room is approximately\n" +
                "28 feet by 22 12 feet (approx. 8.5m x 6.8m). It has \n" +
                "six doors, which open into the Cross Hall, East Room, \n" +
                "South Portico, and Blue Room."));

        rooms.add(new Room("Blue Room",
                "This room is one of three state parlors on the first \n" +
                "floor in the White House, the residence of the President\n" +
                "of the United States. It is distinct for its oval shape.\n" +
                "The room is used for receptions and receiving lines, and\n" +
                "is occasionally set for small dinners. President Grover \n" +
                "Cleveland married Frances Folsom in the room on June 2,\n" +
                "1886, the only wedding of a President and First Lady in\n" +
                "the White House. The room is traditionally decorated in\n" +
                "shades of blue. With the Yellow Oval Room above it and\n" +
                "the  Diplomatic Reception Room below it, the Blue Room \n" +
                "is one of three oval rooms in James Hoban's original\n" +
                "design for the White House.  The room is approximately \n" +
                "30 by 40 feet (9.1 by 12 m). It has six doors, which \n" +
                "open into the Cross Hall, Green Room, Red Room, and \n" +
                "South Portico. The three windows look out upon the \n" +
                "South Lawn."));

        rooms.add(new Room("Red Room",
                "This is one of three state parlors on the first floor\n" +
                "in the White House.  The room has served as a parlor and\n" +
                "music room, and recent presidents have held small dinner\n" +
                "parties in it.  It has been traditionally decorated in \n" +
                "shades of red.  The room is approximately 28 feet by 22.5\n" +
                "feet. It has six doors, which open into the Cross Hall,\n" +
                "Blue Room, South Portico, and State Dining Room."));

        rooms.add(new Room("State Dining Room",
                "ate Floor of the White House. It is used for receptions, \n" +
                "luncheons, and larger formal dinners called state dinners\n" +
                "for visiting heads of state on state visits. The room seats\n" +
                "140 guests. The room measures approximately 48 feet by 36\n" +
                "feet. It has six doors leading to a butler's pantry, the\n" +
                "Family Dining Room, Cross Hall, and Red Room, and the West\n" +
                "Terrace.  During the Andrew Jackson administration the room \n" +
                "came to be formally called the \"State Dining Room."));
    }

    //fixme This is broken as well. Good times.
    public rooms() {
        String output = " ";
        System.out.println("White House Rooms Included in Tour\n");
        System.out.println("===================================\n");

        num_rooms = rooms.length; // Don't think .length works in java
        int i;
        for (i = 0; num_rooms; i++) {
            String output += rooms[i].toString() + "\n";
        }
    }

    //fixme could be broken, could work. Don't know.
    public admit_new_visitor(String theName, char theGender, String theAge, String theCitizenship ) {
        Vector<Visitor> visitors = new Vector<Visitor>();
        num_visitors++;
        visitors.add(new Visitor(theName, theGender, theAge, theCitizenship));
    }

    //fixme I'm sure this is patently wrong. Some random Ruby code floating around in it. ** Error: return type required **
    public passage_of_time() {
        current_time += 15;

        for (i = 0; i + num_visitors; i++) {
            // Move to next room 50% of time in next time interval.
            if (Random.nextInt(2) == 1) {
                visitors[i].next_room;
            }
        }
    }

    //fixme probably messed up as well
    public String toString() {
        String output = " ";

        return output = String.format("%02d:%02d\n", current_time / 60, current_time % 60);
        System.out.println("Current White House Tour Visitors\n");
        System.out.println("======================================\n");

        for (int i = 0; i + int num_visitors; i++) {
            if (visitors[i].current_room <= 6) {
                return output + visitors + "\n";
            }
        }
        return output;
    }

}
