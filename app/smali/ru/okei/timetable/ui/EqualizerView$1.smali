.class Lru/okei/timetable/ui/EqualizerView$1;
.super Ljava/lang/Object;
.source "EqualizerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/ui/EqualizerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/ui/EqualizerView;


# direct methods
.method constructor <init>(Lru/okei/timetable/ui/EqualizerView;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lru/okei/timetable/ui/EqualizerView$1;->this$0:Lru/okei/timetable/ui/EqualizerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x1a

    if-ge v1, v3, :cond_2

    .line 37
    iget-object v3, p0, Lru/okei/timetable/ui/EqualizerView$1;->this$0:Lru/okei/timetable/ui/EqualizerView;

    invoke-static {v3}, Lru/okei/timetable/ui/EqualizerView;->-$$Nest$fgetlevel(Lru/okei/timetable/ui/EqualizerView;)[F

    move-result-object v3

    aget v3, v3, v1

    iget-object v4, p0, Lru/okei/timetable/ui/EqualizerView$1;->this$0:Lru/okei/timetable/ui/EqualizerView;

    invoke-static {v4}, Lru/okei/timetable/ui/EqualizerView;->-$$Nest$fgettarget(Lru/okei/timetable/ui/EqualizerView;)[F

    move-result-object v4

    aget v4, v4, v1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 38
    iget-object v3, p0, Lru/okei/timetable/ui/EqualizerView$1;->this$0:Lru/okei/timetable/ui/EqualizerView;

    invoke-static {v3}, Lru/okei/timetable/ui/EqualizerView;->-$$Nest$fgetlevel(Lru/okei/timetable/ui/EqualizerView;)[F

    move-result-object v3

    iget-object v4, p0, Lru/okei/timetable/ui/EqualizerView$1;->this$0:Lru/okei/timetable/ui/EqualizerView;

    invoke-static {v4}, Lru/okei/timetable/ui/EqualizerView;->-$$Nest$fgettarget(Lru/okei/timetable/ui/EqualizerView;)[F

    move-result-object v4

    aget v4, v4, v1

    iget-object v5, p0, Lru/okei/timetable/ui/EqualizerView$1;->this$0:Lru/okei/timetable/ui/EqualizerView;

    invoke-static {v5}, Lru/okei/timetable/ui/EqualizerView;->-$$Nest$fgetlevel(Lru/okei/timetable/ui/EqualizerView;)[F

    move-result-object v5

    aget v5, v5, v1

    const v6, 0x3db851ec    # 0.09f

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v3, v1

    goto :goto_1

    .line 40
    :cond_0
    iget-object v3, p0, Lru/okei/timetable/ui/EqualizerView$1;->this$0:Lru/okei/timetable/ui/EqualizerView;

    invoke-static {v3}, Lru/okei/timetable/ui/EqualizerView;->-$$Nest$fgetlevel(Lru/okei/timetable/ui/EqualizerView;)[F

    move-result-object v3

    iget-object v4, p0, Lru/okei/timetable/ui/EqualizerView$1;->this$0:Lru/okei/timetable/ui/EqualizerView;

    invoke-static {v4}, Lru/okei/timetable/ui/EqualizerView;->-$$Nest$fgettarget(Lru/okei/timetable/ui/EqualizerView;)[F

    move-result-object v4

    aget v4, v4, v1

    iget-object v5, p0, Lru/okei/timetable/ui/EqualizerView$1;->this$0:Lru/okei/timetable/ui/EqualizerView;

    invoke-static {v5}, Lru/okei/timetable/ui/EqualizerView;->-$$Nest$fgetlevel(Lru/okei/timetable/ui/EqualizerView;)[F

    move-result-object v5

    aget v5, v5, v1

    const v6, 0x3e8f5c29    # 0.28f

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v3, v1

    .line 42
    :goto_1
    iget-object v3, p0, Lru/okei/timetable/ui/EqualizerView$1;->this$0:Lru/okei/timetable/ui/EqualizerView;

    invoke-static {v3}, Lru/okei/timetable/ui/EqualizerView;->-$$Nest$fgetlevel(Lru/okei/timetable/ui/EqualizerView;)[F

    move-result-object v3

    aget v3, v3, v1

    const v4, 0x3ca3d70a    # 0.02f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_2
    iget-object v1, p0, Lru/okei/timetable/ui/EqualizerView$1;->this$0:Lru/okei/timetable/ui/EqualizerView;

    invoke-virtual {v1}, Lru/okei/timetable/ui/EqualizerView;->invalidate()V

    if-eqz v2, :cond_3

    .line 48
    iget-object v0, p0, Lru/okei/timetable/ui/EqualizerView$1;->this$0:Lru/okei/timetable/ui/EqualizerView;

    invoke-static {v0}, Lru/okei/timetable/ui/EqualizerView;->-$$Nest$fgethandler(Lru/okei/timetable/ui/EqualizerView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x21

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 50
    :cond_3
    iget-object v1, p0, Lru/okei/timetable/ui/EqualizerView$1;->this$0:Lru/okei/timetable/ui/EqualizerView;

    invoke-static {v1, v0}, Lru/okei/timetable/ui/EqualizerView;->-$$Nest$fputrunning(Lru/okei/timetable/ui/EqualizerView;Z)V

    :goto_2
    return-void
.end method
