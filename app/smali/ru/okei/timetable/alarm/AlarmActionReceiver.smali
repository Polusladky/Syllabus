.class public Lru/okei/timetable/alarm/AlarmActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmActionReceiver.java"


# static fields
.field public static final ACTION_CLOSE:Ljava/lang/String; = "ru.okei.timetable.CLOSE_OVERLAY"

.field public static final ACTION_DISMISS:Ljava/lang/String; = "ru.okei.timetable.DISMISS"

.field public static final ACTION_SNOOZE:Ljava/lang/String; = "ru.okei.timetable.SNOOZE"

.field public static final EXTRA_SNOOZED:Ljava/lang/String; = "snoozed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    const/4 v2, 0x0

    .line 22
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "day"

    .line 23
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lesson"

    .line 24
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-static {p1, v1}, Lru/okei/timetable/Notifier;->cancel(Landroid/content/Context;I)V

    .line 27
    invoke-static {p1}, Lru/okei/timetable/alarm/AlarmScheduler;->clearPending(Landroid/content/Context;)V

    .line 28
    invoke-static {p1}, Lru/okei/timetable/alarm/AlarmScheduler;->clearAudioLead(Landroid/content/Context;)V

    const-string v1, "ru.okei.timetable.SNOOZE"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-static {p1}, Lru/okei/timetable/alarm/AlarmScheduler;->snoozed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lru/okei/timetable/alarm/AlarmScheduler;->canSnooze(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    .line 33
    invoke-static {p1, v3, p2, v0}, Lru/okei/timetable/alarm/AlarmScheduler;->snooze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 37
    invoke-static {p1}, Lru/okei/timetable/alarm/AlarmAudio;->stop(Landroid/content/Context;)V

    .line 38
    invoke-static {p1}, Lru/okei/timetable/alarm/AlarmAudio;->snooze(Landroid/content/Context;)V

    if-eqz v3, :cond_3

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v3, p2, v0, v1}, Lru/okei/timetable/alarm/AlarmScheduler;->cancelGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I

    goto :goto_0

    .line 43
    :cond_2
    invoke-static {p1}, Lru/okei/timetable/alarm/AlarmAudio;->stop(Landroid/content/Context;)V

    if-eqz v3, :cond_3

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v3, p2, v0, v1}, Lru/okei/timetable/alarm/AlarmScheduler;->cancelGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I

    .line 49
    :cond_3
    :goto_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "ru.okei.timetable.CLOSE_OVERLAY"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "snoozed"

    .line 51
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
