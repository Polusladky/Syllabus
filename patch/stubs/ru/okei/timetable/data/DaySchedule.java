package ru.okei.timetable.data;
public final class DaySchedule {
    public final int index;
    public final String name;
    public final java.util.List<Lesson> lessons;
    public DaySchedule(String name, int index, java.util.List<Lesson> lessons) {
        this.name = name;
        this.index = index;
        this.lessons = lessons;
    }
    public boolean isEmpty() { return lessons.isEmpty(); }
}
