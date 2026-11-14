.class Lru/okei/timetable/ShareActivity$6;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ShareActivity;->loadWeek()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/ShareActivity;


# direct methods
.method constructor <init>(Lru/okei/timetable/ShareActivity;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lru/okei/timetable/ShareActivity$6;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 155
    iget-object v0, p0, Lru/okei/timetable/ShareActivity$6;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {v0}, Lru/okei/timetable/data/Cache;->read(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/okei/timetable/data/ScheduleParser;->parse(Ljava/lang/String;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lru/okei/timetable/ShareActivity$6;->this$0:Lru/okei/timetable/ShareActivity;

    new-instance v2, Lru/okei/timetable/ShareActivity$6$1;

    invoke-direct {v2, p0, v0}, Lru/okei/timetable/ShareActivity$6$1;-><init>(Lru/okei/timetable/ShareActivity$6;Lru/okei/timetable/data/WeekSchedule;)V

    invoke-virtual {v1, v2}, Lru/okei/timetable/ShareActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
