.class public final Lru/okei/timetable/BeatDetector;
.super Ljava/lang/Object;
.source "BeatDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/BeatDetector$Listener;
    }
.end annotation


# static fields
.field private static final BANDS:I = 0x10

.field private static final BASS_BINS:I = 0x7

.field private static final HISTORY:I = 0x2b

.field private static final MIN_GAP_MS:J = 0x69L

.field private static final SILENCE_MS:J = 0x5dcL

.field private static final SPECTRUM_MS:J = 0x2dL


# instance fields
.field private final bands:[F

.field private final history:[D

.field private historyCount:I

.field private historyIndex:I

.field private lastBeatAt:J

.field private lastDataAt:J

.field private lastSpectrumAt:J

.field private volatile listener:Lru/okei/timetable/BeatDetector$Listener;

.field private volatile running:Z

.field private volatile visualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method static bridge synthetic -$$Nest$manalyze(Lru/okei/timetable/BeatDetector;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/BeatDetector;->analyze([B)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2b

    new-array v0, v0, [D

    .line 31
    iput-object v0, p0, Lru/okei/timetable/BeatDetector;->history:[D

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 37
    iput-object v0, p0, Lru/okei/timetable/BeatDetector;->bands:[F

    return-void
.end method

.method private analyze([B)V
    .locals 14

    .line 130
    iget-object v0, p0, Lru/okei/timetable/BeatDetector;->listener:Lru/okei/timetable/BeatDetector$Listener;

    if-eqz p1, :cond_6

    .line 131
    array-length v1, p1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_6

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 134
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 135
    iput-wide v1, p0, Lru/okei/timetable/BeatDetector;->lastDataAt:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    move-wide v7, v3

    const/4 v6, 0x1

    :goto_0
    const/4 v9, 0x7

    if-ge v6, v9, :cond_1

    mul-int/lit8 v9, v6, 0x2

    .line 139
    aget-byte v10, p1, v9

    int-to-double v10, v10

    add-int/2addr v9, v5

    aget-byte v9, p1, v9

    int-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v9, 0x401c000000000000L    # 7.0

    div-double/2addr v7, v9

    const/4 v6, 0x0

    .line 144
    :goto_1
    iget v9, p0, Lru/okei/timetable/BeatDetector;->historyCount:I

    if-ge v6, v9, :cond_2

    .line 145
    iget-object v9, p0, Lru/okei/timetable/BeatDetector;->history:[D

    aget-wide v10, v9, v6

    add-double/2addr v3, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    if-nez v9, :cond_3

    move-wide v3, v7

    goto :goto_2

    :cond_3
    int-to-double v10, v9

    div-double/2addr v3, v10

    .line 149
    :goto_2
    iget-object v6, p0, Lru/okei/timetable/BeatDetector;->history:[D

    iget v10, p0, Lru/okei/timetable/BeatDetector;->historyIndex:I

    aput-wide v7, v6, v10

    add-int/2addr v10, v5

    const/16 v6, 0x2b

    .line 150
    rem-int/2addr v10, v6

    iput v10, p0, Lru/okei/timetable/BeatDetector;->historyIndex:I

    if-ge v9, v6, :cond_4

    add-int/2addr v9, v5

    .line 152
    iput v9, p0, Lru/okei/timetable/BeatDetector;->historyCount:I

    .line 155
    :cond_4
    iget-wide v5, p0, Lru/okei/timetable/BeatDetector;->lastSpectrumAt:J

    sub-long v5, v1, v5

    const-wide/16 v9, 0x2d

    cmp-long v11, v5, v9

    if-ltz v11, :cond_5

    .line 156
    iput-wide v1, p0, Lru/okei/timetable/BeatDetector;->lastSpectrumAt:J

    .line 157
    invoke-direct {p0, p1}, Lru/okei/timetable/BeatDetector;->collectBands([B)V

    .line 158
    iget-object p1, p0, Lru/okei/timetable/BeatDetector;->bands:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    invoke-interface {v0, p1}, Lru/okei/timetable/BeatDetector$Listener;->onSpectrum([F)V

    :cond_5
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v3, v5

    if-lez p1, :cond_6

    const-wide v5, 0x3ff23d70a3d70a3dL    # 1.14

    mul-double v9, v3, v5

    cmpl-double p1, v7, v9

    if-lez p1, :cond_6

    .line 160
    iget-wide v9, p0, Lru/okei/timetable/BeatDetector;->lastBeatAt:J

    sub-long v9, v1, v9

    const-wide/16 v11, 0x69

    cmp-long p1, v9, v11

    if-lez p1, :cond_6

    .line 161
    iput-wide v1, p0, Lru/okei/timetable/BeatDetector;->lastBeatAt:J

    div-double/2addr v7, v3

    sub-double/2addr v7, v5

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    div-double/2addr v7, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 162
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-float p1, v1

    const v1, 0x3f0ccccd    # 0.55f

    mul-float p1, p1, v1

    const v1, 0x3ee66666    # 0.45f

    add-float/2addr p1, v1

    .line 163
    invoke-interface {v0, p1}, Lru/okei/timetable/BeatDetector$Listener;->onBeat(F)V

    :cond_6
    :goto_3
    return-void
.end method

.method private collectBands([B)V
    .locals 15

    move-object/from16 v0, p1

    .line 114
    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0x80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_2

    add-int/lit8 v5, v1, -0x1

    mul-int v6, v3, v5

    .line 116
    div-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v3, 0x1

    mul-int v5, v5, v7

    .line 117
    div-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    if-ge v6, v1, :cond_0

    mul-int/lit8 v12, v6, 0x2

    .line 121
    aget-byte v13, v0, v12

    int-to-double v13, v13

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, v0, v12

    int-to-double v8, v12

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    add-double/2addr v10, v8

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_1
    int-to-double v4, v4

    div-double v8, v10, v4

    :goto_2
    move-object v4, p0

    .line 125
    iget-object v5, v4, Lru/okei/timetable/BeatDetector;->bands:[F

    const-wide v10, 0x4056800000000000L    # 90.0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-float v6, v8

    aput v6, v5, v3

    move v3, v7

    goto :goto_0

    :cond_2
    move-object v4, p0

    return-void
.end method


# virtual methods
.method public active()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lru/okei/timetable/BeatDetector;->running:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/okei/timetable/BeatDetector;->visualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public stale(J)Z
    .locals 5

    .line 86
    iget-boolean v0, p0, Lru/okei/timetable/BeatDetector;->running:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lru/okei/timetable/BeatDetector;->lastDataAt:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x5dc

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized start(Landroid/media/MediaPlayer;Lru/okei/timetable/BeatDetector$Listener;)Z
    .locals 4

    const-string v0, "visualizer enabled="

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lru/okei/timetable/BeatDetector;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    :try_start_1
    iput-object p2, p0, Lru/okei/timetable/BeatDetector;->listener:Lru/okei/timetable/BeatDetector$Listener;

    .line 53
    new-instance p2, Landroid/media/audiofx/Visualizer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result p1

    invoke-direct {p2, p1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object p2, p0, Lru/okei/timetable/BeatDetector;->visualizer:Landroid/media/audiofx/Visualizer;

    .line 54
    iget-object p1, p0, Lru/okei/timetable/BeatDetector;->visualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object p2

    const/4 v2, 0x1

    aget p2, p2, v2

    invoke-virtual {p1, p2}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 55
    iget-object p1, p0, Lru/okei/timetable/BeatDetector;->visualizer:Landroid/media/audiofx/Visualizer;

    new-instance p2, Lru/okei/timetable/BeatDetector$1;

    invoke-direct {p2, p0}, Lru/okei/timetable/BeatDetector$1;-><init>(Lru/okei/timetable/BeatDetector;)V

    .line 64
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 55
    invoke-virtual {p1, p2, v3, v1, v2}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 65
    iget-object p1, p0, Lru/okei/timetable/BeatDetector;->visualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {p1, v2}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    move-result p1

    if-eqz p1, :cond_1

    const-string p2, "BeatDetector"

    .line 67
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v2}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    invoke-virtual {p0}, Lru/okei/timetable/BeatDetector;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    monitor-exit p0

    return v1

    .line 71
    :cond_1
    :try_start_2
    iput-boolean v2, p0, Lru/okei/timetable/BeatDetector;->running:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    :try_start_3
    const-string p2, "BeatDetector"

    .line 74
    invoke-static {p2, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    invoke-virtual {p0}, Lru/okei/timetable/BeatDetector;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    monitor-exit p0

    return v1

    .line 46
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 90
    :try_start_0
    iput-boolean v0, p0, Lru/okei/timetable/BeatDetector;->running:Z

    .line 91
    iget-object v1, p0, Lru/okei/timetable/BeatDetector;->visualizer:Landroid/media/audiofx/Visualizer;

    const/4 v2, 0x0

    .line 92
    iput-object v2, p0, Lru/okei/timetable/BeatDetector;->visualizer:Landroid/media/audiofx/Visualizer;

    .line 93
    iput-object v2, p0, Lru/okei/timetable/BeatDetector;->listener:Lru/okei/timetable/BeatDetector$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    .line 96
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    const-string v3, "BeatDetector"

    .line 98
    invoke-static {v3, v2}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 101
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    const-string v2, "BeatDetector"

    .line 103
    invoke-static {v2, v1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    :cond_0
    :goto_1
    iput v0, p0, Lru/okei/timetable/BeatDetector;->historyIndex:I

    .line 107
    iput v0, p0, Lru/okei/timetable/BeatDetector;->historyCount:I

    const-wide/16 v0, 0x0

    .line 108
    iput-wide v0, p0, Lru/okei/timetable/BeatDetector;->lastBeatAt:J

    .line 109
    iput-wide v0, p0, Lru/okei/timetable/BeatDetector;->lastSpectrumAt:J

    .line 110
    iput-wide v0, p0, Lru/okei/timetable/BeatDetector;->lastDataAt:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 111
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method
