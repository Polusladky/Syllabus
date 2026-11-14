.class Lru/okei/timetable/RefreshReceiver$1;
.super Ljava/lang/Object;
.source "RefreshReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/RefreshReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/RefreshReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pending:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lru/okei/timetable/RefreshReceiver;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lru/okei/timetable/RefreshReceiver$1;->this$0:Lru/okei/timetable/RefreshReceiver;

    iput-object p2, p0, Lru/okei/timetable/RefreshReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lru/okei/timetable/RefreshReceiver$1;->val$pending:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 20
    :try_start_0
    iget-object v0, p0, Lru/okei/timetable/RefreshReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lru/okei/timetable/data/Groups;->url(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lru/okei/timetable/Http;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lru/okei/timetable/data/ScheduleParser;->parse(Ljava/lang/String;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v1}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 23
    iget-object v2, p0, Lru/okei/timetable/RefreshReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v0, v3, v4}, Lru/okei/timetable/data/Cache;->write(Landroid/content/Context;Ljava/lang/String;J)V

    .line 24
    iget-object v0, p0, Lru/okei/timetable/RefreshReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmScheduler;->sync(Landroid/content/Context;Lru/okei/timetable/data/WeekSchedule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "RefreshReceiver"

    .line 27
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :cond_0
    :goto_0
    iget-object v0, p0, Lru/okei/timetable/RefreshReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmScheduler;->scheduleMaintenance(Landroid/content/Context;)V

    .line 31
    iget-object v0, p0, Lru/okei/timetable/RefreshReceiver$1;->val$pending:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    .line 30
    :goto_1
    iget-object v1, p0, Lru/okei/timetable/RefreshReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lru/okei/timetable/alarm/AlarmScheduler;->scheduleMaintenance(Landroid/content/Context;)V

    .line 31
    iget-object v1, p0, Lru/okei/timetable/RefreshReceiver$1;->val$pending:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 32
    throw v0
.end method
