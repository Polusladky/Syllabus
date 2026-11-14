package ru.okei.timetable.fix;

import android.app.Activity;
import android.graphics.Typeface;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import ru.okei.timetable.ui.Theme;

/** Дисклеймер внизу настроек, под всеми разделами. */
public final class SettingsFooter {

    private static final String TEXT = "ВАЖНО: ПРИЛОЖЕНИЕ ЕЩЁ НЕ ЯВЛЯЕТСЯ ПОЛНЫМ УНИВЕРСАЛЬНЫМ "
            + "РЕШЕНИЕМ. СВЕРЯЙТЕСЬ С САЙТОМ И УТОЧНЯЙТЕ УТВЕРЖДЁННОЕ ТОЧНОЕ РАСПИСАНИЕ "
            + "В ЧАТЕ «МАКС» ИЛИ В ГРУППЕ С КУРАТОРОМ.";

    private SettingsFooter() {
    }

    public static void add(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            java.lang.reflect.Field field = activity.getClass().getDeclaredField("content");
            field.setAccessible(true);
            Object value = field.get(activity);
            if (!(value instanceof LinearLayout)) {
                return;
            }
            LinearLayout content = (LinearLayout) value;
            TextView text = new TextView(activity);
            text.setText(TEXT);
            text.setTextSize(10f);
            text.setTypeface(Typeface.createFromAsset(activity.getAssets(), "fonts/Tiny5-Regular.ttf"));
            text.setTextColor(Theme.dim(activity));
            text.setLetterSpacing(0.06f);
            text.setLineSpacing(dp(activity, 3f), 1f);
            int padding = dp(activity, 18f);
            text.setPadding(0, padding, 0, padding);
            content.addView(text, new LinearLayout.LayoutParams(
                    ViewGroupParams.MATCH_PARENT, ViewGroupParams.WRAP_CONTENT));
        } catch (Throwable ignored) {
            // настройки просто останутся без подписи
        }
    }

    private static int dp(Activity activity, float value) {
        return (int) (value * activity.getResources().getDisplayMetrics().density + 0.5f);
    }

    private static final class ViewGroupParams {
        static final int MATCH_PARENT = -1;
        static final int WRAP_CONTENT = -2;
    }
}
