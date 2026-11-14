.class Lru/okei/timetable/BeatDetector$1;
.super Ljava/lang/Object;
.source "BeatDetector.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/BeatDetector;->start(Landroid/media/MediaPlayer;Lru/okei/timetable/BeatDetector$Listener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/BeatDetector;


# direct methods
.method constructor <init>(Lru/okei/timetable/BeatDetector;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lru/okei/timetable/BeatDetector$1;->this$0:Lru/okei/timetable/BeatDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    .line 62
    iget-object p1, p0, Lru/okei/timetable/BeatDetector$1;->this$0:Lru/okei/timetable/BeatDetector;

    invoke-static {p1, p2}, Lru/okei/timetable/BeatDetector;->-$$Nest$manalyze(Lru/okei/timetable/BeatDetector;[B)V

    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    return-void
.end method
