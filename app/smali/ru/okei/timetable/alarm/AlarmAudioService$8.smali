.class Lru/okei/timetable/alarm/AlarmAudioService$8;
.super Ljava/lang/Object;
.source "AlarmAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/alarm/AlarmAudioService;->requestStop(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/alarm/AlarmAudioService;

.field final synthetic val$fade:Z


# direct methods
.method constructor <init>(Lru/okei/timetable/alarm/AlarmAudioService;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 587
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService$8;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    iput-boolean p2, p0, Lru/okei/timetable/alarm/AlarmAudioService$8;->val$fade:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 590
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$8;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    iget-boolean v1, p0, Lru/okei/timetable/alarm/AlarmAudioService$8;->val$fade:Z

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$mfinish(Lru/okei/timetable/alarm/AlarmAudioService;Z)V

    return-void
.end method
