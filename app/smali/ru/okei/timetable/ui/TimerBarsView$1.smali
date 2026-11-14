.class Lru/okei/timetable/ui/TimerBarsView$1;
.super Ljava/lang/Object;
.source "TimerBarsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/ui/TimerBarsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/ui/TimerBarsView;


# direct methods
.method constructor <init>(Lru/okei/timetable/ui/TimerBarsView;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x22

    const v4, 0x3f666666    # 0.9f

    const/4 v5, 0x1

    if-ge v1, v3, :cond_6

    .line 182
    iget-object v3, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgettarget(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v3

    aget v3, v3, v1

    iget-object v6, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v6}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetlevel(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v6

    aget v6, v6, v1

    sub-float/2addr v3, v6

    const v6, 0x3e8f5c29    # 0.28f

    mul-float v3, v3, v6

    .line 183
    iget-object v6, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v6}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetvelocity(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v6

    iget-object v7, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v7}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetvelocity(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v7

    aget v7, v7, v1

    add-float/2addr v7, v3

    const v3, 0x3f3d70a4    # 0.74f

    mul-float v7, v7, v3

    aput v7, v6, v1

    .line 184
    iget-object v3, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetlevel(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v3

    aget v6, v3, v1

    iget-object v7, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v7}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetvelocity(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v7

    aget v7, v7, v1

    add-float/2addr v6, v7

    aput v6, v3, v1

    .line 185
    iget-object v3, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetlevel(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v3

    aget v3, v3, v1

    const/4 v6, 0x0

    cmpg-float v3, v3, v6

    if-gez v3, :cond_0

    .line 186
    iget-object v3, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetlevel(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v3

    aput v6, v3, v1

    .line 187
    iget-object v3, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetvelocity(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v3

    aput v6, v3, v1

    goto :goto_1

    .line 188
    :cond_0
    iget-object v3, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetlevel(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v3

    aget v3, v3, v1

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v7

    if-lez v3, :cond_1

    .line 189
    iget-object v3, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetlevel(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v3

    aput v7, v3, v1

    .line 190
    iget-object v3, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetvelocity(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v3

    iget-object v7, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v7}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetvelocity(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v7

    aget v7, v7, v1

    neg-float v7, v7

    const v8, 0x3e99999a    # 0.3f

    mul-float v7, v7, v8

    aput v7, v3, v1

    .line 192
    :cond_1
    :goto_1
    iget-object v3, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetdying(Lru/okei/timetable/ui/TimerBarsView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    iget-object v3, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgettarget(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v3

    aput v6, v3, v1

    goto :goto_2

    .line 194
    :cond_2
    iget-object v3, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetrhythm(Lru/okei/timetable/ui/TimerBarsView;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    iget-object v3, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgettarget(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v3

    aget v6, v3, v1

    mul-float v6, v6, v4

    aput v6, v3, v1

    .line 197
    :cond_3
    :goto_2
    iget-object v3, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetvelocity(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v3

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3b83126f    # 0.004f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_4

    iget-object v3, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetlevel(Lru/okei/timetable/ui/TimerBarsView;)[F

    move-result-object v3

    aget v3, v3, v1

    const v4, 0x3ca3d70a    # 0.02f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 201
    :cond_6
    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v1}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetbeat(Lru/okei/timetable/ui/TimerBarsView;)F

    move-result v3

    mul-float v3, v3, v4

    invoke-static {v1, v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fputbeat(Lru/okei/timetable/ui/TimerBarsView;F)V

    .line 202
    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v1}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetflash(Lru/okei/timetable/ui/TimerBarsView;)F

    move-result v3

    const v6, 0x3f5c28f6    # 0.86f

    mul-float v3, v3, v6

    invoke-static {v1, v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fputflash(Lru/okei/timetable/ui/TimerBarsView;F)V

    .line 203
    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v1}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetbeat(Lru/okei/timetable/ui/TimerBarsView;)F

    move-result v1

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_7

    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v1}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetflash(Lru/okei/timetable/ui/TimerBarsView;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_8

    :cond_7
    const/4 v2, 0x1

    .line 206
    :cond_8
    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v1}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetrhythm(Lru/okei/timetable/ui/TimerBarsView;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 207
    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v1}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetspin(Lru/okei/timetable/ui/TimerBarsView;)F

    move-result v2

    add-float/2addr v2, v4

    invoke-static {v1, v2}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fputspin(Lru/okei/timetable/ui/TimerBarsView;F)V

    .line 208
    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v1}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetspin(Lru/okei/timetable/ui/TimerBarsView;)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    .line 209
    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v1}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetspin(Lru/okei/timetable/ui/TimerBarsView;)F

    move-result v3

    sub-float/2addr v3, v2

    invoke-static {v1, v3}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fputspin(Lru/okei/timetable/ui/TimerBarsView;F)V

    :cond_9
    const/4 v2, 0x1

    .line 213
    :cond_a
    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v1}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetmorphing(Lru/okei/timetable/ui/TimerBarsView;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v1}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgetmorphStart(Lru/okei/timetable/ui/TimerBarsView;)J

    move-result-wide v6

    sub-long/2addr v3, v6

    const-wide/16 v6, 0x1cc

    cmp-long v1, v3, v6

    if-ltz v1, :cond_c

    .line 215
    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v1, v0}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fputmorphing(Lru/okei/timetable/ui/TimerBarsView;Z)V

    :cond_b
    move v5, v2

    .line 220
    :cond_c
    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-virtual {v1}, Lru/okei/timetable/ui/TimerBarsView;->invalidate()V

    if-eqz v5, :cond_d

    .line 222
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v0}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fgethandler(Lru/okei/timetable/ui/TimerBarsView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x21

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 224
    :cond_d
    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView$1;->this$0:Lru/okei/timetable/ui/TimerBarsView;

    invoke-static {v1, v0}, Lru/okei/timetable/ui/TimerBarsView;->-$$Nest$fputrunning(Lru/okei/timetable/ui/TimerBarsView;Z)V

    :goto_3
    return-void
.end method
