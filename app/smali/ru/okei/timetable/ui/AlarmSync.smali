.class public final Lru/okei/timetable/ui/AlarmSync;
.super Ljava/lang/Object;
.source "AlarmSync.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static run(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lru/okei/timetable/data/WeekSchedule;Ljava/lang/Runnable;)V
    .locals 1

    .line 19
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    .line 21
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    if-nez p3, :cond_2

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 30
    new-instance v0, Lru/okei/timetable/ui/AlarmSync$1;

    invoke-direct {v0, p0, p3, p2, p4}, Lru/okei/timetable/ui/AlarmSync$1;-><init>(Landroid/content/Context;Lru/okei/timetable/data/WeekSchedule;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
