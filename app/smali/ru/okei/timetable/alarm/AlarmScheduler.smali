.class public final Lru/okei/timetable/alarm/AlarmScheduler;
.super Ljava/lang/Object;
.source "AlarmScheduler.java"


# static fields
.field public static final ACTION_ALARM:Ljava/lang/String; = "ru.okei.timetable.ALARM"

.field public static final ACTION_AUDIO_LEAD:Ljava/lang/String; = "ru.okei.timetable.AUDIO_LEAD"

.field public static final ACTION_PRE:Ljava/lang/String; = "ru.okei.timetable.PRE"

.field public static final ACTION_REFRESH:Ljava/lang/String; = "ru.okei.timetable.REFRESH"

.field public static final EXTRA_AT:Ljava/lang/String; = "at"

.field public static final EXTRA_CODE:Ljava/lang/String; = "code"

.field public static final EXTRA_DAY:Ljava/lang/String; = "day"

.field public static final EXTRA_HIGHLIGHT:Ljava/lang/String; = "highlight_day"

.field public static final EXTRA_KIND:Ljava/lang/String; = "kind"

.field public static final EXTRA_LABEL:Ljava/lang/String; = "label"

.field public static final EXTRA_LESSON:Ljava/lang/String; = "lesson"

.field public static final EXTRA_PRE:Ljava/lang/String; = "pre"

.field public static final EXTRA_SNOOZE:Ljava/lang/String; = "snooze"

.field private static final KEY_AUDIO_AT:Ljava/lang/String; = "audio_lead_at"

.field private static final KEY_AUDIO_CODE:Ljava/lang/String; = "audio_lead_code"

.field private static final KEY_AUDIO_WALL:Ljava/lang/String; = "audio_lead_wall"

.field private static final KEY_CODES:Ljava/lang/String; = "codes"

.field private static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field private static final KEY_LAST_FIRE:Ljava/lang/String; = "last_fire"

.field private static final KEY_LAST_SYNC:Ljava/lang/String; = "last_sync"

.field private static final KEY_PENDING_AT:Ljava/lang/String; = "pending_at"

.field private static final KEY_PENDING_CODE:Ljava/lang/String; = "pending_code"

.field private static final KEY_PENDING_DAY:Ljava/lang/String; = "pending_day"

.field private static final KEY_PENDING_LABEL:Ljava/lang/String; = "pending_label"

.field private static final KEY_PENDING_LESSON:Ljava/lang/String; = "pending_lesson"

.field private static final KEY_PENDING_PRE:Ljava/lang/String; = "pending_pre"

.field private static final KEY_PENDING_SNOOZE:Ljava/lang/String; = "pending_snooze"

.field private static final KEY_PLAN:Ljava/lang/String; = "plan"

.field private static final KEY_PRE_AT:Ljava/lang/String; = "pre_screen_at"

.field private static final KEY_PRE_CODE:Ljava/lang/String; = "pre_screen_code"

.field private static final KEY_PRE_WALL:Ljava/lang/String; = "pre_screen_wall"

.field private static final KEY_SNOOZE_AT:Ljava/lang/String; = "snooze_at"

.field private static final KEY_SNOOZE_COUNT:Ljava/lang/String; = "snooze_count"

.field private static final KEY_SNOOZE_DAY:Ljava/lang/String; = "snooze_day"

.field private static final KEY_SNOOZE_LABEL:Ljava/lang/String; = "snooze_label"

.field private static final KEY_SNOOZE_LESSON:Ljava/lang/String; = "snooze_lesson"

.field private static final MAINT_CODE:I = 0x238c

