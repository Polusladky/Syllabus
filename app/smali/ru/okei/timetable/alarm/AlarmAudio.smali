.class public final Lru/okei/timetable/alarm/AlarmAudio;
.super Ljava/lang/Object;
.source "AlarmAudio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/alarm/AlarmAudio$Ui;
    }
.end annotation


# static fields
.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PREPARED:I = 0x1

.field public static final STATE_RINGING:I = 0x2

.field static volatile service:Lru/okei/timetable/alarm/AlarmAudioService;

.field private static volatile ui:Lru/okei/timetable/alarm/AlarmAudio$Ui;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static attach(Lru/okei/timetable/alarm/AlarmAudioService;)V
    .locals 0

    .line 44
    sput-object p0, Lru/okei/timetable/alarm/AlarmAudio;->service:Lru/okei/timetable/alarm/AlarmAudioService;

    return-void
.end method

.method static detach(Lru/okei/timetable/alarm/AlarmAudioService;)V
    .locals 1

    .line 48
    sget-object v0, Lru/okei/timetable/alarm/AlarmAudio;->service:Lru/okei/timetable/alarm/AlarmAudioService;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    .line 49
    sput-object p0, Lru/okei/timetable/alarm/AlarmAudio;->service:Lru/okei/timetable/alarm/AlarmAudioService;

    :cond_0
    return-void
.end method

.method public static prepare(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    const-string v1, "ru.okei.timetable.action.AUDIO_PREPARE"

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    .line 70
    invoke-static/range {v0 .. v8}, Lru/okei/timetable/alarm/AlarmAudio;->start(Landroid/content/Context;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static ready()Z
    .locals 1

    .line 54
    sget-object v0, Lru/okei/timetable/alarm/AlarmAudio;->service:Lru/okei/timetable/alarm/AlarmAudioService;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->alive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ring(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    const-string v1, "ru.okei.timetable.action.AUDIO_RING"

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    .line 75
    invoke-static/range {v0 .. v8}, Lru/okei/timetable/alarm/AlarmAudio;->start(Landroid/content/Context;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static sessionId()I
    .locals 1

    .line 64
    sget-object v0, Lru/okei/timetable/alarm/AlarmAudio;->service:Lru/okei/timetable/alarm/AlarmAudioService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->sessionId()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static setUi(Lru/okei/timetable/alarm/AlarmAudio$Ui;)V
    .locals 0

    .line 36
    sput-object p0, Lru/okei/timetable/alarm/AlarmAudio;->ui:Lru/okei/timetable/alarm/AlarmAudio$Ui;

    return-void
.end method

.method public static snooze(Landroid/content/Context;)V
    .locals 10

    .line 88
    sget-object v0, Lru/okei/timetable/alarm/AlarmAudio;->service:Lru/okei/timetable/alarm/AlarmAudioService;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 90
    invoke-virtual {v0, p0}, Lru/okei/timetable/alarm/AlarmAudioService;->requestStop(Z)V

    return-void

    :cond_0
    const-string v2, "ru.okei.timetable.action.AUDIO_SNOOZE"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    .line 93
    invoke-static/range {v1 .. v9}, Lru/okei/timetable/alarm/AlarmAudio;->start(Landroid/content/Context;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static start(Landroid/content/Context;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    move-object v1, p0

    move-object v2, p1

    if-nez v1, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "code"

    move v4, p2

    .line 103
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "at"

    move-wide v5, p3

    .line 104
    invoke-virtual {v0, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "day"

    move-object/from16 v7, p5

    .line 105
    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "lesson"

    move-object/from16 v8, p6

    .line 106
    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "label"

    move-object/from16 v9, p7

    .line 107
    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "snooze"

    move/from16 v10, p8

    .line 108
    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    .line 110
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v0, v10, :cond_1

    .line 111
    invoke-virtual {p0, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v10, "AlarmAudio"

    .line 116
    invoke-static {v10, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    :try_start_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 120
    invoke-static {v10, v3}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "ru.okei.timetable.action.AUDIO_PREPARE"

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ru.okei.timetable.action.AUDIO_RING"

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    move-object v1, p0

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move v8, v0

    .line 124
    :try_start_2
    invoke-static/range {v1 .. v8}, Lru/okei/timetable/Notifier;->show(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 126
    invoke-static {v10, v1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static state()I
    .locals 1

    .line 59
    sget-object v0, Lru/okei/timetable/alarm/AlarmAudio;->service:Lru/okei/timetable/alarm/AlarmAudioService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->state()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 10

    .line 79
    sget-object v0, Lru/okei/timetable/alarm/AlarmAudio;->service:Lru/okei/timetable/alarm/AlarmAudioService;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 81
    invoke-virtual {v0, p0}, Lru/okei/timetable/alarm/AlarmAudioService;->requestStop(Z)V

    return-void

    :cond_0
    const-string v2, "ru.okei.timetable.action.AUDIO_STOP"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    .line 84
    invoke-static/range {v1 .. v9}, Lru/okei/timetable/alarm/AlarmAudio;->start(Landroid/content/Context;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static ui()Lru/okei/timetable/alarm/AlarmAudio$Ui;
    .locals 1

    .line 40
    sget-object v0, Lru/okei/timetable/alarm/AlarmAudio;->ui:Lru/okei/timetable/alarm/AlarmAudio$Ui;

    return-object v0
.end method
