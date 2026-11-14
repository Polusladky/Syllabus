.class Lru/okei/timetable/alarm/AlarmOverlayView$4;
.super Ljava/lang/Object;
.source "AlarmOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/alarm/AlarmOverlayView;->shutDown(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/alarm/AlarmOverlayView;

.field final synthetic val$snoozed:Z


# direct methods
.method constructor <init>(Lru/okei/timetable/alarm/AlarmOverlayView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmOverlayView$4;->this$0:Lru/okei/timetable/alarm/AlarmOverlayView;

    iput-boolean p2, p0, Lru/okei/timetable/alarm/AlarmOverlayView$4;->val$snoozed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 259
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView$4;->this$0:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->-$$Nest$fgetcallback(Lru/okei/timetable/alarm/AlarmOverlayView;)Lru/okei/timetable/alarm/AlarmOverlayView$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-boolean v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView$4;->val$snoozed:Z

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView$4;->this$0:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->-$$Nest$fgetcallback(Lru/okei/timetable/alarm/AlarmOverlayView;)Lru/okei/timetable/alarm/AlarmOverlayView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lru/okei/timetable/alarm/AlarmOverlayView$Callback;->onSnoozed()V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView$4;->this$0:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->-$$Nest$fgetcallback(Lru/okei/timetable/alarm/AlarmOverlayView;)Lru/okei/timetable/alarm/AlarmOverlayView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lru/okei/timetable/alarm/AlarmOverlayView$Callback;->onDismissed()V

    :goto_0
    return-void
.end method
