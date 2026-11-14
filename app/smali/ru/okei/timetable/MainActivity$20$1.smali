.class Lru/okei/timetable/MainActivity$20$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/MainActivity$20;

.field final synthetic val$parsed:Lru/okei/timetable/data/WeekSchedule;


# direct methods
.method constructor <init>(Lru/okei/timetable/MainActivity$20;Lru/okei/timetable/data/WeekSchedule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 976
    iput-object p1, p0, Lru/okei/timetable/MainActivity$20$1;->this$1:Lru/okei/timetable/MainActivity$20;

    iput-object p2, p0, Lru/okei/timetable/MainActivity$20$1;->val$parsed:Lru/okei/timetable/data/WeekSchedule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 979
    iget-object v0, p0, Lru/okei/timetable/MainActivity$20$1;->this$1:Lru/okei/timetable/MainActivity$20;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$20;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetschedule(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/ui/ScheduleState;

    move-result-object v0

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->parsedWeek:Lru/okei/timetable/data/WeekSchedule;

    if-nez v0, :cond_1

    iget-object v0, p0, Lru/okei/timetable/MainActivity$20$1;->this$1:Lru/okei/timetable/MainActivity$20;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$20;->this$0:Lru/okei/timetable/MainActivity;

    invoke-virtual {v0}, Lru/okei/timetable/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 982
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity$20$1;->this$1:Lru/okei/timetable/MainActivity$20;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$20;->this$0:Lru/okei/timetable/MainActivity;

    iget-object v1, p0, Lru/okei/timetable/MainActivity$20$1;->val$parsed:Lru/okei/timetable/data/WeekSchedule;

    iget-object v2, p0, Lru/okei/timetable/MainActivity$20$1;->this$1:Lru/okei/timetable/MainActivity$20;

    iget-object v2, v2, Lru/okei/timetable/MainActivity$20;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v2}, Lru/okei/timetable/data/Cache;->time(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lru/okei/timetable/MainActivity;->-$$Nest$mapplyCachedWeek(Lru/okei/timetable/MainActivity;Lru/okei/timetable/data/WeekSchedule;J)V

    :cond_1
    :goto_0
    return-void
.end method
