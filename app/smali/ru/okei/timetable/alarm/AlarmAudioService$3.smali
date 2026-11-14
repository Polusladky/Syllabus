.class Lru/okei/timetable/alarm/AlarmAudioService$3;
.super Ljava/lang/Object;
.source "AlarmAudioService.java"

# interfaces
.implements Lru/okei/timetable/BeatDetector$Listener;


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

    .line 131
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService$3;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeat(F)V
    .locals 2

    .line 134
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$3;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetmain(Lru/okei/timetable/alarm/AlarmAudioService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/alarm/AlarmAudioService$3$1;

    invoke-direct {v1, p0, p1}, Lru/okei/timetable/alarm/AlarmAudioService$3$1;-><init>(Lru/okei/timetable/alarm/AlarmAudioService$3;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSpectrum([F)V
    .locals 2

    .line 155
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$3;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetmain(Lru/okei/timetable/alarm/AlarmAudioService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/alarm/AlarmAudioService$3$2;

    invoke-direct {v1, p0, p1}, Lru/okei/timetable/alarm/AlarmAudioService$3$2;-><init>(Lru/okei/timetable/alarm/AlarmAudioService$3;[F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
