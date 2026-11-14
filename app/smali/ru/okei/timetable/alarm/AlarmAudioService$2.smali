.class Lru/okei/timetable/alarm/AlarmAudioService$2;
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

    .line 108
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService$2;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 111
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$2;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetstate(Lru/okei/timetable/alarm/AlarmAudioService;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$2;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetrhythm(Lru/okei/timetable/alarm/AlarmAudioService;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$2;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetdetector(Lru/okei/timetable/alarm/AlarmAudioService;)Lru/okei/timetable/BeatDetector;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$2;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$mhasMic(Lru/okei/timetable/alarm/AlarmAudioService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$2;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$mstopBeat(Lru/okei/timetable/alarm/AlarmAudioService;)V

    .line 116
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$2;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fputrhythm(Lru/okei/timetable/alarm/AlarmAudioService;Z)V

    .line 117
    invoke-static {}, Lru/okei/timetable/alarm/AlarmAudio;->ui()Lru/okei/timetable/alarm/AlarmAudio$Ui;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    invoke-interface {v0, v1}, Lru/okei/timetable/alarm/AlarmAudio$Ui;->onRhythm(Z)V

    .line 122
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$2;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmSettings;->vibration(Landroid/content/Context;)I

    move-result v0

    .line 123
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService$2;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v2}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetrhythm(Lru/okei/timetable/alarm/AlarmAudioService;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService$2;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v2}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetdetector(Lru/okei/timetable/alarm/AlarmAudioService;)Lru/okei/timetable/BeatDetector;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService$2;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v2}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetdetector(Lru/okei/timetable/alarm/AlarmAudioService;)Lru/okei/timetable/BeatDetector;

    move-result-object v2

    invoke-virtual {v2}, Lru/okei/timetable/BeatDetector;->active()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_4

    if-lez v0, :cond_4

    .line 125
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService$2;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    if-ne v0, v3, :cond_3

    const-wide/16 v3, 0x82

    goto :goto_0

    :cond_3
    const-wide/16 v3, 0x208

    :goto_0
    invoke-static {v2, v3, v4}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$mpulse(Lru/okei/timetable/alarm/AlarmAudioService;J)V

    .line 127
    :cond_4
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$2;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetmain(Lru/okei/timetable/alarm/AlarmAudioService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v1, :cond_5

    const-wide/16 v1, 0xfa

    goto :goto_1

    :cond_5
    const-wide/16 v1, 0x44c

    :goto_1
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
