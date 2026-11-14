.class Lru/okei/timetable/alarm/AlarmAudioService$5;
.super Ljava/lang/Object;
.source "AlarmAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/alarm/AlarmAudioService;->finish(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/alarm/AlarmAudioService;

.field final synthetic val$old:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lru/okei/timetable/alarm/AlarmAudioService;Landroid/media/MediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 445
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService$5;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    iput-object p2, p0, Lru/okei/timetable/alarm/AlarmAudioService$5;->val$old:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 448
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$5;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fgetfading(Lru/okei/timetable/alarm/AlarmAudioService;)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService$5;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$fputfading(Lru/okei/timetable/alarm/AlarmAudioService;Landroid/media/MediaPlayer;)V

    .line 450
    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$smreleaseQuiet(Landroid/media/MediaPlayer;)V

    .line 451
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$5;->val$old:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$smreleaseQuiet(Landroid/media/MediaPlayer;)V

    .line 452
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$5;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->-$$Nest$mteardown(Lru/okei/timetable/alarm/AlarmAudioService;)V

    return-void
.end method
