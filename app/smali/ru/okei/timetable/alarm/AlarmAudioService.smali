.class public Lru/okei/timetable/alarm/AlarmAudioService;
.super Landroid/app/Service;
.source "AlarmAudioService.java"


# static fields
.field public static final ACTION_PREPARE:Ljava/lang/String; = "ru.okei.timetable.action.AUDIO_PREPARE"

.field public static final ACTION_RING:Ljava/lang/String; = "ru.okei.timetable.action.AUDIO_RING"

.field public static final ACTION_SNOOZE:Ljava/lang/String; = "ru.okei.timetable.action.AUDIO_SNOOZE"

.field public static final ACTION_STOP:Ljava/lang/String; = "ru.okei.timetable.action.AUDIO_STOP"

.field private static final CHANNEL:Ljava/lang/String; = "alarm_audio"

.field private static final FADE_MS:J = 0x190L

.field private static final NOTIF_ID:I = 0x1b59

.field private static final RAMP_MS:J = 0x2710L

.field private static final RAMP_STEP_MS:J = 0x28L

.field private static final VIBE_GAP_MS:J = 0x78L


# instance fields
.field private at:J

.field private audioManager:Landroid/media/AudioManager;

.field private final beatListener:Lru/okei/timetable/BeatDetector$Listener;

.field private code:I

.field private day:Ljava/lang/String;

.field private detector:Lru/okei/timetable/BeatDetector;

.field private deviceCallback:Ljava/lang/Object;

.field private fading:Landroid/media/MediaPlayer;

.field private focusHeld:Z

.field private focusRequest:Ljava/lang/Object;

.field private foreground:Z

.field private label:Ljava/lang/String;

.field private lastGain:F

.field private lastVibeAt:J

.field private lesson:Ljava/lang/String;

.field private final main:Landroid/os/Handler;

.field private player:Landroid/media/MediaPlayer;

.field private ramp:Z

.field private rampEndAt:J

.field private rampFrom:F

.field private rampStartedAt:J

.field private final rampTick:Ljava/lang/Runnable;

.field private rampTo:F

.field private repeat:Z

.field private rhythm:Z

.field private state:I

