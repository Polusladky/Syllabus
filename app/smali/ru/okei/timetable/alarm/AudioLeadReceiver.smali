.class public Lru/okei/timetable/alarm/AudioLeadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioLeadReceiver.java"


# static fields
.field private static final LATE_MS:J = 0xbb8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    if-eqz p2, :cond_6

    .line 19
    invoke-static {p1}, Lru/okei/timetable/alarm/AlarmScheduler;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "code"

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "at"

    const-wide/16 v4, 0x0

    .line 23
    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "day"

    .line 24
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "lesson"

    .line 25
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "label"

    .line 26
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "snooze"

    .line 27
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v10, v6, v4

    if-gtz v10, :cond_1

    return-void

    :cond_1
    const-wide/16 v4, 0x5dc

    sub-long v4, v6, v4

    cmp-long v10, v1, v4

    if-ltz v10, :cond_2

    return-void

    :cond_2
    const-wide/16 v4, 0x2710

    sub-long v4, v6, v4

    sub-long v4, v1, v4

    const-wide/16 v10, 0x32c8

    cmp-long v12, v4, v10

    if-lez v12, :cond_3

    return-void

    .line 41
    :cond_3
    invoke-static {p1, v3, v6, v7}, Lru/okei/timetable/alarm/AlarmScheduler;->isPlanned(Landroid/content/Context;IJ)Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    .line 44
    :cond_4
    invoke-static {p1, v3, v6, v7}, Lru/okei/timetable/alarm/AlarmScheduler;->claimAudioLead(Landroid/content/Context;IJ)Z

    move-result v4

    if-nez v4, :cond_5

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "lead duplicate at="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_5
    sub-long v1, v6, v1

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lead at="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " in="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms repeat="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    move-object v2, p1

    move-wide v4, v6

    move-object v6, v0

    move-object v7, v8

    move-object v8, v9

    move v9, p2

    .line 49
    invoke-static/range {v2 .. v9}, Lru/okei/timetable/alarm/AlarmAudio;->prepare(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    :goto_0
    return-void
.end method