.field private static final MAINT_HOURS:[I

.field public static final MAX_SNOOZE:I = 0x3

.field private static final PENDING_FRESH_MS:J = 0x1d4c0L

.field private static final PREFS:Ljava/lang/String; = "schedule_alarms"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    const/16 v1, 0x12

    const/4 v2, 0x6

    .line 70
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lru/okei/timetable/alarm/AlarmScheduler;->MAINT_HOURS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static alarmIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;
    .locals 3

    .line 917
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/okei/timetable/alarm/AlarmReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ru.okei.timetable.ALARM"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p1, :cond_1

    const-string v0, "code"

    .line 919
    iget v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "at"

    .line 920
    iget-wide v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "day"

    .line 921
    iget-object v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->day:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "lesson"

    .line 922
    iget-object v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->lesson:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "label"

    .line 923
    iget-object v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->label:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "kind"

    .line 924
    iget-object v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->kind:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    iget p1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "snooze"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    return-object p0
.end method

.method private static appendPlanLine(Ljava/lang/StringBuilder;Lru/okei/timetable/alarm/AlarmPlan$Slot;)V
    .locals 3

    .line 704
    iget v0, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->day:Ljava/lang/String;

    .line 705
    invoke-static {v1}, Lru/okei/timetable/alarm/AlarmScheduler;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->lesson:Ljava/lang/String;

    invoke-static {v1}, Lru/okei/timetable/alarm/AlarmScheduler;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->kind:Ljava/lang/String;

    .line 706
    invoke-static {v1}, Lru/okei/timetable/alarm/AlarmScheduler;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->label:Ljava/lang/String;

    invoke-static {v1}, Lru/okei/timetable/alarm/AlarmScheduler;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 707
    invoke-static {p1}, Lru/okei/timetable/alarm/AlarmPlan;->groupOf(Lru/okei/timetable/alarm/AlarmPlan$Slot;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/okei/timetable/alarm/AlarmScheduler;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static apply(Landroid/content/Context;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lru/okei/timetable/alarm/AlarmPlan$Slot;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x0

    .line 122
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 123
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->planned(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    const/4 v4, 0x0

    .line 128
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 129
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    .line 130
    iget-wide v6, v5, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    const-wide/16 v8, 0x1388

    add-long/2addr v8, v0

    cmp-long v10, v6, v8

    if-lez v10, :cond_4

    invoke-virtual {v5}, Lru/okei/timetable/alarm/AlarmPlan$Slot;->isReminder()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Lru/okei/timetable/alarm/AlarmScheduler;->isRepeatSlot(Lru/okei/timetable/alarm/AlarmPlan$Slot;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_4

    :cond_1
    const/4 v6, 0x0

    .line 134
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 135
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    iget-wide v7, v7, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    iget-wide v9, v5, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    cmp-long v11, v7, v9

    if-nez v11, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_4

    .line 141
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 145
    :cond_5
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->cancelAll(Landroid/content/Context;)V

    const-string p1, "alarm"

    .line 146
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    if-nez p1, :cond_6

    return-void

    .line 151
    :cond_6
    invoke-static {v2, v0, v1}, Lru/okei/timetable/alarm/AlarmPlan;->dueOrLater(Ljava/util/List;J)Ljava/util/List;

    move-result-object v2

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_9

    .line 155
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    .line 156
    iget v7, v6, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    .line 157
    invoke-static {p0, v6}, Lru/okei/timetable/alarm/AlarmScheduler;->alarmIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0x8000000

    invoke-static {v9}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v10

    .line 156
    invoke-static {p0, v7, v8, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 158
    new-instance v8, Landroid/content/Intent;

    const-class v10, Lru/okei/timetable/MainActivity;

    invoke-direct {v8, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v10, 0x14000000

    .line 159
    invoke-virtual {v8, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 160
    iget v10, v6, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    .line 161
    invoke-static {v9}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v9

    .line 160
    invoke-static {p0, v10, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 162
    invoke-static {p0, p1, v6, v7, v8}, Lru/okei/timetable/alarm/AlarmScheduler;->arm(Landroid/content/Context;Landroid/app/AlarmManager;Lru/okei/timetable/alarm/AlarmPlan$Slot;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 163
    iget v7, v6, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u043d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u0441\u0442\u0430\u0432\u0438\u0442\u044c \u0441\u0438\u0433\u043d\u0430\u043b "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AlarmScheduler"

    invoke-static {v8, v7}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_7
    invoke-virtual {v6}, Lru/okei/timetable/alarm/AlarmPlan$Slot;->isReminder()Z

    move-result v7

    if-nez v7, :cond_8

    .line 166
    invoke-static {p0, p1, v6}, Lru/okei/timetable/alarm/AlarmScheduler;->scheduleAudioLead(Landroid/content/Context;Landroid/app/AlarmManager;Lru/okei/timetable/alarm/AlarmPlan$Slot;)V

    .line 167
    invoke-static {p0, p1, v6}, Lru/okei/timetable/alarm/AlarmScheduler;->schedulePreAlarm(Landroid/content/Context;Landroid/app/AlarmManager;Lru/okei/timetable/alarm/AlarmPlan$Slot;)V

    .line 169
    :cond_8
    iget v7, v6, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {v5, v6}, Lru/okei/timetable/alarm/AlarmScheduler;->appendPlanLine(Ljava/lang/StringBuilder;Lru/okei/timetable/alarm/AlarmPlan$Slot;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 172
    :cond_9
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v3, "codes"

    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v3, "plan"

    .line 174
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v3, "last_sync"

    .line 175
    invoke-interface {p1, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 176
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->restoreSnooze(Landroid/content/Context;)V

    .line 178
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->hasRepeat(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 179
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->clearSnoozed(Landroid/content/Context;)V

    .line 181
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->repeatCount(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apply slots="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " repeats="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static arm(Landroid/content/Context;Landroid/app/AlarmManager;Lru/okei/timetable/alarm/AlarmPlan$Slot;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .locals 4

    const-string p0, "AlarmScheduler"

    const/4 v0, 0x1

    .line 1000
    :try_start_0
    new-instance v1, Landroid/app/AlarmManager$AlarmClockInfo;

    iget-wide v2, p2, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    invoke-direct {v1, v2, v3, p4}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    invoke-virtual {p1, v1, p3}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p4

    .line 1005
    invoke-static {p0, p4}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p4

    .line 1003
    invoke-static {p0, p4}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p4, 0x0

    .line 1008
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 1009
    iget-wide v1, p2, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    invoke-virtual {p1, p4, v1, v2, p3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 1011
    :cond_0
    iget-wide v1, p2, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    invoke-virtual {p1, p4, v1, v2, p3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    return v0

    :catch_2
    move-exception v1

    .line 1017
    invoke-static {p0, v1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v1

    .line 1015
    invoke-static {p0, v1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1020
    :goto_2
    :try_start_2
    iget-wide v1, p2, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    invoke-virtual {p1, p4, v1, v2, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    return v0

    :catch_4
    move-exception p1

    .line 1023
    invoke-static {p0, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p4
.end method

.method private static audioIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;
    .locals 3

    .line 824
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/okei/timetable/alarm/AudioLeadReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ru.okei.timetable.AUDIO_LEAD"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p1, :cond_1

    const-string v0, "code"

    .line 826
    iget v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "at"

    .line 827
    iget-wide v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "day"

    .line 828
    iget-object v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->day:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "lesson"

    .line 829
    iget-object v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->lesson:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "label"

    .line 830
    iget-object v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->label:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    iget p1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "snooze"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    return-object p0
.end method

.method public static bumpSnooze(Landroid/content/Context;)V
    .locals 2

    .line 399
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->snoozeCount(Landroid/content/Context;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    const-string v1, "snooze_count"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static canSnooze(Landroid/content/Context;)Z
    .locals 1

    .line 395
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->snoozeCount(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static cancelAll(Landroid/content/Context;)V
    .locals 10

    const-string v0, "alarm"

    .line 185
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "codes"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 190
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "\n"

    .line 191
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 192
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_5

    .line 193
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 198
    :cond_1
    :try_start_0
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    .line 203
    invoke-static {p0, v6}, Lru/okei/timetable/alarm/AlarmScheduler;->alarmIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v8, 0x28000000

    .line 204
    invoke-static {v8}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v9

    .line 202
    invoke-static {p0, v5, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 206
    invoke-virtual {v0, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 207
    invoke-virtual {v7}, Landroid/app/PendingIntent;->cancel()V

    .line 210
    :cond_2
    invoke-static {p0, v6}, Lru/okei/timetable/alarm/AlarmScheduler;->audioIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object v7

    .line 211
    invoke-static {v8}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v9

    .line 209
    invoke-static {p0, v5, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 213
    invoke-virtual {v0, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 214
    invoke-virtual {v7}, Landroid/app/PendingIntent;->cancel()V

    .line 217
    :cond_3
    invoke-static {p0, v6}, Lru/okei/timetable/alarm/AlarmScheduler;->preIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object v6

    .line 218
    invoke-static {v8}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v7

    .line 216
    invoke-static {p0, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 220
    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 221
    invoke-virtual {v5}, Landroid/app/PendingIntent;->cancel()V

    :catch_0
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 225
    :cond_5
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "plan"

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static declared-synchronized cancelGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I
    .locals 15

    move-object v0, p0

    const-class v1, Lru/okei/timetable/alarm/AlarmScheduler;

    monitor-enter v1

    :try_start_0
    const-string v2, "alarm"

    .line 307
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 309
    monitor-exit v1

    return v3

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string v4, ""

    goto :goto_0

    :cond_1
    move-object/from16 v4, p1

    :goto_0
    if-nez p2, :cond_2

    const-string v5, ""

    goto :goto_1

    :cond_2
    move-object/from16 v5, p2

    .line 311
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 312
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->planned(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 313
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    .line 316
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_4

    .line 317
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    .line 318
    invoke-static {v9}, Lru/okei/timetable/alarm/AlarmPlan;->groupOf(Lru/okei/timetable/alarm/AlarmPlan$Slot;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-wide v10, v9, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    const-wide/16 v12, 0x1388

    add-long v12, p3, v12

    cmp-long v14, v10, v12

    if-lez v14, :cond_3

    .line 319
    iget v10, v9, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    const/4 v11, 0x0

    .line 320
    invoke-static {p0, v11}, Lru/okei/timetable/alarm/AlarmScheduler;->alarmIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object v12

    const/high16 v13, 0x28000000

    .line 321
    invoke-static {v13}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v14

    .line 319
    invoke-static {p0, v10, v12, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-static {v2, v10}, Lru/okei/timetable/alarm/AlarmScheduler;->cancelOne(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V

    .line 323
    iget v10, v9, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    .line 324
    invoke-static {p0, v11}, Lru/okei/timetable/alarm/AlarmScheduler;->preIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object v12

    .line 325
    invoke-static {v13}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v14

    .line 323
    invoke-static {p0, v10, v12, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-static {v2, v10}, Lru/okei/timetable/alarm/AlarmScheduler;->cancelOne(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V

    .line 327
    iget v9, v9, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    .line 328
    invoke-static {p0, v11}, Lru/okei/timetable/alarm/AlarmScheduler;->audioIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object v10

    .line 329
    invoke-static {v13}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v11

    .line 327
    invoke-static {p0, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-static {v2, v9}, Lru/okei/timetable/alarm/AlarmScheduler;->cancelOne(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 334
    :cond_3
    invoke-static {v6, v9}, Lru/okei/timetable/alarm/AlarmScheduler;->appendPlanLine(Ljava/lang/StringBuilder;Lru/okei/timetable/alarm/AlarmPlan$Slot;)V

    .line 335
    iget v9, v9, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 337
    :cond_4
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "plan"

    .line 338
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "codes"

    .line 339
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 340
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 341
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->hasRepeat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 342
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->clearSnoozed(Landroid/content/Context;)V

    .line 344
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelGroup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " removed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    monitor-exit v1

    return v8

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static cancelOne(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 350
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 351
    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized claimAudioLead(Landroid/content/Context;IJ)Z
    .locals 11

    const-class v0, Lru/okei/timetable/alarm/AlarmScheduler;

    monitor-enter v0

    .line 871
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 872
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "audio_lead_code"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 873
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "audio_lead_at"

    const-wide/16 v7, 0x0

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 874
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "audio_lead_wall"

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    cmp-long v3, v9, p2

    if-nez v3, :cond_0

    sub-long v3, v1, v6

    const-wide/16 v6, 0x7530

    cmp-long v8, v3, v6

    if-gez v8, :cond_0

    .line 876
    monitor-exit v0

    return v5

    .line 878
    :cond_0
    :try_start_1
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v3, "audio_lead_code"

    .line 879
    invoke-interface {p0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "audio_lead_at"

    .line 880
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "audio_lead_wall"

    .line 881
    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 882
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 883
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized claimPreScreen(Landroid/content/Context;IJJ)Z
    .locals 14

    move v0, p1

    move-wide/from16 v1, p2

    const-class v3, Lru/okei/timetable/alarm/AlarmScheduler;

    monitor-enter v3

    .line 893
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 894
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "pre_screen_code"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 895
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "pre_screen_at"

    const-wide/16 v10, 0x0

    invoke-interface {v7, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 896
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "pre_screen_wall"

    invoke-interface {v7, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    if-ne v6, v0, :cond_0

    cmp-long v6, v12, v1

    if-nez v6, :cond_0

    sub-long v6, v4, v9

    const-wide/16 v9, 0x3e8

    move-wide/from16 v11, p4

    .line 897
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v11, v6, v9

    if-gez v11, :cond_0

    .line 898
    monitor-exit v3

    return v8

    .line 900
    :cond_0
    :try_start_1
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "pre_screen_code"

    .line 901
    invoke-interface {v6, v7, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v6, "pre_screen_at"

    .line 902
    invoke-interface {v0, v6, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pre_screen_wall"

    .line 903
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 904
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 905
    monitor-exit v3

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static clearAudioLead(Landroid/content/Context;)V
    .locals 1

    .line 909
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "audio_lead_code"

    .line 910
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "audio_lead_at"

    .line 911
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "audio_lead_wall"

    .line 912
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 913
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static clearPending(Landroid/content/Context;)V
    .locals 1

    .line 453
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pending_at"

    .line 454
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pending_code"

    .line 455
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pending_day"

    .line 456
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pending_lesson"

    .line 457
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pending_label"

    .line 458
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pending_pre"

    .line 459
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 460
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static clearSnooze(Landroid/content/Context;)V
    .locals 1

    .line 373
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "snooze_at"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "snooze_day"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "snooze_lesson"

    .line 374
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "snooze_label"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static clearSnoozed(Landroid/content/Context;)V
    .locals 2

    .line 391
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "snoozed_chain"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static consumePendingAlarm(Landroid/content/Context;)Landroid/content/Intent;
    .locals 7

    .line 435
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pending_at"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "at"

    .line 441
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 442
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pending_code"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "code"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 443
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pending_day"

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "day"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pending_lesson"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lesson"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pending_label"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pending_pre"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "pre"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 447
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pending_snooze"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "snooze"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 448
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->clearPending(Landroid/content/Context;)V

    return-object v2

    .line 437
    :cond_1
    :goto_0
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->clearPending(Landroid/content/Context;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 714
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 715
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 716
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_1

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_2

    .line 718
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    goto :goto_1

    .line 724
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v2, 0x20

    .line 721
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static flags(I)I
    .locals 2

    .line 963
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x4000000

    or-int/2addr p0, v0

    :cond_0
    return p0
.end method

.method public static format(J)Ljava/lang/String;
    .locals 0

    .line 989
    invoke-static {p0, p1}, Lru/okei/timetable/alarm/AlarmPlan;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasRepeat(Landroid/content/Context;)Z
    .locals 0

    .line 791
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->repeatCount(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 81
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "enabled"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isPlanned(Landroid/content/Context;IJ)Z
    .locals 5

    .line 859
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->planned(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 860
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 861
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    .line 862
    iget v3, v2, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    if-ne v3, p1, :cond_0

    iget-wide v2, v2, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    cmp-long v4, v2, p2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isRegistered(Landroid/content/Context;I)Z
    .locals 0

    .line 482
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->registeredCodes(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isRepeatSlot(Lru/okei/timetable/alarm/AlarmPlan$Slot;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 776
    iget v0, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lru/okei/timetable/alarm/AlarmPlan$Slot;->isReminder()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lastFire(Landroid/content/Context;)J
    .locals 3

    .line 474
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_fire"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static lastSync(Landroid/content/Context;)J
    .locals 3

    .line 95
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_sync"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static markSnoozed(Landroid/content/Context;)V
    .locals 2

    .line 387
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "snoozed_chain"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static missing(Landroid/content/Context;)I
    .locals 9

    .line 407
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->planned(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 410
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 411
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    .line 412
    iget-wide v6, v5, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    cmp-long v8, v6, v1

    if-lez v8, :cond_0

    iget v5, v5, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    invoke-static {p0, v5}, Lru/okei/timetable/alarm/AlarmScheduler;->isRegistered(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public static next(Landroid/content/Context;)Lru/okei/timetable/alarm/AlarmPlan$Slot;
    .locals 10

    .line 643
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "plan"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->parsePlan(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 646
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 647
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    .line 648
    iget-wide v5, v4, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    cmp-long v7, v5, v0

    if-lez v7, :cond_1

    if-eqz v2, :cond_0

    iget-wide v5, v4, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    iget-wide v7, v2, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    :cond_0
    move-object v2, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 0

    .line 993
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmPlan;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method static parsePlan(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lru/okei/timetable/alarm/AlarmPlan$Slot;",
            ">;"
        }
    .end annotation

    .line 666
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->parsePlanText(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parsePlanText(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lru/okei/timetable/alarm/AlarmPlan$Slot;",
            ">;"
        }
    .end annotation

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_7

    .line 672
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v1, "\n"

    .line 675
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 676
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_7

    .line 677
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 678
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_4

    .line 681
    :cond_1
    invoke-static {v3}, Lru/okei/timetable/alarm/AlarmScheduler;->splitPlanLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 682
    array-length v4, v3

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    goto/16 :goto_4

    :cond_2
    const/4 v4, 0x2

    .line 686
    :try_start_0
    aget-object v4, v3, v4

    invoke-static {v4}, Lru/okei/timetable/alarm/AlarmScheduler;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x3

    .line 687
    aget-object v4, v3, v4

    invoke-static {v4}, Lru/okei/timetable/alarm/AlarmScheduler;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 688
    array-length v4, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    const/4 v7, 0x5

    if-le v4, v7, :cond_3

    :try_start_1
    aget-object v4, v3, v7

    invoke-static {v4}, Lru/okei/timetable/alarm/AlarmScheduler;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_1

    :cond_3
    move-object v12, v6

    .line 689
    :goto_1
    array-length v4, v3

    const/4 v7, 0x6

    if-le v4, v7, :cond_4

    aget-object v4, v3, v7

    invoke-static {v4}, Lru/okei/timetable/alarm/AlarmScheduler;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 690
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    goto :goto_2

    :cond_5
    move-object v14, v6

    .line 693
    :goto_2
    new-instance v4, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    aget-object v6, v3, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 695
    array-length v6, v3

    if-le v6, v5, :cond_6

    aget-object v3, v3, v5

    invoke-static {v3}, Lru/okei/timetable/alarm/AlarmScheduler;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    const-string v3, "wake"

    :goto_3
    move-object v13, v3

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lru/okei/timetable/alarm/AlarmPlan$Slot;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    const-string v4, "AlarmScheduler"

    .line 697
    invoke-static {v4, v3}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_5
    return-object v0
.end method

.method public static planned(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lru/okei/timetable/alarm/AlarmPlan$Slot;",
            ">;"
        }
    .end annotation

    .line 478
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "plan"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->parsePlan(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static preIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;
    .locals 3

    .line 950
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/okei/timetable/alarm/PreAlarmReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ru.okei.timetable.PRE"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string v0, "code"

    .line 952
    iget v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "at"

    .line 953
    iget-wide v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "day"

    .line 954
    iget-object v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->day:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "lesson"

    .line 955
    iget-object v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->lesson:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "label"

    .line 956
    iget-object v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->label:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "kind"

    .line 957
    iget-object p1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->kind:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "schedule_alarms"

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static reapply(Landroid/content/Context;)V
    .locals 3

    .line 656
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 660
    :cond_0
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->clearPending(Landroid/content/Context;)V

    .line 661
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "plan"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmScheduler;->parsePlan(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lru/okei/timetable/alarm/AlarmScheduler;->apply(Landroid/content/Context;Ljava/util/List;)V

    .line 662
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->scheduleMaintenance(Landroid/content/Context;)V

    return-void
.end method

.method public static recordFire(Landroid/content/Context;J)V
    .locals 4

    .line 464
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_fire"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 465
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "snooze_at"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 466
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->clearSnooze(Landroid/content/Context;)V

    goto :goto_0

    .line 468
    :cond_0
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->resetSnoozeCount(Landroid/content/Context;)V

    .line 469
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->clearSnoozed(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static registeredCodes(Landroid/content/Context;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 487
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 488
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "codes"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 489
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "\n"

    .line 492
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 493
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 494
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 495
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 499
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "AlarmScheduler"

    .line 501
    invoke-static {v3, v2}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method private static remember(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)V
    .locals 6

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    invoke-static {v0, p1}, Lru/okei/timetable/alarm/AlarmScheduler;->appendPlanLine(Ljava/lang/StringBuilder;Lru/okei/timetable/alarm/AlarmPlan$Slot;)V

    .line 584
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "plan"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 585
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "codes"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 586
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    iget p1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 588
    invoke-interface {p0, v5, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 589
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static repeatCount(Landroid/content/Context;)I
    .locals 3

    .line 780
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->planned(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 782
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 783
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    invoke-static {v2}, Lru/okei/timetable/alarm/AlarmScheduler;->isRepeatSlot(Lru/okei/timetable/alarm/AlarmPlan$Slot;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static resetSnoozeCount(Landroid/content/Context;)V
    .locals 1

    .line 403
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "snooze_count"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static restoreSnooze(Landroid/content/Context;)V
    .locals 11

    .line 356
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "snooze_at"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, v6, v0

    if-gtz v2, :cond_0

    .line 358
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->clearSnooze(Landroid/content/Context;)V

    return-void

    .line 361
    :cond_0
    new-instance v0, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    const/16 v1, 0x9

    invoke-static {v6, v7, v1}, Lru/okei/timetable/alarm/AlarmPlan;->codeOf(JI)I

    move-result v5

    .line 362
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "snooze_day"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 363
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "snooze_lesson"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 364
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "snooze_label"

    const-string v3, "\u041e\u0422\u041b\u041e\u0416\u0415\u041d\u041e"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lru/okei/timetable/alarm/AlarmPlan$Slot;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 361
    invoke-static {p0, v0, v1}, Lru/okei/timetable/alarm/AlarmScheduler;->scheduleOnce(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;Z)V

    return-void
.end method

.method public static savePendingAlarm(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 423
    :cond_0
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "at"

    const-wide/16 v1, 0x0

    .line 424
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "pending_at"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "code"

    const/4 v1, 0x0

    .line 425
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "pending_code"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "day"

    .line 426
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pending_day"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "lesson"

    .line 427
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pending_lesson"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "label"

    .line 428
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pending_label"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pre"

    .line 429
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "pending_pre"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "snooze"

    .line 430
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "pending_snooze"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 431
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static scheduleAudioLead(Landroid/content/Context;Landroid/app/AlarmManager;Lru/okei/timetable/alarm/AlarmPlan$Slot;)V
    .locals 7

    const-string v0, "AlarmScheduler"

    .line 838
    iget-wide v1, p2, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    const-wide/16 v3, 0x2710

    sub-long/2addr v1, v3

    .line 839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    return-void

    .line 842
    :cond_0
    iget v3, p2, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    .line 843
    invoke-static {p0, p2}, Lru/okei/timetable/alarm/AlarmScheduler;->audioIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v4, 0x8000000

    invoke-static {v4}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v4

    .line 842
    invoke-static {p0, v3, p2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 845
    :try_start_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-lt p2, v3, :cond_1

    .line 846
    invoke-virtual {p1, v4, v1, v2, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 848
    :cond_1
    invoke-virtual {p1, v4, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 853
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 851
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static scheduleExact(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/content/Intent;IJ)Z
    .locals 5

    const-string v0, "AlarmScheduler"

    .line 594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    const/4 v3, 0x0

    cmp-long v4, p4, v1

    if-gtz v4, :cond_0

    return v3

    :cond_0
    const/high16 v1, 0x8000000

    .line 598
    invoke-static {v1}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v1

    .line 597
    invoke-static {p0, p3, p2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p2, 0x1

    .line 600
    :try_start_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p3, v1, :cond_1

    .line 601
    invoke-virtual {p1, v3, p4, p5, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 603
    :cond_1
    invoke-virtual {p1, v3, p4, p5, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p2

    :catch_0
    move-exception p3

    .line 609
    invoke-static {v0, p3}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p3

    .line 607
    invoke-static {v0, p3}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 612
    :goto_1
    :try_start_1
    invoke-virtual {p1, v3, p4, p5, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return p2

    :catch_2
    move-exception p0

    .line 615
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method public static scheduleMaintenance(Landroid/content/Context;)V
    .locals 13

    const-string v0, "alarm"

    .line 795
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    return-void

    .line 799
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 800
    :goto_0
    sget-object v1, Lru/okei/timetable/alarm/AlarmScheduler;->MAINT_HOURS:[I

    array-length v2, v1

    if-ge v10, v2, :cond_2

    .line 801
    invoke-virtual {v8}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    const/16 v3, 0xb

    .line 802
    aget v1, v1, v10

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 803
    invoke-virtual {v2, v1, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 804
    invoke-virtual {v2, v1, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 805
    invoke-virtual {v2, v1, v9}, Ljava/util/Calendar;->set(II)V

    .line 806
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    const/4 v1, 0x6

    const/4 v3, 0x1

    .line 807
    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 809
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lru/okei/timetable/RefreshReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "ru.okei.timetable.REFRESH"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    add-int/lit16 v3, v10, 0x238c

    const/high16 v4, 0x8000000

    .line 811
    invoke-static {v4}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v4

    .line 810
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v3, 0x0

    .line 813
    :try_start_0
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/32 v11, 0x5265c00

    move-object v1, v0

    move v2, v3

    move-wide v3, v4

    move-wide v5, v11

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "AlarmScheduler"

    .line 816
    invoke-static {v2, v1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static scheduleOnce(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;Z)V
    .locals 6

    const-string v0, "alarm"

    .line 621
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    return-void

    .line 625
    :cond_0
    iget v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    .line 626
    invoke-static {p0, p1}, Lru/okei/timetable/alarm/AlarmScheduler;->alarmIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v3}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v4

    .line 625
    invoke-static {p0, v1, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 627
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lru/okei/timetable/MainActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 628
    iget v4, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    .line 629
    invoke-static {v3}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v3

    .line 628
    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 631
    :try_start_0
    new-instance v3, Landroid/app/AlarmManager$AlarmClockInfo;

    iget-wide v4, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    invoke-direct {v3, v4, v5, v2}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    .line 637
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, ""

    const-string v1, "codes"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 638
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    iget p1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void

    :catch_0
    move-exception p0

    const-string p1, "AlarmScheduler"

    .line 633
    invoke-static {p1, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static schedulePreAlarm(Landroid/content/Context;Landroid/app/AlarmManager;Lru/okei/timetable/alarm/AlarmPlan$Slot;)V
    .locals 6

    .line 931
    iget-wide v0, p2, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    const-wide/32 v2, 0xea60

    sub-long/2addr v0, v2

    .line 932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 935
    :cond_0
    iget v2, p2, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    .line 936
    invoke-static {p0, p2}, Lru/okei/timetable/alarm/AlarmScheduler;->preIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v3, 0x8000000

    invoke-static {v3}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v3

    .line 935
    invoke-static {p0, v2, p2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 938
    :try_start_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt p2, v2, :cond_1

    .line 939
    invoke-virtual {p1, v3, v0, v1, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 941
    :cond_1
    invoke-virtual {p1, v3, v0, v1, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AlarmScheduler"

    .line 944
    invoke-static {p1, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized scheduleSnoozeChain(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;)V
    .locals 27

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    const-class v15, Lru/okei/timetable/alarm/AlarmScheduler;

    monitor-enter v15

    :try_start_0
    const-string v0, "alarm"

    .line 248
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/AlarmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_0

    .line 250
    monitor-exit v15

    return-void

    :cond_0
    const/16 v11, 0xa

    move/from16 v0, p3

    .line 252
    :try_start_1
    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v10, 0x1

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v0, p4

    .line 253
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-nez v13, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    move-object v0, v13

    :goto_0
    if-nez v14, :cond_2

    const-string v4, ""

    goto :goto_1

    :cond_2
    move-object v4, v14

    .line 254
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_4

    mul-int v4, v0, v8

    int-to-long v10, v4

    const-wide/32 v18, 0xea60

    mul-long v10, v10, v18

    add-long/2addr v10, v2

    .line 259
    invoke-static {v10, v11, v5}, Lru/okei/timetable/alarm/AlarmPlan;->codeOf(JI)I

    move-result v4

    add-int/2addr v4, v0

    neg-int v4, v4

    add-int/lit8 v14, v0, 0x1

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u041f\u041e\u0412\u0422\u041e\u0420 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v5, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    const-string v18, "wake"

    move/from16 v19, v4

    move-object v4, v5

    move/from16 v20, v14

    const/4 v13, 0x0

    move-object v14, v5

    move/from16 v5, v19

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-wide v6, v10

    move/from16 v23, v8

    move-object/from16 v8, p5

    move/from16 v24, v9

    move-object/from16 v9, p6

    move-wide/from16 v25, v10

    const/4 v11, 0x1

    move-object v10, v0

    const/4 v13, 0x1

    move-object/from16 v11, v18

    move-object v13, v12

    move-object/from16 v12, v16

    invoke-direct/range {v4 .. v12}, Lru/okei/timetable/alarm/AlarmPlan$Slot;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {v1, v14}, Lru/okei/timetable/alarm/AlarmScheduler;->alarmIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v4, 0x8000000

    invoke-static {v4}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v5

    move/from16 v6, v19

    .line 263
    invoke-static {v1, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 265
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lru/okei/timetable/MainActivity;

    invoke-direct {v5, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v7, 0x14000000

    .line 266
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 268
    invoke-static {v4}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v7

    .line 267
    invoke-static {v1, v6, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    new-instance v7, Landroid/app/AlarmManager$AlarmClockInfo;

    iget-wide v8, v14, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    invoke-direct {v7, v8, v9, v5}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    invoke-virtual {v13, v7, v0}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    const-string v5, "AlarmScheduler"

    .line 273
    invoke-static {v5, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    :goto_3
    invoke-static {v1, v13, v14}, Lru/okei/timetable/alarm/AlarmScheduler;->scheduleAudioLead(Landroid/content/Context;Landroid/app/AlarmManager;Lru/okei/timetable/alarm/AlarmPlan$Slot;)V

    const-wide/16 v7, 0x2710

    sub-long v10, v25, v7

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v17, 0xbb8

    add-long v7, v7, v17

    cmp-long v0, v10, v7

    if-lez v0, :cond_3

    .line 278
    invoke-static {v1, v14}, Lru/okei/timetable/alarm/AlarmScheduler;->preIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "snooze"

    const/4 v7, 0x1

    .line 279
    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    invoke-static {v4}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v4

    .line 280
    invoke-static {v1, v6, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, 0x0

    .line 283
    :try_start_4
    invoke-virtual {v13, v4, v10, v11, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v5, v0

    :try_start_5
    const-string v0, "AlarmScheduler"

    .line 285
    invoke-static {v0, v5}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v5, v21

    .line 288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v8, v22

    .line 289
    invoke-static {v8, v14}, Lru/okei/timetable/alarm/AlarmScheduler;->appendPlanLine(Ljava/lang/StringBuilder;Lru/okei/timetable/alarm/AlarmPlan$Slot;)V

    move-object/from16 v14, p6

    move-object v6, v5

    move-object v7, v8

    move-object v12, v13

    move/from16 v0, v20

    move/from16 v8, v23

    move/from16 v9, v24

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/16 v11, 0xa

    move-object/from16 v13, p5

    goto/16 :goto_2

    :cond_4
    move-object v5, v6

    move/from16 v23, v8

    move/from16 v24, v9

    move-object v8, v7

    .line 291
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "plan"

    const-string v6, ""

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "codes"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 293
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "snooze_at"

    .line 294
    invoke-interface {v6, v7, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "snooze_day"

    move-object/from16 v9, p5

    .line 295
    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "snooze_lesson"

    move-object/from16 v9, p6

    .line 296
    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "snooze_label"

    const-string v9, "\u041f\u041e\u0412\u0422\u041e\u0420"

    .line 297
    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "plan"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v6, "codes"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 300
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chain from="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " step="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 302
    monitor-exit v15

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v15

    throw v0
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .locals 2

    .line 85
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez p1, :cond_0

    .line 87
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->clearSnooze(Landroid/content/Context;)V

    .line 88
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->resetSnoozeCount(Landroid/content/Context;)V

    .line 89
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->clearSnoozed(Landroid/content/Context;)V

    .line 90
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->cancelAll(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static shortDay(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\u041f\u043e\u043d\u0435\u0434\u0435\u043b\u044c\u043d\u0438\u043a"

    .line 970
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u041f\u041d"

    return-object p0

    :cond_0
    const-string v0, "\u0412\u0442\u043e\u0440\u043d\u0438\u043a"

    .line 972
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\u0412\u0422"

    return-object p0

    :cond_1
    const-string v0, "\u0421\u0440\u0435\u0434\u0430"

    .line 974
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "\u0421\u0420"

    return-object p0

    :cond_2
    const-string v0, "\u0427\u0435\u0442\u0432\u0435\u0440\u0433"

    .line 976
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "\u0427\u0422"

    return-object p0

    :cond_3
    const-string v0, "\u041f\u044f\u0442\u043d\u0438\u0446\u0430"

    .line 978
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "\u041f\u0422"

    return-object p0

    :cond_4
    const-string v0, "\u0421\u0443\u0431\u0431\u043e\u0442\u0430"

    .line 980
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "\u0421\u0411"

    return-object p0

    :cond_5
    const-string v0, "\u0412\u043e\u0441\u043a\u0440\u0435\u0441\u0435\u043d\u044c\u0435"

    .line 982
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "\u0412\u0421"

    :cond_6
    return-object p0
.end method

.method public static declared-synchronized snooze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    const-class v0, Lru/okei/timetable/alarm/AlarmScheduler;

    monitor-enter v0

    .line 230
    :try_start_0
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->snoozed(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 231
    monitor-exit v0

    return-void

    .line 233
    :cond_0
    :try_start_1
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->clearSnooze(Landroid/content/Context;)V

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0, p1, p2, v1, v2}, Lru/okei/timetable/alarm/AlarmScheduler;->cancelGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I

    .line 235
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->markSnoozed(Landroid/content/Context;)V

    .line 236
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->bumpSnooze(Landroid/content/Context;)V

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    .line 239
    :cond_2
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 240
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v1, v2

    const-wide/32 v5, 0xea60

    mul-long v1, v1, v5

    add-long v6, v3, v1

    .line 241
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->count(Landroid/content/Context;)I

    move-result v8

    .line 242
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->step(Landroid/content/Context;)I

    move-result v9

    move-object v5, p0

    move-object v10, p1

    move-object v11, p2

    .line 241
    invoke-static/range {v5 .. v11}, Lru/okei/timetable/alarm/AlarmScheduler;->scheduleSnoozeChain(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static snoozeAt(Landroid/content/Context;)J
    .locals 7

    .line 368
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "snooze_at"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-lez p0, :cond_0

    move-wide v1, v3

    :cond_0
    return-wide v1
.end method

.method public static snoozeCount(Landroid/content/Context;)I
    .locals 2

    .line 378
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "snooze_count"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static snoozed(Landroid/content/Context;)Z
    .locals 2

    .line 383
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "snoozed_chain"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static splitPlanLine(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 754
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 755
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v4, :cond_0

    .line 757
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v6, 0x3b

    if-ne v5, v6, :cond_2

    .line 762
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 764
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_3

    goto :goto_2

    .line 768
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 771
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static sync(Landroid/content/Context;Lru/okei/timetable/data/WeekSchedule;)V
    .locals 5

    .line 99
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 103
    new-instance v1, Lru/okei/timetable/alarm/AlarmPlan$Params;

    .line 104
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->lead(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->count(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->step(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lru/okei/timetable/alarm/AlarmPlan$Params;-><init>(III)V

    .line 105
    invoke-static {p1, v0, v1}, Lru/okei/timetable/alarm/AlarmPlan;->build(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;Lru/okei/timetable/alarm/AlarmPlan$Params;)Ljava/util/List;

    move-result-object v1

    .line 106
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->reminders(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->reminderLead(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1, v0, v2}, Lru/okei/timetable/alarm/AlarmPlan;->buildReminders(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    new-instance p1, Lru/okei/timetable/alarm/AlarmScheduler$1;

    invoke-direct {p1}, Lru/okei/timetable/alarm/AlarmScheduler$1;-><init>()V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 115
    :cond_1
    invoke-static {p0, v1}, Lru/okei/timetable/alarm/AlarmScheduler;->apply(Landroid/content/Context;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static test(Landroid/content/Context;I)V
    .locals 11

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1f40

    add-long v6, v0, v2

    .line 509
    new-instance p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    const/16 v0, 0xf

    invoke-static {v6, v7, v0}, Lru/okei/timetable/alarm/AlarmPlan;->codeOf(JI)I

    move-result v5

    const-string v8, "\u041f\u0420\u041e\u0412\u0415\u0420\u041a\u0410"

    const-string v9, "\u0422\u0415\u0421\u0422\u041e\u0412\u042b\u0419 \u0411\u0423\u0414\u0418\u041b\u042c\u041d\u0418\u041a"

    const-string v10, "\u0422\u0415\u0421\u0422"

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lru/okei/timetable/alarm/AlarmPlan$Slot;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 511
    invoke-static {p0, p1, v0}, Lru/okei/timetable/alarm/AlarmScheduler;->scheduleOnce(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;Z)V

    const-string v1, "alarm"

    .line 513
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_0

    return-void

    .line 517
    :cond_0
    iget v2, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    .line 518
    invoke-static {p0, p1}, Lru/okei/timetable/alarm/AlarmScheduler;->preIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v4}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v4

    .line 517
    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 519
    iget-wide v2, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    const-wide/32 v4, 0xea60

    sub-long/2addr v2, v4

    .line 521
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt p1, v4, :cond_1

    .line 522
    invoke-virtual {v1, v0, v2, v3, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {v1, v0, v2, v3, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AlarmScheduler"

    .line 527
    invoke-static {p1, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static testLead(Landroid/content/Context;I)V
    .locals 14

    const-string v0, "alarm"

    .line 533
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    return-void

    .line 537
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x3

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    add-long v12, v1, v3

    .line 538
    new-instance p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    const/16 v1, 0xd

    invoke-static {v12, v13, v1}, Lru/okei/timetable/alarm/AlarmPlan;->codeOf(JI)I

    move-result v6

    const-string v9, "\u041f\u0420\u041e\u0412\u0415\u0420\u041a\u0410"

    const-string v10, "\u0422\u0415\u0421\u0422\u041e\u0412\u042b\u0419 \u0411\u0423\u0414\u0418\u041b\u042c\u041d\u0418\u041a"

    const-string v11, "\u0422\u0415\u0421\u0422"

    move-object v5, p1

    move-wide v7, v12

    invoke-direct/range {v5 .. v11}, Lru/okei/timetable/alarm/AlarmPlan$Slot;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-static {p0, p1}, Lru/okei/timetable/alarm/AlarmScheduler;->audioIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object v5

    iget v6, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    sub-long v7, v12, v3

    move-object v1, p0

    move-object v2, v0

    move-object v3, v5

    move v4, v6

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lru/okei/timetable/alarm/AlarmScheduler;->scheduleExact(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/content/Intent;IJ)Z

    .line 542
    iget v1, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    .line 543
    invoke-static {p0, p1}, Lru/okei/timetable/alarm/AlarmScheduler;->alarmIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v3}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v4

    .line 542
    invoke-static {p0, v1, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 544
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lru/okei/timetable/MainActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x14000000

    .line 545
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 546
    iget v4, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    .line 547
    invoke-static {v3}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v3

    .line 546
    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 548
    invoke-static {p0, v0, p1, v1, v2}, Lru/okei/timetable/alarm/AlarmScheduler;->arm(Landroid/content/Context;Landroid/app/AlarmManager;Lru/okei/timetable/alarm/AlarmPlan$Slot;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    .line 549
    invoke-static {p0, p1}, Lru/okei/timetable/alarm/AlarmScheduler;->remember(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)V

    .line 550
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "testLead at="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static testRepeat(Landroid/content/Context;I)V
    .locals 22

    move-object/from16 v6, p0

    const-string v0, "alarm"

    .line 555
    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/AlarmManager;

    if-nez v7, :cond_0

    return-void

    .line 559
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    add-long v8, v0, v2

    const/16 v0, 0x14

    move/from16 v1, p1

    .line 560
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v10, v0, v2

    const/4 v12, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    int-to-long v1, v0

    mul-long v1, v1, v10

    add-long/2addr v1, v8

    .line 563
    invoke-static {v1, v2, v12}, Lru/okei/timetable/alarm/AlarmPlan;->codeOf(JI)I

    move-result v3

    add-int/2addr v3, v0

    neg-int v4, v3

    .line 564
    new-instance v5, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    const-string v17, "\u041f\u0420\u041e\u0412\u0415\u0420\u041a\u0410"

    const-string v18, "\u0422\u0415\u0421\u0422\u041e\u0412\u042b\u0419 \u041f\u041e\u0412\u0422\u041e\u0420"

    add-int/lit8 v3, v0, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "\u041f\u041e\u0412\u0422\u041e\u0420 "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/2"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "wake"

    const-string v21, "\u041f\u0420\u041e\u0412\u0415\u0420\u041a\u0410|\u0422\u0415\u0421\u0422"

    move-object v13, v5

    move v14, v4

    move-wide v15, v1

    invoke-direct/range {v13 .. v21}, Lru/okei/timetable/alarm/AlarmPlan$Slot;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {v6, v5}, Lru/okei/timetable/alarm/AlarmScheduler;->audioIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object v13

    const-wide/16 v14, 0x2710

    sub-long v14, v1, v14

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v13

    move v13, v3

    move v3, v4

    move v12, v4

    move/from16 v16, v13

    move-object v13, v5

    move-wide v4, v14

    invoke-static/range {v0 .. v5}, Lru/okei/timetable/alarm/AlarmScheduler;->scheduleExact(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/content/Intent;IJ)Z

    .line 570
    invoke-static {v6, v13}, Lru/okei/timetable/alarm/AlarmScheduler;->alarmIntent(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-static {v1}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v2

    .line 569
    invoke-static {v6, v12, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 571
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lru/okei/timetable/MainActivity;

    invoke-direct {v2, v6, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x14000000

    .line 572
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 574
    invoke-static {v1}, Lru/okei/timetable/alarm/AlarmScheduler;->flags(I)I

    move-result v1

    .line 573
    invoke-static {v6, v12, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 575
    invoke-static {v6, v7, v13, v0, v1}, Lru/okei/timetable/alarm/AlarmScheduler;->arm(Landroid/content/Context;Landroid/app/AlarmManager;Lru/okei/timetable/alarm/AlarmPlan$Slot;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    .line 576
    invoke-static {v6, v13}, Lru/okei/timetable/alarm/AlarmScheduler;->remember(Landroid/content/Context;Lru/okei/timetable/alarm/AlarmPlan$Slot;)V

    move/from16 v0, v16

    const/4 v12, 0x0

    goto :goto_0

    .line 578
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "testRepeat base="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_4

    const/16 v0, 0x5c

    .line 730
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_2

    .line 733
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 735
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 736
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v4, :cond_1

    .line 738
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    if-ne v5, v0, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    .line 743
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 746
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    if-nez p0, :cond_5

    const-string p0, ""

    :cond_5
    return-object p0
.end method
