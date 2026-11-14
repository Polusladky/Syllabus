.class Lru/okei/timetable/ui/AlarmSync$1;
.super Ljava/lang/Object;
.source "AlarmSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ui/AlarmSync;->run(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lru/okei/timetable/data/WeekSchedule;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$main:Landroid/os/Handler;

.field final synthetic val$snapshot:Lru/okei/timetable/data/WeekSchedule;

.field final synthetic val$whenDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lru/okei/timetable/data/WeekSchedule;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lru/okei/timetable/ui/AlarmSync$1;->val$app:Landroid/content/Context;

    iput-object p2, p0, Lru/okei/timetable/ui/AlarmSync$1;->val$snapshot:Lru/okei/timetable/data/WeekSchedule;

    iput-object p3, p0, Lru/okei/timetable/ui/AlarmSync$1;->val$main:Landroid/os/Handler;

    iput-object p4, p0, Lru/okei/timetable/ui/AlarmSync$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 33
    iget-object v0, p0, Lru/okei/timetable/ui/AlarmSync$1;->val$app:Landroid/content/Context;

    iget-object v1, p0, Lru/okei/timetable/ui/AlarmSync$1;->val$snapshot:Lru/okei/timetable/data/WeekSchedule;

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmScheduler;->sync(Landroid/content/Context;Lru/okei/timetable/data/WeekSchedule;)V

    .line 34
    iget-object v0, p0, Lru/okei/timetable/ui/AlarmSync$1;->val$main:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/okei/timetable/ui/AlarmSync$1;->val$whenDone:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
