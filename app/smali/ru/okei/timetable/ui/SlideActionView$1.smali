.class Lru/okei/timetable/ui/SlideActionView$1;
.super Ljava/lang/Object;
.source "SlideActionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/ui/SlideActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/ui/SlideActionView;


# direct methods
.method constructor <init>(Lru/okei/timetable/ui/SlideActionView;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 168
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-static {v0}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fgetglowCurrent(Lru/okei/timetable/ui/SlideActionView;)F

    move-result v1

    iget-object v2, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-static {v2}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fgetglowTarget(Lru/okei/timetable/ui/SlideActionView;)F

    move-result v2

    iget-object v3, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-static {v3}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fgetglowCurrent(Lru/okei/timetable/ui/SlideActionView;)F

    move-result v3

    sub-float/2addr v2, v3

    const v3, 0x3e3851ec    # 0.18f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fputglowCurrent(Lru/okei/timetable/ui/SlideActionView;F)V

    .line 169
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-static {v0}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fgetglowCurrent(Lru/okei/timetable/ui/SlideActionView;)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x3b83126f    # 0.004f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-static {v0}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fgetglowTarget(Lru/okei/timetable/ui/SlideActionView;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    .line 170
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-static {v0, v1}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fputglowCurrent(Lru/okei/timetable/ui/SlideActionView;F)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 174
    :goto_0
    iget-object v4, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-static {v4}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fgetglowTarget(Lru/okei/timetable/ui/SlideActionView;)F

    move-result v5

    const v6, 0x3f666666    # 0.9f

    mul-float v5, v5, v6

    invoke-static {v4, v5}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fputglowTarget(Lru/okei/timetable/ui/SlideActionView;F)V

    .line 175
    iget-object v4, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-static {v4}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fgetfloatPhase(Lru/okei/timetable/ui/SlideActionView;)F

    move-result v5

    const v6, 0x3da3d70a    # 0.08f

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fputfloatPhase(Lru/okei/timetable/ui/SlideActionView;F)V

    .line 176
    iget-object v4, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-static {v4}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fgetfloatPhase(Lru/okei/timetable/ui/SlideActionView;)F

    move-result v4

    const v5, 0x40c90fdb

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 177
    iget-object v4, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-static {v4}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fgetfloatPhase(Lru/okei/timetable/ui/SlideActionView;)F

    move-result v6

    sub-float/2addr v6, v5

    invoke-static {v4, v6}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fputfloatPhase(Lru/okei/timetable/ui/SlideActionView;F)V

    .line 179
    :cond_1
    iget-object v4, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-static {v4}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fgetbeatKick(Lru/okei/timetable/ui/SlideActionView;)F

    move-result v4

    const v5, 0x3c23d70a    # 0.01f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 180
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-static {v0}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fgetbeatKick(Lru/okei/timetable/ui/SlideActionView;)F

    move-result v1

    const v4, 0x3f59999a    # 0.85f

    mul-float v1, v1, v4

    invoke-static {v0, v1}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fputbeatKick(Lru/okei/timetable/ui/SlideActionView;F)V

    const/4 v0, 0x1

    goto :goto_1

    .line 183
    :cond_2
    iget-object v4, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-static {v4, v1}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fputbeatKick(Lru/okei/timetable/ui/SlideActionView;F)V

    .line 185
    :goto_1
    iget-object v1, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-static {v1}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fgetdragging(Lru/okei/timetable/ui/SlideActionView;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-static {v1}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fgetprogress(Lru/okei/timetable/ui/SlideActionView;)F

    move-result v1

    const v4, 0x3a83126f    # 0.001f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    .line 188
    :cond_4
    :goto_2
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-virtual {v0}, Lru/okei/timetable/ui/SlideActionView;->invalidate()V

    if-eqz v2, :cond_5

    .line 190
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-virtual {v0, p0}, Lru/okei/timetable/ui/SlideActionView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 192
    :cond_5
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView$1;->this$0:Lru/okei/timetable/ui/SlideActionView;

    invoke-static {v0, v3}, Lru/okei/timetable/ui/SlideActionView;->-$$Nest$fputanimating(Lru/okei/timetable/ui/SlideActionView;Z)V

    :goto_3
    return-void
.end method
