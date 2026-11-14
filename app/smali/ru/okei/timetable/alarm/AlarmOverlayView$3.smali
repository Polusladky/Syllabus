.class Lru/okei/timetable/alarm/AlarmOverlayView$3;
.super Ljava/lang/Object;
.source "AlarmOverlayView.java"

# interfaces
.implements Lru/okei/timetable/ui/SlideActionView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/alarm/AlarmOverlayView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/alarm/AlarmOverlayView;


# direct methods
.method constructor <init>(Lru/okei/timetable/alarm/AlarmOverlayView;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmOverlayView$3;->this$0:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTriggered()V
    .locals 1

    .line 118
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView$3;->this$0:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->-$$Nest$monSnoozeSwiped(Lru/okei/timetable/alarm/AlarmOverlayView;)V

    return-void
.end method
