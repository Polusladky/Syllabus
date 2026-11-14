.class Lru/okei/timetable/alarm/AlarmAudioService$1;
.super Ljava/lang/Object;
.source "AlarmAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/alarm/AlarmAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/alarm/AlarmAudioService;


# direct methods
.method constructor <init>(Lru/okei/timetable/alarm/AlarmAudioService;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService$1;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 93
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$1;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetplayer(Lru/okei/timetable/alarm/AlarmAudioService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService$1;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v1}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetstate(Lru/okei/timetable/alarm/AlarmAudioService;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 98
    iget-object v3, p0, Lru/okei/timetable/alarm/AlarmAudioService$1;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v3}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetrampEndAt(Lru/okei/timetable/alarm/AlarmAudioService;)J

    move-result-wide v3

    iget-object v5, p0, Lru/okei/timetable/alarm/AlarmAudioService$1;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v5}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetrampStartedAt(Lru/okei/timetable/alarm/AlarmAudioService;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 99
    iget-object v5, p0, Lru/okei/timetable/alarm/AlarmAudioService$1;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v5}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetrampStartedAt(Lru/okei/timetable/alarm/AlarmAudioService;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    long-to-float v1, v1

    long-to-float v2, v3

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 100
    iget-object v3, p0, Lru/okei/timetable/alarm/AlarmAudioService$1;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v3}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetrampFrom(Lru/okei/timetable/alarm/AlarmAudioService;)F

    move-result v3

    iget-object v4, p0, Lru/okei/timetable/alarm/AlarmAudioService$1;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v4}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetrampTo(Lru/okei/timetable/alarm/AlarmAudioService;)F

    move-result v4

    iget-object v5, p0, Lru/okei/timetable/alarm/AlarmAudioService$1;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v5}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetrampFrom(Lru/okei/timetable/alarm/AlarmAudioService;)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float v4, v4, v1

    add-float/2addr v3, v4

    .line 101
    iget-object v4, p0, Lru/okei/timetable/alarm/AlarmAudioService$1;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v4, v0, v3}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$msetGain(Lru/okei/timetable/alarm/AlarmAudioService;Landroid/media/MediaPlayer;F)V

    cmpg-float v0, v1, v2

    if-gez v0, :cond_1

    .line 103
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$1;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetmain(Lru/okei/timetable/alarm/AlarmAudioService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
