.class Lru/okei/timetable/alarm/AlarmAudioService$6;
.super Ljava/lang/Object;
.source "AlarmAudioService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/alarm/AlarmAudioService;->requestFocus()V
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

    .line 483
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService$6;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    .line 486
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService$6;->this$0:Lru/okei/timetable/alarm/AlarmAudioService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "focus change="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
