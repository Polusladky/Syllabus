.class Lru/okei/timetable/alarm/AlarmHost$3;
.super Ljava/lang/Object;
.source "AlarmHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/alarm/AlarmHost;->close(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/alarm/AlarmHost;

.field final synthetic val$view:Lru/okei/timetable/alarm/AlarmOverlayView;


# direct methods
.method constructor <init>(Lru/okei/timetable/alarm/AlarmHost;Lru/okei/timetable/alarm/AlarmOverlayView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmHost$3;->this$0:Lru/okei/timetable/alarm/AlarmHost;

    iput-object p2, p0, Lru/okei/timetable/alarm/AlarmHost$3;->val$view:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 120
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost$3;->this$0:Lru/okei/timetable/alarm/AlarmHost;

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmHost$3;->val$view:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmHost;->-$$Nest$mdrop(Lru/okei/timetable/alarm/AlarmHost;Lru/okei/timetable/alarm/AlarmOverlayView;)V

    .line 121
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost$3;->this$0:Lru/okei/timetable/alarm/AlarmHost;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmHost;->-$$Nest$mkeepScreenOn(Lru/okei/timetable/alarm/AlarmHost;Z)V

    return-void
.end method
