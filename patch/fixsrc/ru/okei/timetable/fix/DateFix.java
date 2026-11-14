package ru.okei.timetable.fix;

import java.util.Calendar;
import ru.okei.timetable.data.WeekSchedule;

/** Приводит даты недели к году телефона: сайт может отдавать прошлогодние даты. */
public final class DateFix {

    private DateFix() {
    }

    public static WeekSchedule fix(WeekSchedule week) {
        if (week == null) {
            return null;
        }
        String[] start = split(week.startDate);
        if (start == null) {
            return week;
        }
        String[] end = split(week.endDate);
        int year = Calendar.getInstance().get(Calendar.YEAR);
        int endYear = year;
        if (end != null) {
            try {
                int startMonth = Integer.parseInt(start[1]);
                int endMonth = Integer.parseInt(end[1]);
                if (endMonth < startMonth) {
                    endYear = year + 1;
                }
            } catch (NumberFormatException ignored) {
                endYear = year;
            }
        }
        String fixedStart = start[0] + "." + start[1] + "." + year;
        String fixedEnd = end == null ? week.endDate
                : end[0] + "." + end[1] + "." + endYear;
        if (fixedStart.equals(week.startDate) && fixedEnd.equals(week.endDate)) {
            return week;
        }
        return new WeekSchedule(fixedStart, fixedEnd, week.days);
    }

    private static String[] split(String value) {
        if (value == null) {
            return null;
        }
        String[] parts = value.split("\\.");
        if (parts.length != 3) {
            return null;
        }
        try {
            Integer.parseInt(parts[0]);
            Integer.parseInt(parts[1]);
            Integer.parseInt(parts[2]);
        } catch (NumberFormatException error) {
            return null;
        }
        return parts;
    }
}
