.class Lru/okei/timetable/alarm/AlarmAudioService$3$1;
.super Ljava/lang/Object;
.source "AlarmAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/alarm/AlarmAudioService$3;->onBeat(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/alarm/AlarmAudioService$3;

.field final synthetic val$strength:F


# direct methods
.method constructor <init>(Lru/okei/timetable/alarm/AlarmAudioService$3;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService$3$1;->this$1:Lru/okei/timetable/alarm/AlarmAudioService$3;

    iput p2, p0, Lru/okei/timetable/alarm/AlarmAudioService$3$1;->val$strength:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 137
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$3$1;->this$1:Lru/okei/timetable/alarm/AlarmAudioService$3;

    iget-object v0, v0, Lru/okei/timetable/alarm/AlarmAudioService$3;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetstate(Lru/okei/timetable/alarm/AlarmAudioService;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 141
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService$3$1;->this$1:Lru/okei/timetable/alarm/AlarmAudioService$3;

    iget-object v2, v2, Lru/okei/timetable/alarm/AlarmAudioService$3;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v2}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetlastVibeAt(Lru/okei/timetable/alarm/AlarmAudioService;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x78

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 142
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService$3$1;->this$1:Lru/okei/timetable/alarm/AlarmAudioService$3;

    iget-object v2, v2, Lru/okei/timetable/alarm/AlarmAudioService$3;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v2, v0, v1}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fputlastVibeAt(Lru/okei/timetable/alarm/AlarmAudioService;J)V

    .line 143
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$3$1;->this$1:Lru/okei/timetable/alarm/AlarmAudioService$3;

    iget-object v0, v0, Lru/okei/timetable/alarm/AlarmAudioService$3;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lru/okei/timetable/alarm/AlarmAudioService$3$1;->val$strength:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x42dc0000    # 110.0f

    mul-float v1, v1, v2

    float-to-long v1, v1

    const-wide/16 v3, 0x1e

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$mpulse(Lru/okei/timetable/alarm/AlarmAudioService;J)V

    .line 145
    :cond_1
    invoke-static {}, Lru/okei/timetable/alarm/AlarmAudio;->ui()Lru/okei/timetable/alarm/AlarmAudio$Ui;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 147
    iget v1, p0, Lru/okei/timetable/alarm/AlarmAudioService$3$1;->val$strength:F

    invoke-interface {v0, v1}, Lru/okei/timetable/alarm/AlarmAudio$Ui;->onBeat(F)V

    :cond_2
    return-void
.end method
