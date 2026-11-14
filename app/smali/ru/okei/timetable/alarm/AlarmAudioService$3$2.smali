.class Lru/okei/timetable/alarm/AlarmAudioService$3$2;
.super Ljava/lang/Object;
.source "AlarmAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/alarm/AlarmAudioService$3;->onSpectrum([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/alarm/AlarmAudioService$3;

.field final synthetic val$bands:[F


# direct methods
.method constructor <init>(Lru/okei/timetable/alarm/AlarmAudioService$3;[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService$3$2;->this$1:Lru/okei/timetable/alarm/AlarmAudioService$3;

    iput-object p2, p0, Lru/okei/timetable/alarm/AlarmAudioService$3$2;->val$bands:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 158
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$3$2;->this$1:Lru/okei/timetable/alarm/AlarmAudioService$3;

    iget-object v0, v0, Lru/okei/timetable/alarm/AlarmAudioService$3;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetstate(Lru/okei/timetable/alarm/AlarmAudioService;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-static {}, Lru/okei/timetable/alarm/AlarmAudio;->ui()Lru/okei/timetable/alarm/AlarmAudio$Ui;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService$3$2;->val$bands:[F

    invoke-interface {v0, v1}, Lru/okei/timetable/alarm/AlarmAudio$Ui;->onSpectrum([F)V

    :cond_1
    return-void
.end method