.field private final vibeTick:Ljava/lang/Runnable;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static bridge synthetic -$$Nest$fgetdetector(Lru/okei/timetable/alarm/AlarmAudioService;)Lru/okei/timetable/BeatDetector;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->detector:Lru/okei/timetable/BeatDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfading(Lru/okei/timetable/alarm/AlarmAudioService;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->fading:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastGain(Lru/okei/timetable/alarm/AlarmAudioService;)F
    .locals 0

    iget p0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->lastGain:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastVibeAt(Lru/okei/timetable/alarm/AlarmAudioService;)J
    .locals 2

    iget-wide v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->lastVibeAt:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmain(Lru/okei/timetable/alarm/AlarmAudioService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayer(Lru/okei/timetable/alarm/AlarmAudioService;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrampEndAt(Lru/okei/timetable/alarm/AlarmAudioService;)J
    .locals 2

    iget-wide v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rampEndAt:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetrampFrom(Lru/okei/timetable/alarm/AlarmAudioService;)F
    .locals 0

    iget p0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rampFrom:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrampStartedAt(Lru/okei/timetable/alarm/AlarmAudioService;)J
    .locals 2

    iget-wide v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rampStartedAt:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetrampTo(Lru/okei/timetable/alarm/AlarmAudioService;)F
    .locals 0

    iget p0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rampTo:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrhythm(Lru/okei/timetable/alarm/AlarmAudioService;)Z
    .locals 0

    iget-boolean p0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rhythm:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstate(Lru/okei/timetable/alarm/AlarmAudioService;)I
    .locals 0

    iget p0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->state:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputfading(Lru/okei/timetable/alarm/AlarmAudioService;Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->fading:Landroid/media/MediaPlayer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastVibeAt(Lru/okei/timetable/alarm/AlarmAudioService;J)V
    .locals 0

    iput-wide p1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->lastVibeAt:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrhythm(Lru/okei/timetable/alarm/AlarmAudioService;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rhythm:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinish(Lru/okei/timetable/alarm/AlarmAudioService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/alarm/AlarmAudioService;->finish(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhasMic(Lru/okei/timetable/alarm/AlarmAudioService;)Z
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->hasMic()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpulse(Lru/okei/timetable/alarm/AlarmAudioService;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/okei/timetable/alarm/AlarmAudioService;->pulse(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetGain(Lru/okei/timetable/alarm/AlarmAudioService;Landroid/media/MediaPlayer;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/okei/timetable/alarm/AlarmAudioService;->setGain(Landroid/media/MediaPlayer;F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopBeat(Lru/okei/timetable/alarm/AlarmAudioService;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->stopBeat()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mteardown(Lru/okei/timetable/alarm/AlarmAudioService;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->teardown()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smapplyGain(Landroid/media/MediaPlayer;F)V
    .locals 0

    invoke-static {p0, p1}, Lru/okei/timetable/alarm/AlarmAudioService;->applyGain(Landroid/media/MediaPlayer;F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smreleaseQuiet(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->releaseQuiet(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->main:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->state:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    iput v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rampTo:F

    .line 72
    iput v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->lastGain:F

    .line 90
    new-instance v0, Lru/okei/timetable/alarm/AlarmAudioService$1;

    invoke-direct {v0, p0}, Lru/okei/timetable/alarm/AlarmAudioService$1;-><init>(Lru/okei/timetable/alarm/AlarmAudioService;)V

    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rampTick:Ljava/lang/Runnable;

    .line 108
    new-instance v0, Lru/okei/timetable/alarm/AlarmAudioService$2;

    invoke-direct {v0, p0}, Lru/okei/timetable/alarm/AlarmAudioService$2;-><init>(Lru/okei/timetable/alarm/AlarmAudioService;)V

    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->vibeTick:Ljava/lang/Runnable;

    .line 131
    new-instance v0, Lru/okei/timetable/alarm/AlarmAudioService$3;

    invoke-direct {v0, p0}, Lru/okei/timetable/alarm/AlarmAudioService$3;-><init>(Lru/okei/timetable/alarm/AlarmAudioService;)V

    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->beatListener:Lru/okei/timetable/BeatDetector$Listener;

    return-void
.end method

.method private abandonFocus()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 514
    :try_start_0
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->audioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->focusHeld:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 517
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->focusRequest:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 518
    iget-object v3, p0, Lru/okei/timetable/alarm/AlarmAudioService;->audioManager:Landroid/media/AudioManager;

    check-cast v2, Landroid/media/AudioFocusRequest;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 520
    :cond_1
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :goto_0
    const-string v2, "focus abandoned"

    .line 522
    invoke-static {p0, v2}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 526
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->focusHeld:Z

    .line 527
    iput-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->focusRequest:Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    const-string v3, "AlarmAudioService"

    .line 524
    invoke-static {v3, v2}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 526
    :goto_2
    iput-boolean v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->focusHeld:Z

    .line 527
    iput-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->focusRequest:Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception v2

    .line 526
    iput-boolean v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->focusHeld:Z

    .line 527
    iput-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->focusRequest:Ljava/lang/Object;

    .line 528
    throw v2
.end method

.method private static applyGain(Landroid/media/MediaPlayer;F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 400
    :try_start_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 401
    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "AlarmAudioService"

    .line 403
    invoke-static {p1, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private buildNotification()Landroid/app/Notification;
    .locals 9

    .line 659
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/okei/timetable/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x34000000

    .line 660
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "code"

    .line 662
    iget v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->code:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "at"

    .line 663
    iget-wide v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->at:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "day"

    .line 664
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->day:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "lesson"

    .line 665
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->lesson:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "label"

    .line 666
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pre"

    const/4 v2, 0x0

    .line 667
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "snooze"

    .line 668
    iget-boolean v3, p0, Lru/okei/timetable/alarm/AlarmAudioService;->repeat:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 670
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_0

    const/high16 v1, 0xc000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x8000000

    :goto_0
    const/16 v3, 0x1bbc

    .line 673
    invoke-static {p0, v3, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 674
    iget v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->state:I

    const/4 v3, 0x2

    const-string v4, ""

    if-ne v1, v3, :cond_1

    .line 675
    iget-wide v5, p0, Lru/okei/timetable/alarm/AlarmAudioService;->at:J

    invoke-static {v5, v6}, Lru/okei/timetable/alarm/AlarmScheduler;->format(J)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u0411\u0423\u0414\u0418\u041b\u042c\u041d\u0418\u041a "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 677
    :cond_1
    iget-wide v5, p0, Lru/okei/timetable/alarm/AlarmAudioService;->at:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_2

    invoke-static {v5, v6}, Lru/okei/timetable/alarm/AlarmScheduler;->format(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u0414\u041e \u0411\u0423\u0414\u0418\u041b\u042c\u041d\u0418\u041a\u0410 "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 678
    :goto_2
    iget-object v3, p0, Lru/okei/timetable/alarm/AlarmAudioService;->lesson:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move-object v4, v3

    .line 679
    :goto_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v3, v5, :cond_4

    .line 680
    new-instance v3, Landroid/app/Notification$Builder;

    const-string v5, "alarm_audio"

    invoke-direct {v3, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 681
    :cond_4
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_4
    const v5, 0x7f02000b

    .line 682
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 683
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 684
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v4, "service"

    .line 685
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v4, 0x1

    .line 686
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 687
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 688
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 689
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 690
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private crossfade()V
    .locals 7

    const-string v0, "AlarmAudioService"

    .line 311
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    .line 313
    :try_start_0
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->open()Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 320
    iput-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    return-void

    .line 323
    :cond_0
    iget-boolean v3, p0, Lru/okei/timetable/alarm/AlarmAudioService;->ramp:Z

    if-eqz v3, :cond_1

    const v3, 0x3ca3d70a    # 0.02f

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rhythm:Z

    if-eqz v3, :cond_2

    const v3, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 324
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v2

    .line 325
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "crossfade session="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " old="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-static {p0, v2}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    invoke-direct {p0, v2, v3}, Lru/okei/timetable/alarm/AlarmAudioService;->setGain(Landroid/media/MediaPlayer;F)V

    .line 327
    iput v3, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rampFrom:F

    .line 329
    :try_start_1
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 331
    invoke-static {v0, v2}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    :goto_1
    iput-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->fading:Landroid/media/MediaPlayer;

    .line 334
    invoke-direct {p0, v1}, Lru/okei/timetable/alarm/AlarmAudioService;->fadeOut(Landroid/media/MediaPlayer;)V

    return-void

    :catchall_1
    move-exception v2

    .line 315
    invoke-static {v0, v2}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    iput-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    return-void
.end method

.method private ensureChannel()V
    .locals 5

    .line 614
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "notification"

    .line 617
    invoke-virtual {p0, v0}, Lru/okei/timetable/alarm/AlarmAudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_2

    const-string v1, "alarm_audio"

    .line 618
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 621
    :cond_1
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "\u0417\u0412\u0423\u041a \u0411\u0423\u0414\u0418\u041b\u042c\u041d\u0418\u041a\u0410"

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    .line 624
    invoke-virtual {v2, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v1, 0x0

    .line 625
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 626
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 627
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private fadeOut(Landroid/media/MediaPlayer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 341
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 342
    new-instance v2, Lru/okei/timetable/alarm/AlarmAudioService$4;

    invoke-direct {v2, p0, v0, v1, p1}, Lru/okei/timetable/alarm/AlarmAudioService$4;-><init>(Lru/okei/timetable/alarm/AlarmAudioService;JLandroid/media/MediaPlayer;)V

    .line 356
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->main:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private finish(Z)V
    .locals 3

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finish fade="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->abandonFocus()V

    .line 433
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rampTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 434
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->vibeTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 435
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->stopBeat()V

    .line 436
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->stopVibration()V

    .line 437
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    .line 438
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->fading:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    .line 439
    iput-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    .line 440
    iput-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->fading:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    .line 441
    invoke-direct {p0, v2}, Lru/okei/timetable/alarm/AlarmAudioService;->setState(I)V

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 443
    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->fading:Landroid/media/MediaPlayer;

    .line 444
    invoke-direct {p0, v0}, Lru/okei/timetable/alarm/AlarmAudioService;->fadeOut(Landroid/media/MediaPlayer;)V

    .line 445
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->main:Landroid/os/Handler;

    new-instance v0, Lru/okei/timetable/alarm/AlarmAudioService$5;

    invoke-direct {v0, p0, v1}, Lru/okei/timetable/alarm/AlarmAudioService$5;-><init>(Lru/okei/timetable/alarm/AlarmAudioService;Landroid/media/MediaPlayer;)V

    const-wide/16 v1, 0x1e0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 456
    :cond_0
    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->releaseQuiet(Landroid/media/MediaPlayer;)V

    .line 457
    invoke-static {v1}, Lru/okei/timetable/alarm/AlarmAudioService;->releaseQuiet(Landroid/media/MediaPlayer;)V

    .line 458
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->teardown()V

    :goto_0
    return-void
.end method

.method private hasMic()Z
    .locals 3

    .line 391
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 394
    invoke-virtual {p0, v0}, Lru/okei/timetable/alarm/AlarmAudioService;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private open()Landroid/media/MediaPlayer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 251
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->songUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 253
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 258
    :cond_1
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 259
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 260
    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 261
    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 259
    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 263
    invoke-virtual {v2, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v0, 0x1

    .line 264
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 265
    invoke-virtual {v2, p0, v0}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 266
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    return-object v2
.end method

.method private prepare()V
    .locals 8

    const-string v0, "prepare player="

    .line 222
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->beatByMusic(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->hasMic()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rhythm:Z

    .line 223
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->volumeRamp(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->ramp:Z

    const/4 v1, 0x0

    .line 225
    :try_start_0
    iget-object v4, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_1

    .line 226
    invoke-static {v4}, Lru/okei/timetable/alarm/AlarmAudioService;->releaseQuiet(Landroid/media/MediaPlayer;)V

    .line 227
    iput-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    .line 229
    :cond_1
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->open()Landroid/media/MediaPlayer;

    move-result-object v4

    iput-object v4, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    if-nez v4, :cond_2

    const-string v0, "prepare: no track"

    .line 231
    invoke-static {p0, v0}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 234
    :cond_2
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v4

    iget-wide v5, p0, Lru/okei/timetable/alarm/AlarmAudioService;->at:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " at="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    iget-boolean v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->ramp:Z

    if-eqz v0, :cond_3

    const v0, 0x3ca3d70a    # 0.02f

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rhythm:Z

    if-eqz v0, :cond_4

    const v0, 0x3dcccccd    # 0.1f

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 236
    :goto_1
    iget-object v4, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    invoke-direct {p0, v4, v0}, Lru/okei/timetable/alarm/AlarmAudioService;->setGain(Landroid/media/MediaPlayer;F)V

    .line 237
    iput v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rampFrom:F

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rampStartedAt:J

    .line 239
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 240
    invoke-direct {p0, v2}, Lru/okei/timetable/alarm/AlarmAudioService;->setState(I)V

    .line 241
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->startRamp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    const-string v2, "AlarmAudioService"

    .line 243
    invoke-static {v2, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->releaseQuiet(Landroid/media/MediaPlayer;)V

    .line 245
    iput-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    .line 246
    invoke-direct {p0, v3}, Lru/okei/timetable/alarm/AlarmAudioService;->setState(I)V

    :goto_2
    return-void
.end method

.method private pulse(J)V
    .locals 4

    .line 361
    :try_start_0
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->vibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    const-string v0, "vibrator"

    .line 362
    invoke-virtual {p0, v0}, Lru/okei/timetable/alarm/AlarmAudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->vibrator:Landroid/os/Vibrator;

    .line 364
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 367
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-wide/16 v2, 0x14

    if-lt v0, v1, :cond_2

    .line 368
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->vibrator:Landroid/os/Vibrator;

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const/4 v1, -0x1

    invoke-static {p1, p2, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_1

    .line 371
    :cond_2
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->vibrator:Landroid/os/Vibrator;

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "AlarmAudioService"

    .line 374
    invoke-static {p2, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private registerRouteMonitor()V
    .locals 3

    .line 533
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 537
    :cond_0
    :try_start_0
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    const-string v0, "audio"

    .line 538
    invoke-virtual {p0, v0}, Lru/okei/timetable/alarm/AlarmAudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->audioManager:Landroid/media/AudioManager;

    .line 540
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    return-void

    .line 543
    :cond_2
    new-instance v0, Lru/okei/timetable/alarm/AlarmAudioService$7;

    invoke-direct {v0, p0}, Lru/okei/timetable/alarm/AlarmAudioService$7;-><init>(Lru/okei/timetable/alarm/AlarmAudioService;)V

    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->deviceCallback:Ljava/lang/Object;

    .line 560
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->audioManager:Landroid/media/AudioManager;

    check-cast v0, Landroid/media/AudioDeviceCallback;

    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->main:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AlarmAudioService"

    .line 562
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static releaseQuiet(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "AlarmAudioService"

    if-nez p0, :cond_0

    return-void

    .line 600
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 604
    invoke-static {v0, v1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 607
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 609
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private requestFocus()V
    .locals 8

    const-string v0, "focus granted="

    .line 476
    :try_start_0
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->audioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    const-string v1, "audio"

    .line 477
    invoke-virtual {p0, v1}, Lru/okei/timetable/alarm/AlarmAudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->audioManager:Landroid/media/AudioManager;

    .line 479
    :cond_0
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->audioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_1

    return-void

    .line 482
    :cond_1
    new-instance v1, Lru/okei/timetable/alarm/AlarmAudioService$6;

    invoke-direct {v1, p0}, Lru/okei/timetable/alarm/AlarmAudioService$6;-><init>(Lru/okei/timetable/alarm/AlarmAudioService;)V

    .line 489
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-lt v2, v3, :cond_3

    .line 490
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 491
    invoke-virtual {v2, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 492
    invoke-virtual {v2, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 493
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 494
    new-instance v3, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v3, v4}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 495
    invoke-virtual {v3, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v2

    .line 496
    invoke-virtual {v2, v5}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v2

    .line 497
    invoke-virtual {v2, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 498
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    iput-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->focusRequest:Ljava/lang/Object;

    .line 499
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->audioManager:Landroid/media/AudioManager;

    move-object v3, v1

    check-cast v3, Landroid/media/AudioFocusRequest;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v1

    if-ne v1, v7, :cond_2

    const/4 v5, 0x1

    :cond_2
    iput-boolean v5, p0, Lru/okei/timetable/alarm/AlarmAudioService;->focusHeld:Z

    goto :goto_0

    .line 502
    :cond_3
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1, v6, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v7, :cond_4

    const/4 v5, 0x1

    :cond_4
    iput-boolean v5, p0, Lru/okei/timetable/alarm/AlarmAudioService;->focusHeld:Z

    .line 506
    :goto_0
    iget-boolean v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->focusHeld:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "AlarmAudioService"

    .line 508
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private ring()V
    .locals 4

    .line 271
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ring player="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->main:Landroid/os/Handler;

    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rampTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 274
    invoke-direct {p0, v0, v2}, Lru/okei/timetable/alarm/AlarmAudioService;->setGain(Landroid/media/MediaPlayer;F)V

    .line 276
    :cond_1
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->requestFocus()V

    .line 277
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->beatByMusic(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->hasMic()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rhythm:Z

    .line 278
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->volumeRamp(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->ramp:Z

    const/4 v0, 0x2

    .line 279
    invoke-direct {p0, v0}, Lru/okei/timetable/alarm/AlarmAudioService;->setState(I)V

    .line 280
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->startBeatIfNeed()V

    .line 281
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->vibeTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->vibeTick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setGain(Landroid/media/MediaPlayer;F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 469
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->lastGain:F

    .line 470
    invoke-static {p1, p2}, Lru/okei/timetable/alarm/AlarmAudioService;->applyGain(Landroid/media/MediaPlayer;F)V

    return-void
.end method

.method private setState(I)V
    .locals 1

    .line 408
    iput p1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->state:I

    .line 409
    invoke-static {}, Lru/okei/timetable/alarm/AlarmAudio;->ui()Lru/okei/timetable/alarm/AlarmAudio$Ui;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 411
    iget v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->state:I

    invoke-interface {p1, v0}, Lru/okei/timetable/alarm/AlarmAudio$Ui;->onState(I)V

    .line 413
    :cond_0
    iget-boolean p1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->foreground:Z

    if-eqz p1, :cond_1

    .line 414
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->updateNotification()V

    :cond_1
    return-void
.end method

.method private startBeatIfNeed()V
    .locals 3

    .line 286
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->stopBeat()V

    .line 287
    iget-boolean v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rhythm:Z

    if-nez v0, :cond_1

    .line 288
    invoke-static {}, Lru/okei/timetable/alarm/AlarmAudio;->ui()Lru/okei/timetable/alarm/AlarmAudio$Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 290
    invoke-interface {v0, v1}, Lru/okei/timetable/alarm/AlarmAudio$Ui;->onRhythm(Z)V

    :cond_0
    return-void

    .line 294
    :cond_1
    new-instance v0, Lru/okei/timetable/BeatDetector;

    invoke-direct {v0}, Lru/okei/timetable/BeatDetector;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->detector:Lru/okei/timetable/BeatDetector;

    .line 295
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->beatListener:Lru/okei/timetable/BeatDetector$Listener;

    invoke-virtual {v0, v1, v2}, Lru/okei/timetable/BeatDetector;->start(Landroid/media/MediaPlayer;Lru/okei/timetable/BeatDetector$Listener;)Z

    move-result v0

    .line 296
    invoke-static {}, Lru/okei/timetable/alarm/AlarmAudio;->ui()Lru/okei/timetable/alarm/AlarmAudio$Ui;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 298
    invoke-interface {v1, v0}, Lru/okei/timetable/alarm/AlarmAudio$Ui;->onRhythm(Z)V

    :cond_2
    return-void
.end method

.method private startForegroundCompat()V
    .locals 4

    .line 632
    :try_start_0
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->buildNotification()Landroid/app/Notification;

    move-result-object v0

    .line 633
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/16 v3, 0x1b59

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    .line 634
    invoke-virtual {p0, v3, v0, v1}, Lru/okei/timetable/alarm/AlarmAudioService;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_0

    .line 637
    :cond_0
    invoke-virtual {p0, v3, v0}, Lru/okei/timetable/alarm/AlarmAudioService;->startForeground(ILandroid/app/Notification;)V

    :goto_0
    const/4 v0, 0x1

    .line 639
    iput-boolean v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->foreground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "AlarmAudioService"

    .line 641
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private startRamp()V
    .locals 7

    .line 76
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rampTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-boolean v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->ramp:Z

    if-nez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 81
    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmAudioService;->applyGain(Landroid/media/MediaPlayer;F)V

    return-void

    .line 84
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rampStartedAt:J

    .line 85
    iget-wide v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->at:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x2710

    add-long/2addr v2, v0

    .line 86
    :goto_0
    iput-wide v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rampEndAt:J

    .line 87
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->rampTick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopBeat()V
    .locals 1

    .line 303
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->detector:Lru/okei/timetable/BeatDetector;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Lru/okei/timetable/BeatDetector;->stop()V

    const/4 v0, 0x0

    .line 305
    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->detector:Lru/okei/timetable/BeatDetector;

    :cond_0
    return-void
.end method

.method private stopForegroundCompat()V
    .locals 3

    const/4 v0, 0x0

    .line 646
    iput-boolean v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->foreground:Z

    .line 648
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 649
    invoke-virtual {p0, v2}, Lru/okei/timetable/alarm/AlarmAudioService;->stopForeground(I)V

    goto :goto_0

    .line 651
    :cond_0
    invoke-virtual {p0, v2}, Lru/okei/timetable/alarm/AlarmAudioService;->stopForeground(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AlarmAudioService"

    .line 654
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private stopVibration()V
    .locals 2

    .line 379
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->vibeTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 380
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 382
    :try_start_0
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AlarmAudioService"

    .line 384
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->vibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method private teardown()V
    .locals 1

    const-string v0, "teardown"

    .line 463
    invoke-static {p0, v0}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    .line 464
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->stopForegroundCompat()V

    .line 465
    invoke-virtual {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->stopSelf()V

    return-void
.end method

.method private unregisterRouteMonitor()V
    .locals 3

    const/4 v0, 0x0

    .line 568
    :try_start_0
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->deviceCallback:Ljava/lang/Object;

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 570
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmAudioService;->deviceCallback:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioDeviceCallback;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    :cond_0
    :goto_0
    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->deviceCallback:Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    const-string v2, "AlarmAudioService"

    .line 573
    invoke-static {v2, v1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v1

    .line 575
    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->deviceCallback:Ljava/lang/Object;

    .line 576
    throw v1
.end method

.method private updateNotification()V
    .locals 3

    :try_start_0
    const-string v0, "notification"

    .line 696
    invoke-virtual {p0, v0}, Lru/okei/timetable/alarm/AlarmAudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 697
    iget-boolean v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->foreground:Z

    if-eqz v1, :cond_0

    .line 698
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->buildNotification()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x1b59

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AlarmAudioService"

    .line 701
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public alive()Z
    .locals 1

    .line 427
    iget v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 172
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 173
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->ensureChannel()V

    .line 174
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->registerRouteMonitor()V

    const-string v0, "service create"

    .line 175
    invoke-static {p0, v0}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmAudio;->attach(Lru/okei/timetable/alarm/AlarmAudioService;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "service destroy"

    .line 707
    invoke-static {p0, v0}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    .line 708
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->unregisterRouteMonitor()V

    .line 709
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->abandonFocus()V

    .line 710
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->main:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 711
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->stopBeat()V

    .line 712
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->stopVibration()V

    .line 713
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->releaseQuiet(Landroid/media/MediaPlayer;)V

    .line 714
    iput-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    .line 715
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->fading:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudioService;->releaseQuiet(Landroid/media/MediaPlayer;)V

    .line 716
    iput-object v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->fading:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 717
    invoke-direct {p0, v0}, Lru/okei/timetable/alarm/AlarmAudioService;->setState(I)V

    .line 718
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmAudio;->detach(Lru/okei/timetable/alarm/AlarmAudioService;)V

    .line 719
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 p2, 0x2

    if-nez p1, :cond_0

    return p2

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ru.okei.timetable.action.AUDIO_STOP"

    .line 185
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ru.okei.timetable.action.AUDIO_SNOOZE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "code"

    .line 190
    iget v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->code:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->code:I

    const-string v0, "at"

    .line 191
    iget-wide v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->at:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->at:J

    const-string v0, "day"

    .line 192
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->day:Ljava/lang/String;

    const-string v0, "lesson"

    .line 193
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->lesson:Ljava/lang/String;

    const-string v0, "label"

    .line 194
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->label:Ljava/lang/String;

    const-string v0, "snooze"

    .line 195
    iget-boolean v1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->repeat:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->repeat:Z

    const-string p1, "ru.okei.timetable.action.AUDIO_PREPARE"

    .line 197
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 198
    iget p1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->state:I

    if-eqz p1, :cond_3

    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_3

    .line 199
    iget-boolean p1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->repeat:Z

    if-nez p1, :cond_2

    .line 201
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->startForegroundCompat()V

    return p2

    .line 205
    :cond_2
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->crossfade()V

    const/4 p1, 0x1

    .line 206
    invoke-direct {p0, p1}, Lru/okei/timetable/alarm/AlarmAudioService;->setState(I)V

    .line 207
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->startRamp()V

    goto :goto_0

    .line 209
    :cond_3
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->prepare()V

    goto :goto_0

    :cond_4
    const-string p1, "ru.okei.timetable.action.AUDIO_RING"

    .line 211
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 212
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    if-nez p1, :cond_5

    .line 213
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->prepare()V

    .line 215
    :cond_5
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->ring()V

    .line 217
    :cond_6
    :goto_0
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmAudioService;->startForegroundCompat()V

    return p2

    :cond_7
    :goto_1
    const/4 p1, 0x0

    .line 186
    invoke-direct {p0, p1}, Lru/okei/timetable/alarm/AlarmAudioService;->finish(Z)V

    return p2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3

    .line 581
    iget v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->state:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "task removed state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    .line 582
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public requestStop(Z)V
    .locals 2

    .line 587
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->main:Landroid/os/Handler;

    new-instance v1, Lru/okei/timetable/alarm/AlarmAudioService$8;

    invoke-direct {v1, p0, p1}, Lru/okei/timetable/alarm/AlarmAudioService$8;-><init>(Lru/okei/timetable/alarm/AlarmAudioService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sessionId()I
    .locals 1

    .line 423
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    :goto_0
    return v0
.end method

.method public state()I
    .locals 1

    .line 419
    iget v0, p0, Lru/okei/timetable/alarm/AlarmAudioService;->state:I

    return v0
.end method
