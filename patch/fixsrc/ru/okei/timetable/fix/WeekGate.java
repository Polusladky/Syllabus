package ru.okei.timetable.fix;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import ru.okei.timetable.data.Cache;
import ru.okei.timetable.data.Groups;
import ru.okei.timetable.data.ScheduleParser;
import ru.okei.timetable.data.WeekSchedule;

/**
 * Показывает расписание текущей учебной недели до 00:00 воскресенья.
 * Сайт публикует следующую неделю заранее, поэтому свежий HTML может
 * относиться к будущей неделе — в этом случае показываем сохранённую копию.
 */
public final class WeekGate {

    private static volatile String group = "";
    private static volatile long stamp = -1L;
    private static volatile WeekSchedule week;
    private static volatile String weekHtml;

    private WeekGate() {
    }

    public static WeekSchedule get(Context context) {
        if (context == null) {
            return null;
        }
        String current = Groups.current(context);
        long time = Cache.time(context, current);
        WeekSchedule cached = week;
        if (cached != null && time == stamp && current.equals(group)) {
            return cached;
        }

        String freshHtml = Cache.read(context, current);
        WeekSchedule fresh = ScheduleParser.parse(freshHtml);
        String shownHtml = readShown(context, current);
        WeekSchedule shown = ScheduleParser.parse(shownHtml);

        String desired = desiredStart(System.currentTimeMillis());
        WeekSchedule chosen;
        String chosenHtml;
        if (fresh != null && desired.equals(fresh.startDate)) {
            chosen = fresh;
            chosenHtml = freshHtml;
        } else if (shown != null && desired.equals(shown.startDate)) {
            chosen = shown;
            chosenHtml = shownHtml;
        } else if (fresh != null) {
            chosen = fresh;
            chosenHtml = freshHtml;
        } else {
            chosen = shown;
            chosenHtml = shownHtml;
        }
        if (chosen == null) {
            return null;
        }

        String shownStart = shown == null ? "" : shown.startDate;
        if (!chosen.startDate.equals(shownStart) && chosenHtml != null) {
            writeShown(context, current, chosenHtml);
        }

        week = chosen;
        weekHtml = chosenHtml;
        stamp = time;
        group = current;
        return chosen;
    }

    /** HTML-кэш выбранной недели: для MainActivity.showCached и других читателей. */
    public static String readHtml(Context context) {
        if (context == null) {
            return null;
        }
        WeekSchedule chosen = get(context);
        if (chosen == null) {
            return Cache.read(context, Groups.current(context));
        }
        return weekHtml;
    }

    public static void forget() {
        week = null;
        weekHtml = null;
        stamp = -1L;
        group = "";
    }

    /** Понедельник отображаемой недели: в воскресенье — уже следующая неделя. */
    static String desiredStart(long now) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(now);
        int day = calendar.get(Calendar.DAY_OF_WEEK);
        int delta = day == Calendar.SUNDAY ? 1 : -(day - Calendar.MONDAY);
        calendar.add(Calendar.DAY_OF_YEAR, delta);
        return new SimpleDateFormat("dd.MM.yyyy", Locale.US).format(calendar.getTime());
    }

    private static File shownFile(Context context, String group) {
        int hash = group == null ? 0 : Math.abs(group.hashCode());
        return new File(context.getFilesDir(), "schedule-" + hash + ".shown.html");
    }

    private static String readShown(Context context, String group) {
        File file = shownFile(context, group);
        if (!file.exists()) {
            return null;
        }
        try {
            FileInputStream in = new FileInputStream(file);
            try {
                ByteArrayOutputStream out = new ByteArrayOutputStream((int) file.length() + 64);
                byte[] buffer = new byte[8192];
                int read;
                while ((read = in.read(buffer)) > 0) {
                    out.write(buffer, 0, read);
                }
                return new String(out.toByteArray(), "UTF-8");
            } finally {
                in.close();
            }
        } catch (IOException error) {
            return null;
        }
    }

    private static void writeShown(Context context, String group, String html) {
        try {
            FileOutputStream out = new FileOutputStream(shownFile(context, group));
            try {
                out.write(html.getBytes("UTF-8"));
                out.flush();
            } finally {
                out.close();
            }
        } catch (IOException ignored) {
        }
    }
}
