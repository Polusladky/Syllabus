.class Lru/okei/timetable/SparkOverlayView$1;
.super Ljava/lang/Object;
.source "SparkOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/SparkOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SparkOverlayView;


# direct methods
.method constructor <init>(Lru/okei/timetable/SparkOverlayView;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 96
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v0}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fgetactive(Lru/okei/timetable/SparkOverlayView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v0, v1}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fputrunning(Lru/okei/timetable/SparkOverlayView;Z)V

    return-void

    :cond_0
    :goto_0
    const/16 v0, 0x2e

    if-ge v1, v0, :cond_2

    .line 101
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v0}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fgety(Lru/okei/timetable/SparkOverlayView;)[F

    move-result-object v0

    aget v2, v0, v1

    iget-object v3, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v3}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fgetspeed(Lru/okei/timetable/SparkOverlayView;)[F

    move-result-object v3

    aget v3, v3, v1

    iget-object v4, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v4}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fgetbeat(Lru/okei/timetable/SparkOverlayView;)F

    move-result v4

    const v5, 0x4019999a    # 2.4f

    mul-float v4, v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 102
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v0}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fgety(Lru/okei/timetable/SparkOverlayView;)[F

    move-result-object v0

    aget v0, v0, v1

    const v2, -0x42b33333    # -0.05f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 103
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v0}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fgety(Lru/okei/timetable/SparkOverlayView;)[F

    move-result-object v0

    const v2, 0x3f866666    # 1.05f

    aput v2, v0, v1

    .line 104
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v0}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fgetx(Lru/okei/timetable/SparkOverlayView;)[F

    move-result-object v0

    iget-object v2, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v2}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fgetrandom(Lru/okei/timetable/SparkOverlayView;)Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    aput v2, v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v0}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fgetglitchTtl(Lru/okei/timetable/SparkOverlayView;)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_3

    .line 108
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v0}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fgetglitchTtl(Lru/okei/timetable/SparkOverlayView;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fputglitchTtl(Lru/okei/timetable/SparkOverlayView;I)V

    goto :goto_1

    .line 109
    :cond_3
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v0}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fgetrandom(Lru/okei/timetable/SparkOverlayView;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v2, 0x3da3d70a    # 0.08f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 110
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v0}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fgetrandom(Lru/okei/timetable/SparkOverlayView;)Ljava/util/Random;

    move-result-object v2

    iget-object v3, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-virtual {v3}, Lru/okei/timetable/SparkOverlayView;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fputglitchRow(Lru/okei/timetable/SparkOverlayView;I)V

    .line 111
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-virtual {v0}, Lru/okei/timetable/SparkOverlayView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v2}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fgetrandom(Lru/okei/timetable/SparkOverlayView;)Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    const v3, 0x3e19999a    # 0.15f

    add-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fputglitchWidth(Lru/okei/timetable/SparkOverlayView;I)V

    .line 112
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v0}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fgetrandom(Lru/okei/timetable/SparkOverlayView;)Ljava/util/Random;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fputglitchTtl(Lru/okei/timetable/SparkOverlayView;I)V

    .line 114
    :cond_4
    :goto_1
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v0}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fgetbeat(Lru/okei/timetable/SparkOverlayView;)F

    move-result v1

    const v2, 0x3f6147ae    # 0.88f

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fputbeat(Lru/okei/timetable/SparkOverlayView;F)V

    .line 115
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-virtual {v0}, Lru/okei/timetable/SparkOverlayView;->invalidate()V

    .line 116
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView$1;->this$0:Lru/okei/timetable/SparkOverlayView;

    invoke-static {v0}, Lru/okei/timetable/SparkOverlayView;->-$$Nest$fgethandler(Lru/okei/timetable/SparkOverlayView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
