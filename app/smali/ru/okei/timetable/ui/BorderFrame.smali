.class public final Lru/okei/timetable/ui/BorderFrame;
.super Landroid/view/View;
.source "BorderFrame.java"


# instance fields
.field private color:I

.field private grow:Z

.field private final paint:Landroid/graphics/Paint;

.field private progress:F

.field private stroke:F


# direct methods
.method static bridge synthetic -$$Nest$fputprogress(Lru/okei/timetable/ui/BorderFrame;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/BorderFrame;->progress:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/BorderFrame;->paint:Landroid/graphics/Paint;

    const v0, -0xd5d5d6

    .line 14
    iput v0, p0, Lru/okei/timetable/ui/BorderFrame;->color:I

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    invoke-virtual {p0}, Lru/okei/timetable/ui/BorderFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lru/okei/timetable/ui/BorderFrame;->stroke:F

    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public drawGrow(J)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lru/okei/timetable/ui/BorderFrame;->grow:Z

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lru/okei/timetable/ui/BorderFrame;->progress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 45
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    new-instance p1, Lru/okei/timetable/ui/BorderFrame$1;

    invoke-direct {p1, p0}, Lru/okei/timetable/ui/BorderFrame$1;-><init>(Lru/okei/timetable/ui/BorderFrame;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public drawLines(J)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lru/okei/timetable/ui/BorderFrame;->grow:Z

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lru/okei/timetable/ui/BorderFrame;->progress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 60
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 62
    new-instance p1, Lru/okei/timetable/ui/BorderFrame$2;

    invoke-direct {p1, p0}, Lru/okei/timetable/ui/BorderFrame$2;-><init>(Lru/okei/timetable/ui/BorderFrame;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 69
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 80
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 81
    iget v1, v0, Lru/okei/timetable/ui/BorderFrame;->progress:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v1, v0, Lru/okei/timetable/ui/BorderFrame;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lru/okei/timetable/ui/BorderFrame;->color:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget v1, v0, Lru/okei/timetable/ui/BorderFrame;->stroke:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 86
    iget-boolean v4, v0, Lru/okei/timetable/ui/BorderFrame;->grow:Z

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v4, :cond_3

    .line 87
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/BorderFrame;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 88
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/BorderFrame;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v12, v5, v3

    .line 89
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/BorderFrame;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget v6, v0, Lru/okei/timetable/ui/BorderFrame;->progress:F

    mul-float v6, v6, v3

    invoke-static {v11, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v5, v5, v6

    .line 90
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/BorderFrame;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    iget v7, v0, Lru/okei/timetable/ui/BorderFrame;->progress:F

    mul-float v7, v7, v3

    sub-float/2addr v7, v11

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v3, v3, v6

    .line 91
    iget v6, v0, Lru/okei/timetable/ui/BorderFrame;->progress:F

    cmpl-float v2, v6, v2

    if-lez v2, :cond_1

    sub-float v14, v4, v5

    add-float v16, v4, v5

    .line 92
    iget-object v9, v0, Lru/okei/timetable/ui/BorderFrame;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v14

    move v6, v1

    move/from16 v7, v16

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/BorderFrame;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v15, v2, v1

    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/BorderFrame;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v17, v2, v1

    iget-object v2, v0, Lru/okei/timetable/ui/BorderFrame;->paint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v2

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 95
    :cond_1
    iget v2, v0, Lru/okei/timetable/ui/BorderFrame;->progress:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_2

    sub-float v2, v12, v3

    add-float/2addr v3, v12

    .line 96
    iget-object v9, v0, Lru/okei/timetable/ui/BorderFrame;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/BorderFrame;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v4, v1

    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/BorderFrame;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v7, v4, v1

    iget-object v9, v0, Lru/okei/timetable/ui/BorderFrame;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void

    .line 103
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/BorderFrame;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    .line 104
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/BorderFrame;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v12, v4, v1

    .line 106
    iget v4, v0, Lru/okei/timetable/ui/BorderFrame;->progress:F

    const/high16 v13, 0x40800000    # 4.0f

    mul-float v4, v4, v13

    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    cmpl-float v2, v4, v2

    if-lez v2, :cond_4

    sub-float v2, v3, v1

    mul-float v2, v2, v4

    add-float v7, v1, v2

    .line 108
    iget-object v9, v0, Lru/okei/timetable/ui/BorderFrame;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v1

    move v6, v1

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 110
    :cond_4
    iget v2, v0, Lru/okei/timetable/ui/BorderFrame;->progress:F

    const/high16 v4, 0x3e800000    # 0.25f

    cmpl-float v5, v2, v4

    if-lez v5, :cond_5

    sub-float/2addr v2, v4

    mul-float v2, v2, v13

    .line 111
    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v4, v12, v1

    mul-float v4, v4, v2

    add-float v8, v1, v4

    .line 112
    iget-object v9, v0, Lru/okei/timetable/ui/BorderFrame;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v3

    move v6, v1

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 114
    :cond_5
    iget v2, v0, Lru/okei/timetable/ui/BorderFrame;->progress:F

    cmpl-float v4, v2, v10

    if-lez v4, :cond_6

    sub-float/2addr v2, v10

    mul-float v2, v2, v13

    .line 115
    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v4, v3, v1

    mul-float v4, v4, v2

    sub-float v7, v3, v4

    .line 116
    iget-object v9, v0, Lru/okei/timetable/ui/BorderFrame;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v3

    move v6, v12

    move v8, v12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 118
    :cond_6
    iget v2, v0, Lru/okei/timetable/ui/BorderFrame;->progress:F

    const/high16 v3, 0x3f400000    # 0.75f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_7

    sub-float/2addr v2, v3

    mul-float v2, v2, v13

    .line 119
    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v3, v12, v1

    mul-float v3, v3, v2

    sub-float v8, v12, v3

    .line 120
    iget-object v9, v0, Lru/okei/timetable/ui/BorderFrame;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v1

    move v6, v12

    move v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 33
    iget-object v0, p0, Lru/okei/timetable/ui/BorderFrame;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 27
    iput p1, p0, Lru/okei/timetable/ui/BorderFrame;->color:I

    .line 28
    invoke-virtual {p0}, Lru/okei/timetable/ui/BorderFrame;->invalidate()V

    return-void
.end method

.method public setProgressZero()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lru/okei/timetable/ui/BorderFrame;->progress:F

    .line 38
    invoke-virtual {p0}, Lru/okei/timetable/ui/BorderFrame;->invalidate()V

    return-void
.end method

.method public showAll()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lru/okei/timetable/ui/BorderFrame;->grow:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 74
    iput v0, p0, Lru/okei/timetable/ui/BorderFrame;->progress:F

    .line 75
    invoke-virtual {p0}, Lru/okei/timetable/ui/BorderFrame;->invalidate()V

    return-void
.end method
