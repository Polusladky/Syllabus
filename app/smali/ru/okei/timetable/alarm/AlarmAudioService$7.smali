.class Lru/okei/timetable/alarm/AlarmAudioService$7;
.super Landroid/media/AudioDeviceCallback;
.source "AlarmAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/alarm/AlarmAudioService;->registerRouteMonitor()V
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

    .line 543
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService$7;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    .line 546
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$7;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    array-length p1, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "route added="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    .line 547
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService$7;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {p1}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetplayer(Lru/okei/timetable/alarm/AlarmAudioService;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 548
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService$7;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {p1}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetplayer(Lru/okei/timetable/alarm/AlarmAudioService;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$7;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetlastGain(Lru/okei/timetable/alarm/AlarmAudioService;)F

    move-result v0

    invoke-static {p1, v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$smapplyGain(Landroid/media/MediaPlayer;F)V

    :cond_0
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    .line 554
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$7;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    array-length p1, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "route removed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    .line 555
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService$7;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {p1}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetplayer(Lru/okei/timetable/alarm/AlarmAudioService;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 556
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService$7;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {p1}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetplayer(Lru/okei/timetable/alarm/AlarmAudioService;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$7;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetlastGain(Lru/okei/timetable/alarm/AlarmAudioService;)F

    move-result v0

    invoke-static {p1, v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$smapplyGain(Landroid/media/MediaPlayer;F)V

    :cond_0
    return-void
.end method
