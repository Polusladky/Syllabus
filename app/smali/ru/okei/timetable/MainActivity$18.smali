.class Lru/okei/timetable/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity;->onAlarmsEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/MainActivity;

.field final synthetic val$snapshot:Lru/okei/timetable/data/WeekSchedule;


# direct methods
.method constructor <init>(Lru/okei/timetable/MainActivity;Lru/okei/timetable/data/WeekSchedule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 781
    iput-object p1, p0, Lru/okei/timetable/MainActivity$18;->this$0:Lru/okei/timetable/MainActivity;

    iput-object p2, p0, Lru/okei/timetable/MainActivity$18;->val$snapshot:Lru/okei/timetable/data/WeekSchedule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 784
    iget-object v0, p0, Lru/okei/timetable/MainActivity$18;->this$0:Lru/okei/timetable/MainActivity;

    iget-object v1, p0, Lru/okei/timetable/MainActivity$18;->val$snapshot:Lru/okei/timetable/data/WeekSchedule;

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmScheduler;->sync(Landroid/content/Context;Lru/okei/timetable/data/WeekSchedule;)V

    .line 785
    iget-object v0, p0, Lru/okei/timetable/MainActivity$18;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetmain(Lru/okei/timetable/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/MainActivity$18$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/MainActivity$18$1;-><init>(Lru/okei/timetable/MainActivity$18;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
