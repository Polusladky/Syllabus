package ru.okei.timetable.fix;

import android.content.Context;
import ru.okei.timetable.SiteChangesSync;
import ru.okei.timetable.data.WeekCache;

/**
 * Смена группы: сразу подтягиваем замены с сайта, без ожидания 30 минут
 * и без уведомления об обновлении.
 */
public final class GroupRefresh {

    /** Пока true, Notifier.showChange молчит. */
    public static volatile boolean quiet;

    private GroupRefresh() {
    }

    public static void after(Context context) {
        if (context == null) {
            return;
        }
        WeekCache.forget();
        WeekGate.forget();
        final Context app = context.getApplicationContext();
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                quiet = true;
                try {
                    SiteChangesSync.force(app);
                } catch (Throwable ignored) {
                    // сеть может быть недоступна — молча выходим
                } finally {
                    quiet = false;
                }
            }
        }, "group-refresh");
        thread.setDaemon(true);
        thread.start();
    }
}
