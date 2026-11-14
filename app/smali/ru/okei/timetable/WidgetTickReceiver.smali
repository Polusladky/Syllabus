.class public Lru/okei/timetable/WidgetTickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WidgetTickReceiver.java"


# static fields
.field public static final ACTION_TICK:Ljava/lang/String; = "ru.okei.timetable.WIDGET_TICK"

.field private static final PERIOD:J = 0xea60L

.field private static final REQUEST:I = 0x5b


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    const-string v0, "alarm"

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lru/okei/timetable/WidgetTickReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ru.okei.timetable.WIDGET_TICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 59
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    const/high16 v2, 0xc000000

    goto :goto_0

    :cond_1
    const/high16 v2, 0x8000000

    :goto_0
    const/16 v3, 0x5b

    .line 62
    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "WidgetTickReceiver"

    .line 65
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 8

    :try_start_0
    const-string v0, "alarm"

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lru/okei/timetable/WidgetTickReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ru.okei.timetable.WIDGET_TICK"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 39
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    const/high16 v2, 0xc000000

    goto :goto_0

    :cond_1
    const/high16 v2, 0x8000000

    :goto_0
    const/16 v3, 0x5b

    .line 42
    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v2, 0x1

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "WidgetTickReceiver"

    .line 46
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "\u0432\u0438\u0434\u0436\u0435\u0442: \u043f\u043b\u0430\u043d\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435"

    .line 47
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 23
    :try_start_0
    invoke-static {p1}, Lru/okei/timetable/ScheduleWidget;->refresh(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "WidgetTickReceiver"

    .line 25
    invoke-static {v0, p2}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "\u0432\u0438\u0434\u0436\u0435\u0442: \u0442\u0438\u043a"

    .line 26
    invoke-static {v0, p2}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :goto_0
    invoke-static {p1}, Lru/okei/timetable/WidgetTickReceiver;->schedule(Landroid/content/Context;)V

    return-void
.end method
