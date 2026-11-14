.class public Lru/okei/timetable/alarm/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v9, "code"

    const/4 v10, 0x0

    .line 18
    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v12, "at"

    invoke-virtual {v1, v12, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v15, "day"

    .line 20
    invoke-virtual {v1, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "lesson"

    .line 21
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "label"

    .line 22
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "kind"

    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "snooze"

    move-object/from16 v16, v15

    .line 24
    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    const-wide/16 v17, 0x0

    cmp-long v19, v13, v17

    if-lez v19, :cond_1

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v13

    const-wide/32 v19, 0x2bf20

    cmp-long v21, v17, v19

    if-lez v21, :cond_1

    .line 27
    invoke-static {v0, v11}, Lru/okei/timetable/Notifier;->cancel(Landroid/content/Context;I)V

    .line 28
    invoke-static/range {p1 .. p1}, Lru/okei/timetable/alarm/AlarmScheduler;->clearPending(Landroid/content/Context;)V

    return-void

    :cond_1
    const-string v10, "remind"

    .line 32
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v1, p1

    move v2, v11

    move-object v10, v3

    move-wide v3, v13

    move-object v5, v8

    move-object v7, v10

    .line 33
    invoke-static/range {v1 .. v7}, Lru/okei/timetable/Notifier;->showReminder(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move-object v10, v3

    const-string v2, "power"

    .line 37
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v3, "keyguard"

    .line 39
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    const/16 v18, 0x1

    if-eqz v2, :cond_3

    .line 40
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 41
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_5

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 43
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "alarm code="

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " onlyNotification="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " repeat="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    invoke-static/range {p1 .. p2}, Lru/okei/timetable/alarm/AlarmScheduler;->savePendingAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    .line 47
    invoke-static/range {p1 .. p1}, Lru/okei/timetable/alarm/AlarmScheduler;->clearAudioLead(Landroid/content/Context;)V

    xor-int/lit8 v18, v3, 0x1

    move-object/from16 v1, p1

    move v2, v11

    move/from16 v19, v3

    move-object/from16 v22, v4

    move-wide v3, v13

    move-object/from16 v23, v5

    move-object v5, v8

    move-object/from16 p2, v6

    move-object/from16 v24, v7

    move-object v7, v10

    move-object/from16 v20, v8

    move/from16 v8, v18

    .line 48
    invoke-static/range {v1 .. v8}, Lru/okei/timetable/Notifier;->show(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    invoke-static {v0, v13, v14}, Lru/okei/timetable/alarm/AlarmScheduler;->recordFire(Landroid/content/Context;J)V

    move-object/from16 v5, v20

    move v8, v15

    .line 52
    invoke-static/range {v1 .. v8}, Lru/okei/timetable/alarm/AlarmAudio;->ring(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v19, :cond_6

    return-void

    .line 59
    :cond_6
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lru/okei/timetable/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x34000000

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    invoke-virtual {v1, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    invoke-virtual {v1, v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v3, v16

    move-object/from16 v2, v20

    .line 65
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v2, p2

    move-object/from16 v3, v24

    .line 66
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v2, v23

    .line 67
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pre"

    const/4 v3, 0x0

    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v2, v22

    .line 69
    invoke-virtual {v1, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "AlarmReceiver"

    .line 72
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
