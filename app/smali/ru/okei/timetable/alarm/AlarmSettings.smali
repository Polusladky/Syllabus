.class public final Lru/okei/timetable/alarm/AlarmSettings;
.super Ljava/lang/Object;
.source "AlarmSettings.java"


# static fields
.field public static final COUNT_DEFAULT:I = 0x4

.field public static final COUNT_MAX:I = 0xa

.field public static final COUNT_MIN:I = 0x1

.field private static final KEY_COUNT:Ljava/lang/String; = "count"

.field private static final KEY_LEAD:Ljava/lang/String; = "lead"

.field private static final KEY_SONG:Ljava/lang/String; = "song_uri"

.field private static final KEY_SONG_TITLE:Ljava/lang/String; = "song_title"

.field private static final KEY_STEP:Ljava/lang/String; = "step"

.field public static final LEAD_DEFAULT:I = 0x78

.field public static final LEAD_MAX:I = 0xf0

.field public static final LEAD_MIN:I = 0x1e

.field public static final LEAD_STEP:I = 0xf

.field private static final PREFS:Ljava/lang/String; = "alarm_settings"

.field public static final REMIND_DEFAULT:I = 0xf

.field public static final REMIND_MAX:I = 0x3c

.field public static final REMIND_MIN:I = 0x5

.field public static final REMIND_STEP:I = 0x5

.field public static final STEP_DEFAULT:I = 0x5

.field public static final STEP_MAX:I = 0x1e

.field public static final STEP_MIN:I = 0x1

.field public static final STEP_STEP:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beatByMusic(Landroid/content/Context;)Z
    .locals 2

    .line 82
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "beat_by_music"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static bumpCount(Landroid/content/Context;I)V
    .locals 1

    .line 58
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->count(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lru/okei/timetable/alarm/AlarmSettings;->setCount(Landroid/content/Context;I)V

    return-void
.end method

.method public static bumpLead(Landroid/content/Context;I)V
    .locals 1

    .line 54
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->lead(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lru/okei/timetable/alarm/AlarmSettings;->setLead(Landroid/content/Context;I)V

    return-void
.end method

.method public static bumpReminderLead(Landroid/content/Context;I)V
    .locals 2

    .line 103
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->reminderLead(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p0, p1

    const/4 p1, 0x5

    const/16 v1, 0x3c

    invoke-static {p0, p1, v1}, Lru/okei/timetable/alarm/AlarmSettings;->clamp(III)I

    move-result p0

    const-string p1, "remind_lead"

    .line 103
    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 104
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static bumpStep(Landroid/content/Context;I)V
    .locals 1

    .line 62
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->step(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lru/okei/timetable/alarm/AlarmSettings;->setStep(Landroid/content/Context;I)V

    return-void
.end method

.method private static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static clearSong(Landroid/content/Context;)V
    .locals 1

    .line 157
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "song_uri"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "song_title"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static count(Landroid/content/Context;)I
    .locals 2

    .line 46
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "count"

    const/4 v1, 0x4

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Lru/okei/timetable/alarm/AlarmSettings;->clamp(III)I

    move-result p0

    return p0
.end method

.method public static lead(Landroid/content/Context;)I
    .locals 2

    .line 42
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "lead"

    const/16 v1, 0x78

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x1e

    const/16 v1, 0xf0

    invoke-static {p0, v0, v1}, Lru/okei/timetable/alarm/AlarmSettings;->clamp(III)I

    move-result p0

    return p0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "alarm_settings"

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static reminderLead(Landroid/content/Context;)I
    .locals 2

    .line 99
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "remind_lead"

    const/16 v1, 0xf

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x5

    const/16 v1, 0x3c

    invoke-static {p0, v0, v1}, Lru/okei/timetable/alarm/AlarmSettings;->clamp(III)I

    move-result p0

    return p0
.end method

.method public static reminders(Landroid/content/Context;)Z
    .locals 2

    .line 91
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "reminders"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setBeatByMusic(Landroid/content/Context;Z)V
    .locals 1

    .line 113
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "beat_by_music"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setCount(Landroid/content/Context;I)V
    .locals 2

    .line 70
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-static {p1, v0, v1}, Lru/okei/timetable/alarm/AlarmSettings;->clamp(III)I

    move-result p1

    const-string v0, "count"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLead(Landroid/content/Context;I)V
    .locals 2

    .line 66
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/16 v0, 0x1e

    const/16 v1, 0xf0

    invoke-static {p1, v0, v1}, Lru/okei/timetable/alarm/AlarmSettings;->clamp(III)I

    move-result p1

    const-string v0, "lead"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setReminderLead(Landroid/content/Context;I)V
    .locals 2

    .line 108
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x3c

    .line 109
    invoke-static {p1, v0, v1}, Lru/okei/timetable/alarm/AlarmSettings;->clamp(III)I

    move-result p1

    const-string v0, "remind_lead"

    .line 108
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 109
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setReminders(Landroid/content/Context;Z)V
    .locals 1

    .line 95
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "reminders"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 150
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "song_uri"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    const-string p1, "song_title"

    .line 152
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 153
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setStep(Landroid/content/Context;I)V
    .locals 2

    .line 74
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    const/16 v1, 0x1e

    invoke-static {p1, v0, v1}, Lru/okei/timetable/alarm/AlarmSettings;->clamp(III)I

    move-result p1

    const-string v0, "step"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setVibration(Landroid/content/Context;I)V
    .locals 2

    .line 121
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lru/okei/timetable/alarm/AlarmSettings;->clamp(III)I

    move-result p1

    const-string v0, "vibration"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setVolumeRamp(Landroid/content/Context;Z)V
    .locals 1

    .line 129
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "volume_ramp"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static songTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 146
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "song_title"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static songUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 133
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "song_uri"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "AlarmSettings"

    .line 140
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static step(Landroid/content/Context;)I
    .locals 2

    .line 50
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "step"

    const/4 v1, 0x5

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0x1e

    invoke-static {p0, v0, v1}, Lru/okei/timetable/alarm/AlarmSettings;->clamp(III)I

    move-result p0

    return p0
.end method

.method public static vibration(Landroid/content/Context;)I
    .locals 2

    .line 117
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "vibration"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lru/okei/timetable/alarm/AlarmSettings;->clamp(III)I

    move-result p0

    return p0
.end method

.method public static volumeRamp(Landroid/content/Context;)Z
    .locals 2

    .line 125
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "volume_ramp"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
