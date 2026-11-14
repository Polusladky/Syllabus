.class Lru/okei/timetable/MainActivity$19$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/MainActivity$19;

.field final synthetic val$html:Ljava/lang/String;

.field final synthetic val$now:J

.field final synthetic val$parsed:Lru/okei/timetable/data/WeekSchedule;


# direct methods
.method constructor <init>(Lru/okei/timetable/MainActivity$19;Lru/okei/timetable/data/WeekSchedule;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 869
    iput-object p1, p0, Lru/okei/timetable/MainActivity$19$1;->this$1:Lru/okei/timetable/MainActivity$19;

    iput-object p2, p0, Lru/okei/timetable/MainActivity$19$1;->val$parsed:Lru/okei/timetable/data/WeekSchedule;

    iput-object p3, p0, Lru/okei/timetable/MainActivity$19$1;->val$html:Ljava/lang/String;

    iput-wide p4, p0, Lru/okei/timetable/MainActivity$19$1;->val$now:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 872
    iget-object v0, p0, Lru/okei/timetable/MainActivity$19$1;->this$1:Lru/okei/timetable/MainActivity$19;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/okei/timetable/MainActivity;->-$$Nest$fputbusy(Lru/okei/timetable/MainActivity;Z)V

    .line 873
    iget-object v0, p0, Lru/okei/timetable/MainActivity$19$1;->this$1:Lru/okei/timetable/MainActivity$19;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0, v1}, Lru/okei/timetable/MainActivity;->-$$Nest$fputloading(Lru/okei/timetable/MainActivity;Z)V

    .line 874
    iget-object v0, p0, Lru/okei/timetable/MainActivity$19$1;->this$1:Lru/okei/timetable/MainActivity$19;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0, v1}, Lru/okei/timetable/MainActivity;->-$$Nest$fputoffline(Lru/okei/timetable/MainActivity;Z)V

    .line 875
    iget-object v0, p0, Lru/okei/timetable/MainActivity$19$1;->this$1:Lru/okei/timetable/MainActivity$19;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0, v1}, Lru/okei/timetable/MainActivity;->-$$Nest$fputemptyOnSite(Lru/okei/timetable/MainActivity;Z)V

    .line 876
    iget-object v3, p0, Lru/okei/timetable/MainActivity$19$1;->this$1:Lru/okei/timetable/MainActivity$19;

    iget-object v3, v3, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v3}, Lru/okei/timetable/fix/WeekGate;->get(Landroid/content/Context;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v3

    if-nez v3, :week_keep

    iget-object v3, p0, Lru/okei/timetable/MainActivity$19$1;->val$parsed:Lru/okei/timetable/data/WeekSchedule;

    :week_keep
    iget-object v0, p0, Lru/okei/timetable/MainActivity$19$1;->this$1:Lru/okei/timetable/MainActivity$19;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetschedule(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/ui/ScheduleState;

    move-result-object v0

    iput-object v3, v0, Lru/okei/timetable/ui/ScheduleState;->parsedWeek:Lru/okei/timetable/data/WeekSchedule;

    .line 877
    iget-object v0, p0, Lru/okei/timetable/MainActivity$19$1;->this$1:Lru/okei/timetable/MainActivity$19;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    iget-object v1, p0, Lru/okei/timetable/MainActivity$19$1;->val$html:Ljava/lang/String;

    iget-object v2, p0, Lru/okei/timetable/MainActivity$19$1;->val$parsed:Lru/okei/timetable/data/WeekSchedule;

    invoke-static {v1, v2}, Lru/okei/timetable/data/ParserHealth;->of(Ljava/lang/String;Lru/okei/timetable/data/WeekSchedule;)Lru/okei/timetable/data/ParserHealth$Report;

    move-result-object v1

    invoke-static {v0, v1}, Lru/okei/timetable/MainActivity;->-$$Nest$fputhealth(Lru/okei/timetable/MainActivity;Lru/okei/timetable/data/ParserHealth$Report;)V

    .line 878
    iget-object v0, p0, Lru/okei/timetable/MainActivity$19$1;->this$1:Lru/okei/timetable/MainActivity$19;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    iget-wide v1, p0, Lru/okei/timetable/MainActivity$19$1;->val$now:J

    invoke-static {v0, v1, v2}, Lru/okei/timetable/MainActivity;->-$$Nest$fputsyncedAt(Lru/okei/timetable/MainActivity;J)V

    .line 879
    iget-object v0, p0, Lru/okei/timetable/MainActivity$19$1;->val$parsed:Lru/okei/timetable/data/WeekSchedule;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$sfputsharedWeek(Lru/okei/timetable/data/WeekSchedule;)V

    .line 880
    iget-wide v0, p0, Lru/okei/timetable/MainActivity$19$1;->val$now:J

    invoke-static {v0, v1}, Lru/okei/timetable/MainActivity;->-$$Nest$sfputsharedWeekAt(J)V

    .line 881
    iget-object v0, p0, Lru/okei/timetable/MainActivity$19$1;->this$1:Lru/okei/timetable/MainActivity$19;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$mrender(Lru/okei/timetable/MainActivity;)V

    .line 882
    iget-object v0, p0, Lru/okei/timetable/MainActivity$19$1;->this$1:Lru/okei/timetable/MainActivity$19;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$monAlarmsEnabled(Lru/okei/timetable/MainActivity;)V

    return-void
.end method
