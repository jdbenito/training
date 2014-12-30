package com.hybridforge.training.datamodel;

import java.util.Arrays;
import java.util.List;

/**
 * Models a person and their age
 *
 * Created by jbenito on 14-12-30.
 */
public class Person {
    private String mFirstName;
    private String mLastName;
    private int mAge;

    static List<Person> mTestData1;
    static List<Person> mTestData2;
    static Boolean mTag;

    static {
        Person[] sampleData = new Person[] { Person.newInstance("Joe", "Brown", 25),
                Person.newInstance("Walter", "White", 27),
                Person.newInstance("Jesse", "McCartney", 25),
                Person.newInstance("George", "Bush", 12),
                Person.newInstance("Barack", "Obama", 29)};
        mTestData1 = Arrays.asList(sampleData);

        sampleData = new Person[] { Person.newInstance("Daffy", "Duck", 25),
                Person.newInstance("Mickey", "Mouse", 27),
                Person.newInstance("Roger", "Rabbit", 25),
                Person.newInstance("Bugs", "Bunny", 12),
                Person.newInstance("Speedy", "Gonzales", 29)};
        mTestData2 = Arrays.asList(sampleData);

        mTag = false;
    }

    /**
     * Default constructor
     * @param firstName Person's first name
     * @param lastName Person's last name
     * @param age Person's age
     */
    public Person(String firstName, String lastName, int age) {
        mFirstName = new String(firstName);
        mLastName = new String(lastName);
        mAge = age;
    }

    /**
     * Convenience method for creating a new instance of Person
     * @param firstName Person's first name
     * @param lastName Person's last name
     * @param age Person's age
     * @return a new instance of Person with the specified input attributes
     */
    public static Person newInstance(String firstName, String lastName, int age) {
        return new Person(firstName, lastName, age);
    }

    /**
     * Convenience method for creating a
     * @return
     */
    public static List<Person> getTestData() {
        if (mTag) {
            return mTestData1;
        }
        return mTestData2;
    }

    public static void toggleTestData() {
        mTag = !mTag;
    }

    /**
     * Returns the concatenation of the first name and last name
     * @return Person's full name
     */
    public String getFullName() {
        return String.format("%s %s", mFirstName, mLastName);
    }

    /**
     * Returns the age in a displayable format
     * @return e.g. "1 year old", "5 years old", "-"
     */
    public String getAgeString() {
        if (mAge > 1) {
            return String.format("%d years old", mAge);
        }
        if (mAge == 1) {
            return "1 year old";
        }
        return "-";
    }

    @Override
    public int hashCode() {
        return getFullName().hashCode() + getAgeString().hashCode();
    }
}
