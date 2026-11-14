package ru.okei.timetable.data;
public final class WeekSchedule {
    public final String startDate;
    public final String endDate;
    public final java.util.List<DaySchedule> days;
    public WeekSchedule(String start, String end, java.util.List<DaySchedule> days) {
        this.startDate = start;
        this.endDate = end;
        this.days = days;
    }
    public int lessonCount() { return 0; }
    public boolean isEmpty() { return true; }
}
