.class Lru/okei/timetable/ui/ShareIconView$1;
.super Ljava/lang/Object;
.source "ShareIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/ui/ShareIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/ui/ShareIconView;


# direct methods
.method constructor <init>(Lru/okei/timetable/ui/ShareIconView;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lru/okei/timetable/ui/ShareIconView$1;->this$0:Lru/okei/timetable/ui/ShareIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 53
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView$1;->this$0:Lru/okei/timetable/ui/ShareIconView;

    invoke-static {v0}, Lru/okei/timetable/ui/ShareIconView;->-$$Nest$fgetappearStep(Lru/okei/timetable/ui/ShareIconView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lru/okei/timetable/ui/ShareIconView;->-$$Nest$fputappearStep(Lru/okei/timetable/ui/ShareIconView;I)V

    .line 54
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView$1;->this$0:Lru/okei/timetable/ui/ShareIconView;

    invoke-static {v0}, Lru/okei/timetable/ui/ShareIconView;->-$$Nest$fgetappearStep(Lru/okei/timetable/ui/ShareIconView;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41b00000    # 22.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Lru/okei/timetable/ui/ShareIconView;->-$$Nest$fputappearT(Lru/okei/timetable/ui/ShareIconView;F)V

    .line 55
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView$1;->this$0:Lru/okei/timetable/ui/ShareIconView;

    invoke-virtual {v0}, Lru/okei/timetable/ui/ShareIconView;->invalidate()V

    .line 56
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView$1;->this$0:Lru/okei/timetable/ui/ShareIconView;

    invoke-static {v0}, Lru/okei/timetable/ui/ShareIconView;->-$$Nest$fgetappearStep(Lru/okei/timetable/ui/ShareIconView;)I

    move-result v0

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView$1;->this$0:Lru/okei/timetable/ui/ShareIconView;

    invoke-static {v0}, Lru/okei/timetable/ui/ShareIconView;->-$$Nest$fgethandler(Lru/okei/timetable/ui/ShareIconView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x18

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
