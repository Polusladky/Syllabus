.class public Lru/okei/timetable/BeatBarsView;
.super Landroid/view/View;
.source "BeatBarsView.java"


# static fields
.field private static final BARS:I = 0xe

.field private static final FALL:F = 0.085f

.field private static final FRAME_MS:J = 0x21L


# instance fields
.field private final frame:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private final level:[F

.field private final paint:Landroid/graphics/Paint;

.field private final random:Ljava/util/Random;

.field private running:Z

.field private final target:[F


# direct methods
.method static bridge synthetic -$$Nest$fgethandler(Lru/okei/timetable/BeatBarsView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/BeatBarsView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlevel(Lru/okei/timetable/BeatBarsView;)[F
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/BeatBarsView;->level:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettarget(Lru/okei/timetable/BeatBarsView;)[F
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/BeatBarsView;->target:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputrunning(Lru/okei/timetable/BeatBarsView;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/BeatBarsView;->running:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/BeatBarsView;->paint:Landroid/graphics/Paint;

    .line 24
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lru/okei/timetable/BeatBarsView;->handler:Landroid/os/Handler;

    .line 25
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    iput-object p2, p0, Lru/okei/timetable/BeatBarsView;->random:Ljava/util/Random;

    const/16 p2, 0xe

    new-array v0, p2, [F

    .line 26
    iput-object v0, p0, Lru/okei/timetable/BeatBarsView;->level:[F

    new-array p2, p2, [F

    .line 27
    iput-object p2, p0, Lru/okei/timetable/BeatBarsView;->target:[F

    .line 30
    new-instance p2, Lru/okei/timetable/BeatBarsView$1;

    invoke-direct {p2, p0}, Lru/okei/timetable/BeatBarsView$1;-><init>(Lru/okei/timetable/BeatBarsView;)V

    iput-object p2, p0, Lru/okei/timetable/BeatBarsView;->frame:Ljava/lang/Runnable;

    const/4 p2, 0x2

    .line 55
    invoke-virtual {p0, p2}, Lru/okei/timetable/BeatBarsView;->setImportantForAccessibility(I)V

    const/4 p2, 0x0

    .line 56
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 p2, -0x1

    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public beat(F)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 64
    iget-object v1, p0, Lru/okei/timetable/BeatBarsView;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    const v2, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v2

    .line 65
    iget-object v2, p0, Lru/okei/timetable/BeatBarsView;->target:[F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v1, v1, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v2, v0

    .line 66
    iget-object v1, p0, Lru/okei/timetable/BeatBarsView;->target:[F

    aget v2, v1, v0

    iget-object v3, p0, Lru/okei/timetable/BeatBarsView;->level:[F

    aget v3, v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 67
    aput v3, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    iget-boolean p1, p0, Lru/okei/timetable/BeatBarsView;->running:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lru/okei/timetable/BeatBarsView;->running:Z

    .line 72
    iget-object p1, p0, Lru/okei/timetable/BeatBarsView;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lru/okei/timetable/BeatBarsView;->frame:Ljava/lang/Runnable;

    const-wide/16 v1, 0x21

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    :cond_2
    invoke-virtual {p0}, Lru/okei/timetable/BeatBarsView;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 109
    iget-object v0, p0, Lru/okei/timetable/BeatBarsView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 110
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 89
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/BeatBarsView;->getWidth()I

    move-result v1

    .line 90
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/BeatBarsView;->getHeight()I

    move-result v2

    if-lez v1, :cond_2

    if-gtz v2, :cond_0

    goto :goto_2

    :cond_0
    int-to-float v1, v1

    const/high16 v3, 0x41600000    # 14.0f

    div-float/2addr v1, v3

    int-to-float v2, v2

    .line 95
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v4, 0x3f3851ec    # 0.72f

    mul-float v3, v3, v4

    sub-float v4, v1, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0xe

    if-ge v6, v7, :cond_2

    .line 98
    iget-object v7, v0, Lru/okei/timetable/BeatBarsView;->level:[F

    aget v7, v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    div-float v8, v2, v8

    mul-float v7, v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    int-to-float v9, v8

    mul-float v9, v9, v3

    sub-float v9, v2, v9

    int-to-float v10, v6

    mul-float v10, v10, v1

    add-float v12, v10, v4

    sub-float v10, v9, v3

    add-float v13, v10, v4

    add-float v10, v12, v3

    sub-float v14, v10, v4

    sub-float v15, v9, v4

    .line 101
    iget-object v9, v0, Lru/okei/timetable/BeatBarsView;->paint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public quiet()V
    .locals 4

    .line 78
    iget-object v0, p0, Lru/okei/timetable/BeatBarsView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 80
    iget-object v2, p0, Lru/okei/timetable/BeatBarsView;->level:[F

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 81
    iget-object v2, p0, Lru/okei/timetable/BeatBarsView;->target:[F

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iput-boolean v0, p0, Lru/okei/timetable/BeatBarsView;->running:Z

    .line 84
    invoke-virtual {p0}, Lru/okei/timetable/BeatBarsView;->invalidate()V

    return-void
.end method
