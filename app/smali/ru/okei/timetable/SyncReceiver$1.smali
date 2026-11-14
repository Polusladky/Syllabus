.class Lru/okei/timetable/SyncReceiver$1;
.super Ljava/lang/Object;
.source "SyncReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SyncReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SyncReceiver;

.field final synthetic val$app:Landroid/content/Context;


# direct methods
.method constructor <init>(Lru/okei/timetable/SyncReceiver;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lru/okei/timetable/SyncReceiver$1;->this$0:Lru/okei/timetable/SyncReceiver;

    iput-object p2, p0, Lru/okei/timetable/SyncReceiver$1;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "\u0443\u0442\u0440\u0435\u043d\u043d\u044f\u044f \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f"

    const-string v1, "\u043d\u0435\u0434\u0435\u043b\u044f \u043d\u0435 \u043f\u0440\u0438\u043d\u044f\u0442\u0430: "

    .line 32
    :try_start_0
    iget-object v2, p0, Lru/okei/timetable/SyncReceiver$1;->val$app:Landroid/content/Context;

    invoke-static {v2}, Lru/okei/timetable/data/Groups;->current(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-static {v2}, Lru/okei/timetable/data/Groups;->urlFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4e20

    invoke-static {v3, v4}, Lru/okei/timetable/Http;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-static {v3}, Lru/okei/timetable/data/ScheduleParser;->parse(Ljava/lang/String;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 35
    invoke-virtual {v4}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 39
    :cond_0
    invoke-static {v4}, Lru/okei/timetable/data/ParserHealth;->doubt(Lru/okei/timetable/data/WeekSchedule;)Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_1
    iget-object v1, p0, Lru/okei/timetable/SyncReceiver$1;->val$app:Landroid/content/Context;

    invoke-static {v1, v2}, Lru/okei/timetable/data/Cache;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 46
    :cond_2
    invoke-static {v1}, Lru/okei/timetable/data/ScheduleParser;->parse(Ljava/lang/String;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    .line 47
    iget-object v5, v1, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    iget-object v6, v4, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 49
    invoke-virtual {v1}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v1

    invoke-virtual {v4}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v4

    if-eq v1, v4, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 51
    :goto_1
    iget-object v4, p0, Lru/okei/timetable/SyncReceiver$1;->val$app:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v2, v3, v5, v6}, Lru/okei/timetable/data/Cache;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 52
    invoke-static {}, Lru/okei/timetable/MainActivity;->forgetWeek()V

    .line 53
    iget-object v2, p0, Lru/okei/timetable/SyncReceiver$1;->val$app:Landroid/content/Context;

    invoke-static {v2}, Lru/okei/timetable/ScheduleWidget;->refresh(Landroid/content/Context;)V

    if-eqz v1, :cond_6

    .line 56
    iget-object v1, p0, Lru/okei/timetable/SyncReceiver$1;->val$app:Landroid/content/Context;

    const v2, 0x7f0600c7

    .line 57
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v1, v2}, Lru/okei/timetable/Notifier;->showScheduleUpdated(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_2
    const-string v1, "\u043d\u0430 \u0441\u0430\u0439\u0442\u0435 \u043d\u0435\u0442 \u043f\u0430\u0440"

    .line 36
    invoke-static {v0, v1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "SyncReceiver"

    .line 60
    invoke-static {v2, v1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    invoke-static {v0, v1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-void
.end method
