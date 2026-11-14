.class Lru/okei/timetable/alarm/AlarmHost$2$1;
.super Ljava/lang/Object;
.source "AlarmHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/alarm/AlarmHost$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/alarm/AlarmHost$2;


# direct methods
.method constructor <init>(Lru/okei/timetable/alarm/AlarmHost$2;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmHost$2$1;->this$1:Lru/okei/timetable/alarm/AlarmHost$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 107
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost$2$1;->this$1:Lru/okei/timetable/alarm/AlarmHost$2;

    iget-object v0, v0, Lru/okei/timetable/alarm/AlarmHost$2;->this$0:Lru/okei/timetable/alarm/AlarmHost;

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmHost$2$1;->this$1:Lru/okei/timetable/alarm/AlarmHost$2;

    iget-object v1, v1, Lru/okei/timetable/alarm/AlarmHost$2;->val$view:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmHost;->-$$Nest$mdrop(Lru/okei/timetable/alarm/AlarmHost;Lru/okei/timetable/alarm/AlarmOverlayView;)V

    .line 108
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost$2$1;->this$1:Lru/okei/timetable/alarm/AlarmHost$2;

    iget-object v0, v0, Lru/okei/timetable/alarm/AlarmHost$2;->this$0:Lru/okei/timetable/alarm/AlarmHost;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmHost;->-$$Nest$mkeepScreenOn(Lru/okei/timetable/alarm/AlarmHost;Z)V

    .line 109
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost$2$1;->this$1:Lru/okei/timetable/alarm/AlarmHost$2;

    iget-object v0, v0, Lru/okei/timetable/alarm/AlarmHost$2;->this$0:Lru/okei/timetable/alarm/AlarmHost;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmHost;->-$$Nest$msleepOrLeave(Lru/okei/timetable/alarm/AlarmHost;)V

    return-void
.end method
