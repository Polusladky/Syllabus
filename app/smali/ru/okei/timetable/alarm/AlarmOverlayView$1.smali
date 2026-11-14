.class Lru/okei/timetable/alarm/AlarmOverlayView$1;
.super Ljava/lang/Object;
.source "AlarmOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/alarm/AlarmOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/alarm/AlarmOverlayView;


# direct methods
.method constructor <init>(Lru/okei/timetable/alarm/AlarmOverlayView;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmOverlayView$1;->this$0:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 40
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView$1;->this$0:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->-$$Nest$fgetpreMode(Lru/okei/timetable/alarm/AlarmOverlayView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView$1;->this$0:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->-$$Nest$fgetat(Lru/okei/timetable/alarm/AlarmOverlayView;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 45
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView$1;->this$0:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->-$$Nest$mhandoff(Lru/okei/timetable/alarm/AlarmOverlayView;)V

    return-void

    .line 48
    :cond_1
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmOverlayView$1;->this$0:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-static {v2}, Lru/okei/timetable/alarm/AlarmOverlayView;->-$$Nest$fgetdial(Lru/okei/timetable/alarm/AlarmOverlayView;)Lru/okei/timetable/ui/TimerBarsView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 49
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmOverlayView$1;->this$0:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-static {v2}, Lru/okei/timetable/alarm/AlarmOverlayView;->-$$Nest$fgetdial(Lru/okei/timetable/alarm/AlarmOverlayView;)Lru/okei/timetable/ui/TimerBarsView;

    move-result-object v2

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmOverlayView;->-$$Nest$smmmss(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView$1;->this$0:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-static {v1}, Lru/okei/timetable/alarm/AlarmOverlayView;->-$$Nest$minfoLine(Lru/okei/timetable/alarm/AlarmOverlayView;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lru/okei/timetable/alarm/AlarmOverlayView$1;->this$0:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-static {v3}, Lru/okei/timetable/alarm/AlarmOverlayView;->-$$Nest$fgetface(Lru/okei/timetable/alarm/AlarmOverlayView;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lru/okei/timetable/ui/TimerBarsView;->configure(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 51
    :cond_2
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView$1;->this$0:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->-$$Nest$fgetmain(Lru/okei/timetable/alarm/AlarmOverlayView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
