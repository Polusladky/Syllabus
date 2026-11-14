.class public Lru/okei/timetable/ui/EqualizerView;
.super Landroid/view/View;
.source "EqualizerView.java"


# static fields
.field private static final BARS:I = 0x1a

.field private static final FALL:F = 0.09f

.field private static final FRAME_MS:J = 0x21L

.field private static final RISE:F = 0.28f


# instance fields
.field private final frame:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private final level:[F

.field private final paint:Landroid/graphics/Paint;

.field private running:Z

.field private final target:[F


# direct methods
.method static bridge synthetic -$$Nest$fgethandler(Lru/okei/timetable/ui/EqualizerView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/ui/EqualizerView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlevel(Lru/okei/timetable/ui/EqualizerView;)[F
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/ui/EqualizerView;->level:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettarget(Lru/okei/timetable/ui/EqualizerView;)[F
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/ui/EqualizerView;->target:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputrunning(Lru/okei/timetable/ui/EqualizerView;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/ui/EqualizerView;->running:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/EqualizerView;->paint:Landroid/graphics/Paint;

    .line 27
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lru/okei/timetable/ui/EqualizerView;->handler:Landroid/os/Handler;

    const/16 p2, 0x1a

    new-array v0, p2, [F

    .line 28
    iput-object v0, p0, Lru/okei/timetable/ui/EqualizerView;->level:[F

    new-array p2, p2, [F

    .line 29
    iput-object p2, p0, Lru/okei/timetable/ui/EqualizerView;->target:[F

    .line 32
    new-instance p2, Lru/okei/timetable/ui/EqualizerView$1;

    invoke-direct {p2, p0}, Lru/okei/timetable/ui/EqualizerView$1;-><init>(Lru/okei/timetable/ui/EqualizerView;)V

    iput-object p2, p0, Lru/okei/timetable/ui/EqualizerView;->frame:Ljava/lang/Runnable;

    const/4 p2, 0x2

    .line 57
    invoke-virtual {p0, p2}, Lru/okei/timetable/ui/EqualizerView;->setImportantForAccessibility(I)V

    const/4 p2, 0x0

    .line 58
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p2, -0x1

    .line 60
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 118
    iget-object v0, p0, Lru/okei/timetable/ui/EqualizerView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 119
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 95
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/EqualizerView;->getWidth()I

    move-result v1

    .line 96
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/EqualizerView;->getHeight()I

    move-result v2

    if-lez v1, :cond_2

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    int-to-float v1, v1

    const/high16 v3, 0x41d00000    # 26.0f

    div-float/2addr v1, v3

    const v3, 0x3e6147ae    # 0.22f

    mul-float v3, v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 101
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    int-to-float v2, v2

    const/high16 v4, 0x41600000    # 14.0f

    div-float v4, v2, v4

    const/high16 v5, 0x40400000    # 3.0f

    .line 102
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x0

    :cond_1
    const/16 v6, 0x1a

    if-ge v5, v6, :cond_2

    .line 104
    iget-object v6, v0, Lru/okei/timetable/ui/EqualizerView;->level:[F

    aget v6, v6, v5

    mul-float v6, v6, v2

    int-to-float v7, v5

    mul-float v7, v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v3, v8

    add-float/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    int-to-float v9, v5

    mul-float v9, v9, v1

    sub-float v15, v9, v8

    move v9, v2

    :goto_0
    sub-float v10, v2, v6

    cmpl-float v11, v9, v10

    if-lez v11, :cond_1

    sub-float v14, v9, v4

    .line 109
    invoke-static {v10, v14}, Ljava/lang/Math;->max(FF)F

    move-result v11

    sub-float v13, v9, v8

    .line 110
    iget-object v12, v0, Lru/okei/timetable/ui/EqualizerView;->paint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v7

    move-object/from16 v16, v12

    move v12, v15

    move/from16 v17, v14

    move-object/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v9, v17

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public quiet()V
    .locals 4

    .line 84
    iget-object v0, p0, Lru/okei/timetable/ui/EqualizerView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 86
    iget-object v2, p0, Lru/okei/timetable/ui/EqualizerView;->level:[F

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 87
    iget-object v2, p0, Lru/okei/timetable/ui/EqualizerView;->target:[F

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iput-boolean v0, p0, Lru/okei/timetable/ui/EqualizerView;->running:Z

    .line 90
    invoke-virtual {p0}, Lru/okei/timetable/ui/EqualizerView;->invalidate()V

    return-void
.end method

.method public setBands([F)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 68
    array-length v3, p1

    mul-int v3, v3, v0

    div-int/2addr v3, v1

    .line 69
    array-length v1, p1

    if-lt v3, v1, :cond_1

    .line 70
    array-length v1, p1

    add-int/lit8 v3, v1, -0x1

    .line 73
    :cond_1
    aget v1, p1, v3

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 74
    iget-object v2, p0, Lru/okei/timetable/ui/EqualizerView;->target:[F

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_2
    iget-boolean p1, p0, Lru/okei/timetable/ui/EqualizerView;->running:Z

    if-nez p1, :cond_3

    .line 77
    iput-boolean v2, p0, Lru/okei/timetable/ui/EqualizerView;->running:Z

    .line 78
    iget-object p1, p0, Lru/okei/timetable/ui/EqualizerView;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lru/okei/timetable/ui/EqualizerView;->frame:Ljava/lang/Runnable;

    const-wide/16 v1, 0x21

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    :cond_3
    invoke-virtual {p0}, Lru/okei/timetable/ui/EqualizerView;->invalidate()V

    return-void
.end method
