.class public Lru/okei/timetable/alarm/PreAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PreAlarmReceiver.java"


# static fields
.field private static final FRESH_MS:J = 0x15f90L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    if-eqz v7, :cond_6

    .line 15
    invoke-static/range {p1 .. p1}, Lru/okei/timetable/alarm/AlarmScheduler;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "code"

    const/4 v8, 0x0

    .line 18
    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v0, "at"

    const-wide/16 v1, 0x0

    .line 19
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v0, "day"

    .line 20
    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "lesson"

    .line 21
    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v0, "label"

    .line 22
    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v0, "kind"

    .line 23
    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v10, v1

    if-gtz v5, :cond_1

    return-void

    :cond_1
    cmp-long v1, v3, v10

    if-gez v1, :cond_6

    sub-long v4, v10, v3

    const-wide/32 v1, 0x493e0

    cmp-long v3, v4, v1

    if-lez v3, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v1, "remind"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 37
    :cond_3
    invoke-static {v6, v9, v10, v11}, Lru/okei/timetable/alarm/AlarmScheduler;->isPlanned(Landroid/content/Context;IJ)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    const-wide/32 v15, 0x15f90

    move-object/from16 v0, p1

    move v1, v9

    move-wide v2, v10

    move/from16 v17, v9

    move-wide v8, v4

    move-wide v4, v15

    .line 40
    invoke-static/range {v0 .. v5}, Lru/okei/timetable/alarm/AlarmScheduler;->claimPreScreen(Landroid/content/Context;IJJ)Z

    move-result v0

    if-nez v0, :cond_5

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pre duplicate at="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pre at="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "snooze"

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 47
    invoke-static/range {p1 .. p2}, Lru/okei/timetable/alarm/AlarmScheduler;->savePendingAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-wide v2, v10

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move v7, v8

    .line 48
    invoke-static/range {v0 .. v7}, Lru/okei/timetable/Notifier;->showPre(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    :goto_0
    return-void
.end method
