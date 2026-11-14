.class Lru/okei/timetable/ShareActivity$6$1;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ShareActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/ShareActivity$6;

.field final synthetic val$parsed:Lru/okei/timetable/data/WeekSchedule;


# direct methods
.method constructor <init>(Lru/okei/timetable/ShareActivity$6;Lru/okei/timetable/data/WeekSchedule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lru/okei/timetable/ShareActivity$6$1;->this$1:Lru/okei/timetable/ShareActivity$6;

    iput-object p2, p0, Lru/okei/timetable/ShareActivity$6$1;->val$parsed:Lru/okei/timetable/data/WeekSchedule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 159
    iget-object v0, p0, Lru/okei/timetable/ShareActivity$6$1;->this$1:Lru/okei/timetable/ShareActivity$6;

    iget-object v0, v0, Lru/okei/timetable/ShareActivity$6;->this$0:Lru/okei/timetable/ShareActivity;

    iget-object v1, p0, Lru/okei/timetable/ShareActivity$6$1;->val$parsed:Lru/okei/timetable/data/WeekSchedule;

    invoke-static {v0, v1}, Lru/okei/timetable/ShareActivity;->-$$Nest$fputweek(Lru/okei/timetable/ShareActivity;Lru/okei/timetable/data/WeekSchedule;)V

    .line 160
    iget-object v0, p0, Lru/okei/timetable/ShareActivity$6$1;->this$1:Lru/okei/timetable/ShareActivity$6;

    iget-object v0, v0, Lru/okei/timetable/ShareActivity$6;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {v0}, Lru/okei/timetable/ShareActivity;->-$$Nest$mbuild(Lru/okei/timetable/ShareActivity;)V

    return-void
.end method
