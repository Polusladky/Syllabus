.class Lru/okei/timetable/alarm/AlarmAudioService$4;
.super Ljava/lang/Object;
.source "AlarmAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/alarm/AlarmAudioService;->fadeOut(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/alarm/AlarmAudioService;

.field final synthetic val$started:J

.field final synthetic val$target:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lru/okei/timetable/alarm/AlarmAudioService;JLandroid/media/MediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService$4;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    iput-wide p2, p0, Lru/okei/timetable/alarm/AlarmAudioService$4;->val$started:J

    iput-object p4, p0, Lru/okei/timetable/alarm/AlarmAudioService$4;->val$target:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lru/okei/timetable/alarm/AlarmAudioService$4;->val$started:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43c80000    # 400.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 347
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService$4;->val$target:Landroid/media/MediaPlayer;

    sub-float v3, v1, v0

    invoke-static {v2, v3}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$smapplyGain(Landroid/media/MediaPlayer;F)V

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 349
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$4;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetmain(Lru/okei/timetable/alarm/AlarmAudioService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$4;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetfading(Lru/okei/timetable/alarm/AlarmAudioService;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService$4;->val$target:Landroid/media/MediaPlayer;

    if-ne v0, v1, :cond_1

    .line 351
    invoke-static {v1}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$smreleaseQuiet(Landroid/media/MediaPlayer;)V

    .line 352
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$4;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fputfading(Lru/okei/timetable/alarm/AlarmAudioService;Landroid/media/MediaPlayer;)V

    :cond_1
    :goto_0
    return-void
.end method
