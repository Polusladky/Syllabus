.class Lru/okei/timetable/alarm/AlarmHost$2;
.super Ljava/lang/Object;
.source "AlarmHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/alarm/AlarmHost;->close(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/alarm/AlarmHost;

.field final synthetic val$view:Lru/okei/timetable/alarm/AlarmOverlayView;


# direct methods
.method constructor <init>(Lru/okei/timetable/alarm/AlarmHost;Lru/okei/timetable/alarm/AlarmOverlayView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmHost$2;->this$0:Lru/okei/timetable/alarm/AlarmHost;

    iput-object p2, p0, Lru/okei/timetable/alarm/AlarmHost$2;->val$view:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 104
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost$2;->val$view:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-virtual {v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/alarm/AlarmHost$2$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/alarm/AlarmHost$2$1;-><init>(Lru/okei/timetable/alarm/AlarmHost$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
