.class Lru/okei/timetable/MainActivity$20;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity;->showCached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/MainActivity;

.field final synthetic val$html:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/okei/timetable/MainActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 969
    iput-object p1, p0, Lru/okei/timetable/MainActivity$20;->this$0:Lru/okei/timetable/MainActivity;

    iput-object p2, p0, Lru/okei/timetable/MainActivity$20;->val$html:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 972
    iget-object v0, p0, Lru/okei/timetable/MainActivity$20;->val$html:Ljava/lang/String;

    invoke-static {v0}, Lru/okei/timetable/data/ScheduleParser;->parse(Ljava/lang/String;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 973
    invoke-virtual {v0}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 976
    :cond_0
    iget-object v1, p0, Lru/okei/timetable/MainActivity$20;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v1}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetmain(Lru/okei/timetable/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lru/okei/timetable/MainActivity$20$1;

    invoke-direct {v2, p0, v0}, Lru/okei/timetable/MainActivity$20$1;-><init>(Lru/okei/timetable/MainActivity$20;Lru/okei/timetable/data/WeekSchedule;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
