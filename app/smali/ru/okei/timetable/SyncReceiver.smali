.class public Lru/okei/timetable/SyncReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncReceiver.java"


# static fields
.field public static final ACTION_SYNC:Ljava/lang/String; = "ru.okei.timetable.SYNC_MORNING"

.field private static final HOUR:I = 0x6

.field private static final REQUEST:I = 0x4d


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static scheduleNext(Landroid/content/Context;)V
    .locals 8

    :try_start_0
    const-string v0, "alarm"

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lru/okei/timetable/SyncReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ru.okei.timetable.SYNC_MORNING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 75
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    const/high16 v2, 0xc000000

    goto :goto_0

    :cond_1
    const/high16 v2, 0x8000000

    :goto_0
    const/16 v3, 0x4d

    .line 78
    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xb

    const/4 v2, 0x6

    .line 80
    invoke-virtual {p0, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p0, v0, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 82
    invoke-virtual {p0, v0, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 83
    invoke-virtual {p0, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 84
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v2, v0}, Ljava/util/Calendar;->add(II)V

    :cond_2
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "SyncReceiver"

    .line 90
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "\u0443\u0442\u0440\u0435\u043d\u043d\u044f\u044f \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f: \u043f\u043b\u0430\u043d\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435"

    .line 91
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lru/okei/timetable/SyncReceiver;->scheduleNext(Landroid/content/Context;)V

    .line 27
    invoke-static {p1}, Lru/okei/timetable/SiteChangesSync;->syncAsync(Landroid/content/Context;)V

    .line 28
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lru/okei/timetable/SyncReceiver$1;

    invoke-direct {v0, p0, p1}, Lru/okei/timetable/SyncReceiver$1;-><init>(Lru/okei/timetable/SyncReceiver;Landroid/content/Context;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
