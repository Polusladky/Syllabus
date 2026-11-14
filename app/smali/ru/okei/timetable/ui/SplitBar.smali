.class public final Lru/okei/timetable/ui/SplitBar;
.super Landroid/view/View;
.source "SplitBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/ui/SplitBar$Listener;
    }
.end annotation


# instance fields
.field private backText:Ljava/lang/String;

.field private backX:F

.field private borderProgress:F

.field private boundary:F

.field private final fill:Landroid/graphics/Paint;

.field private gap:F

.field private lineColor:I

.field private listener:Lru/okei/timetable/ui/SplitBar$Listener;

.field private mergeLeft:F

.field private mergeLineProgress:F

.field private mergeLineX:F

.field private merging:Z

.field private nextText:Ljava/lang/String;

.field private nextX:F

.field private seamProgress:F

.field private single:Z

.field private final stroke:Landroid/graphics/Paint;

.field private textColor:I

.field private final textPaint:Landroid/graphics/Paint;


# direct methods
.method static bridge synthetic -$$Nest$fputbackText(Lru/okei/timetable/ui/SplitBar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/okei/timetable/ui/SplitBar;->backText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbackX(Lru/okei/timetable/ui/SplitBar;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/SplitBar;->backX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputborderProgress(Lru/okei/timetable/ui/SplitBar;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/SplitBar;->borderProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputboundary(Lru/okei/timetable/ui/SplitBar;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/SplitBar;->boundary:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmergeLeft(Lru/okei/timetable/ui/SplitBar;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/SplitBar;->mergeLeft:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmergeLineProgress(Lru/okei/timetable/ui/SplitBar;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/SplitBar;->mergeLineProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmerging(Lru/okei/timetable/ui/SplitBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/ui/SplitBar;->merging:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnextX(Lru/okei/timetable/ui/SplitBar;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/SplitBar;->nextX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputseamProgress(Lru/okei/timetable/ui/SplitBar;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/SplitBar;->seamProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsingle(Lru/okei/timetable/ui/SplitBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/ui/SplitBar;->single:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/SplitBar;->stroke:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/ui/SplitBar;->textPaint:Landroid/graphics/Paint;

    .line 23
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lru/okei/timetable/ui/SplitBar;->fill:Landroid/graphics/Paint;

    const-string v2, ""

    .line 25
    iput-object v2, p0, Lru/okei/timetable/ui/SplitBar;->nextText:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lru/okei/timetable/ui/SplitBar;->backText:Ljava/lang/String;

    const/4 v2, 0x1

    .line 27
    iput-boolean v2, p0, Lru/okei/timetable/ui/SplitBar;->single:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 30
    iput v3, p0, Lru/okei/timetable/ui/SplitBar;->borderProgress:F

    const/4 v3, -0x1

    .line 38
    iput v3, p0, Lru/okei/timetable/ui/SplitBar;->textColor:I

    const v3, -0xd5d5d6

    .line 39
    iput v3, p0, Lru/okei/timetable/ui/SplitBar;->lineColor:I

    const/4 v3, 0x0

    .line 44
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 49
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float p1, p1, v0

    iput p1, p0, Lru/okei/timetable/ui/SplitBar;->gap:F

    return-void
.end method

.method private dp(F)F
    .locals 1

    .line 349
    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    return p1
.end method

.method private drawBorder(Landroid/graphics/Canvas;FFFFF)V
    .locals 12

    move-object v0, p0

    .line 322
    iget-object v1, v0, Lru/okei/timetable/ui/SplitBar;->stroke:Landroid/graphics/Paint;

    iget v2, v0, Lru/okei/timetable/ui/SplitBar;->lineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    iget v1, v0, Lru/okei/timetable/ui/SplitBar;->borderProgress:F

    mul-float v7, p6, v1

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v1, v7, v8

    if-ltz v1, :cond_0

    .line 325
    iget-object v6, v0, Lru/okei/timetable/ui/SplitBar;->stroke:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    sub-float v9, p4, p2

    sub-float v10, p5, p3

    const/4 v1, 0x0

    const/high16 v11, 0x40800000    # 4.0f

    cmpl-float v1, v7, v1

    if-lez v1, :cond_1

    mul-float v1, v7, v11

    .line 331
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v1, v1, v9

    add-float v4, p2, v1

    .line 332
    iget-object v6, v0, Lru/okei/timetable/ui/SplitBar;->stroke:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v2, v7, v1

    if-lez v2, :cond_2

    sub-float v1, v7, v1

    mul-float v1, v1, v11

    .line 335
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v1, v1, v10

    add-float v5, p3, v1

    .line 336
    iget-object v6, v0, Lru/okei/timetable/ui/SplitBar;->stroke:Landroid/graphics/Paint;

    move-object v1, p1

    move/from16 v2, p4

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v2, v7, v1

    if-lez v2, :cond_3

    sub-float v1, v7, v1

    mul-float v1, v1, v11

    .line 339
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v9, v9, v1

    sub-float v4, p4, v9

    .line 340
    iget-object v6, v0, Lru/okei/timetable/ui/SplitBar;->stroke:Landroid/graphics/Paint;

    move-object v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v2, v7, v1

    if-lez v2, :cond_4

    sub-float/2addr v7, v1

    mul-float v7, v7, v11

    .line 343
    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v10, v10, v1

    sub-float v5, p5, v10

    .line 344
    iget-object v6, v0, Lru/okei/timetable/ui/SplitBar;->stroke:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move/from16 v3, p5

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method private drawCentered(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 2

    if-eqz p2, :cond_1

    .line 353
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/ui/SplitBar;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lru/okei/timetable/ui/SplitBar;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    iget-object v0, p0, Lru/okei/timetable/ui/SplitBar;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    add-float/2addr p4, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    .line 358
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v1, v0

    div-float/2addr v1, p5

    sub-float/2addr p4, v1

    .line 359
    iget-object p5, p0, Lru/okei/timetable/ui/SplitBar;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private seamX()F
    .locals 4

    .line 228
    iget-object v0, p0, Lru/okei/timetable/ui/SplitBar;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lru/okei/timetable/ui/SplitBar;->nextText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 229
    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    const/high16 v0, 0x41600000    # 14.0f

    invoke-direct {p0, v0}, Lru/okei/timetable/ui/SplitBar;->dp(F)F

    move-result v0

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public animateBorder(J)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lru/okei/timetable/ui/SplitBar;->borderProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 105
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 107
    new-instance p1, Lru/okei/timetable/ui/SplitBar$1;

    invoke-direct {p1, p0}, Lru/okei/timetable/ui/SplitBar$1;-><init>(Lru/okei/timetable/ui/SplitBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 114
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateMerge(JLjava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lru/okei/timetable/ui/SplitBar;->merging:Z

    .line 189
    iget v0, p0, Lru/okei/timetable/ui/SplitBar;->boundary:F

    iget v1, p0, Lru/okei/timetable/ui/SplitBar;->gap:F

    add-float/2addr v1, v0

    .line 190
    iput v1, p0, Lru/okei/timetable/ui/SplitBar;->mergeLeft:F

    .line 191
    iput v0, p0, Lru/okei/timetable/ui/SplitBar;->mergeLineX:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 192
    iput v0, p0, Lru/okei/timetable/ui/SplitBar;->mergeLineProgress:F

    .line 193
    iget v0, p0, Lru/okei/timetable/ui/SplitBar;->nextX:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 194
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 195
    invoke-virtual {v2, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 196
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const p2, 0x3f99999a    # 1.2f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 197
    new-instance p1, Lru/okei/timetable/ui/SplitBar$6;

    invoke-direct {p1, p0, v1, v0}, Lru/okei/timetable/ui/SplitBar$6;-><init>(Lru/okei/timetable/ui/SplitBar;FF)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 208
    new-instance p1, Lru/okei/timetable/ui/SplitBar$7;

    invoke-direct {p1, p0, p3}, Lru/okei/timetable/ui/SplitBar$7;-><init>(Lru/okei/timetable/ui/SplitBar;Ljava/lang/Runnable;)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateSeam(JLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lru/okei/timetable/ui/SplitBar;->seamProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 120
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 122
    new-instance p1, Lru/okei/timetable/ui/SplitBar$2;

    invoke-direct {p1, p0}, Lru/okei/timetable/ui/SplitBar$2;-><init>(Lru/okei/timetable/ui/SplitBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    new-instance p1, Lru/okei/timetable/ui/SplitBar$3;

    invoke-direct {p1, p0, p3}, Lru/okei/timetable/ui/SplitBar$3;-><init>(Lru/okei/timetable/ui/SplitBar;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 137
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateSplit(JLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 16

    move-object/from16 v10, p0

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, v10, Lru/okei/timetable/ui/SplitBar;->single:Z

    .line 143
    invoke-direct/range {p0 .. p0}, Lru/okei/timetable/ui/SplitBar;->seamX()F

    move-result v2

    .line 144
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/SplitBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, v10, Lru/okei/timetable/ui/SplitBar;->gap:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v11, v1, v3

    .line 145
    iget v1, v10, Lru/okei/timetable/ui/SplitBar;->nextX:F

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/SplitBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    :cond_0
    move v4, v1

    .line 146
    iget v1, v10, Lru/okei/timetable/ui/SplitBar;->gap:F

    add-float/2addr v1, v11

    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/SplitBar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    div-float v12, v1, v3

    div-float v6, v2, v3

    div-float v13, v11, v3

    .line 149
    iput v2, v10, Lru/okei/timetable/ui/SplitBar;->boundary:F

    .line 150
    iput v4, v10, Lru/okei/timetable/ui/SplitBar;->nextX:F

    .line 151
    iput v6, v10, Lru/okei/timetable/ui/SplitBar;->backX:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 152
    iput v1, v10, Lru/okei/timetable/ui/SplitBar;->seamProgress:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 153
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    move-wide/from16 v7, p1

    .line 154
    invoke-virtual {v14, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 155
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3f99999a    # 1.2f

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v14, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x1

    new-array v9, v1, [Z

    aput-boolean v0, v9, v0

    .line 157
    new-instance v15, Lru/okei/timetable/ui/SplitBar$4;

    move-object v0, v15

    move-object/from16 v1, p0

    move v3, v11

    move v5, v12

    move v7, v13

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lru/okei/timetable/ui/SplitBar$4;-><init>(Lru/okei/timetable/ui/SplitBar;FFFFFFLjava/lang/Runnable;[Z)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 171
    new-instance v6, Lru/okei/timetable/ui/SplitBar$5;

    move-object v0, v6

    move v2, v11

    move v3, v12

    move v4, v13

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lru/okei/timetable/ui/SplitBar$5;-><init>(Lru/okei/timetable/ui/SplitBar;FFFLjava/lang/Runnable;)V

    invoke-virtual {v14, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 183
    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v7, p0

    .line 264
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/SplitBar;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    iget-object v0, v7, Lru/okei/timetable/ui/SplitBar;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v0, v8

    .line 270
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/SplitBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v10, v0, v9

    .line 272
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/SplitBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v11, v0, v9

    .line 274
    iget-boolean v0, v7, Lru/okei/timetable/ui/SplitBar;->single:Z

    const/4 v12, 0x0

    if-eqz v0, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v9

    move v4, v11

    move v5, v10

    .line 275
    invoke-direct/range {v0 .. v6}, Lru/okei/timetable/ui/SplitBar;->drawBorder(Landroid/graphics/Canvas;FFFFF)V

    .line 276
    iget v0, v7, Lru/okei/timetable/ui/SplitBar;->seamProgress:F

    cmpl-float v0, v0, v12

    if-lez v0, :cond_1

    .line 277
    iget-object v0, v7, Lru/okei/timetable/ui/SplitBar;->fill:Landroid/graphics/Paint;

    iget v1, v7, Lru/okei/timetable/ui/SplitBar;->lineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    invoke-direct/range {p0 .. p0}, Lru/okei/timetable/ui/SplitBar;->seamX()F

    move-result v0

    sub-float v1, v10, v9

    div-float/2addr v1, v8

    const/high16 v2, 0x3f800000    # 1.0f

    .line 279
    iget v3, v7, Lru/okei/timetable/ui/SplitBar;->seamProgress:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v1, v1, v2

    add-float v2, v9, v10

    div-float/2addr v2, v8

    .line 281
    iget-object v3, v7, Lru/okei/timetable/ui/SplitBar;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    div-float/2addr v3, v8

    sub-float v12, v0, v3

    sub-float v13, v2, v1

    iget-object v3, v7, Lru/okei/timetable/ui/SplitBar;->stroke:Landroid/graphics/Paint;

    .line 282
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    div-float/2addr v3, v8

    add-float v14, v0, v3

    add-float v15, v2, v1

    iget-object v0, v7, Lru/okei/timetable/ui/SplitBar;->fill:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v0

    .line 281
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 284
    :cond_1
    iget-object v2, v7, Lru/okei/timetable/ui/SplitBar;->nextText:Ljava/lang/String;

    iget v3, v7, Lru/okei/timetable/ui/SplitBar;->nextX:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lru/okei/timetable/ui/SplitBar;->drawCentered(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    return-void

    .line 288
    :cond_2
    iget-boolean v0, v7, Lru/okei/timetable/ui/SplitBar;->merging:Z

    const/high16 v13, 0x40800000    # 4.0f

    if-eqz v0, :cond_4

    .line 289
    iget v0, v7, Lru/okei/timetable/ui/SplitBar;->mergeLeft:F

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v14

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v11

    move v5, v10

    .line 290
    invoke-direct/range {v0 .. v6}, Lru/okei/timetable/ui/SplitBar;->drawBorder(Landroid/graphics/Canvas;FFFFF)V

    .line 291
    iget v0, v7, Lru/okei/timetable/ui/SplitBar;->mergeLineProgress:F

    cmpl-float v0, v0, v12

    if-lez v0, :cond_3

    .line 293
    iget-object v0, v7, Lru/okei/timetable/ui/SplitBar;->fill:Landroid/graphics/Paint;

    iget v1, v7, Lru/okei/timetable/ui/SplitBar;->lineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sub-float v0, v10, v9

    .line 294
    iget v1, v7, Lru/okei/timetable/ui/SplitBar;->mergeLineProgress:F

    mul-float v0, v0, v1

    add-float v5, v9, v0

    .line 295
    iget v0, v7, Lru/okei/timetable/ui/SplitBar;->mergeLineX:F

    iget-object v1, v7, Lru/okei/timetable/ui/SplitBar;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v8

    sub-float v2, v0, v1

    iget v0, v7, Lru/okei/timetable/ui/SplitBar;->mergeLineX:F

    iget-object v1, v7, Lru/okei/timetable/ui/SplitBar;->stroke:Landroid/graphics/Paint;

    .line 296
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v8

    add-float v4, v0, v1

    iget-object v6, v7, Lru/okei/timetable/ui/SplitBar;->fill:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v9

    .line 295
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 298
    :cond_3
    iget-object v2, v7, Lru/okei/timetable/ui/SplitBar;->nextText:Ljava/lang/String;

    .line 299
    invoke-direct {v7, v13}, Lru/okei/timetable/ui/SplitBar;->dp(F)F

    move-result v0

    add-float/2addr v14, v0

    invoke-direct {v7, v13}, Lru/okei/timetable/ui/SplitBar;->dp(F)F

    move-result v0

    sub-float/2addr v11, v0

    iget v0, v7, Lru/okei/timetable/ui/SplitBar;->nextX:F

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v9

    move v5, v10

    .line 298
    invoke-direct/range {v0 .. v5}, Lru/okei/timetable/ui/SplitBar;->drawCentered(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    return-void

    .line 303
    :cond_4
    iget v0, v7, Lru/okei/timetable/ui/SplitBar;->boundary:F

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 304
    iget v0, v7, Lru/okei/timetable/ui/SplitBar;->gap:F

    add-float/2addr v0, v8

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v12

    cmpl-float v0, v8, v9

    if-lez v0, :cond_5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v9

    move v4, v8

    move v5, v10

    .line 307
    invoke-direct/range {v0 .. v6}, Lru/okei/timetable/ui/SplitBar;->drawBorder(Landroid/graphics/Canvas;FFFFF)V

    :cond_5
    cmpg-float v0, v12, v11

    if-gez v0, :cond_6

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v9

    move v4, v11

    move v5, v10

    .line 310
    invoke-direct/range {v0 .. v6}, Lru/okei/timetable/ui/SplitBar;->drawBorder(Landroid/graphics/Canvas;FFFFF)V

    .line 312
    :cond_6
    iget-boolean v0, v7, Lru/okei/timetable/ui/SplitBar;->merging:Z

    if-nez v0, :cond_7

    .line 313
    invoke-direct {v7, v13}, Lru/okei/timetable/ui/SplitBar;->dp(F)F

    move-result v0

    add-float/2addr v0, v9

    invoke-direct {v7, v13}, Lru/okei/timetable/ui/SplitBar;->dp(F)F

    move-result v1

    sub-float v1, v8, v1

    iget v2, v7, Lru/okei/timetable/ui/SplitBar;->backX:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v7, Lru/okei/timetable/ui/SplitBar;->backX:F

    .line 314
    iget v0, v7, Lru/okei/timetable/ui/SplitBar;->gap:F

    add-float/2addr v8, v0

    invoke-direct {v7, v13}, Lru/okei/timetable/ui/SplitBar;->dp(F)F

    move-result v0

    add-float/2addr v8, v0

    invoke-direct {v7, v13}, Lru/okei/timetable/ui/SplitBar;->dp(F)F

    move-result v0

    sub-float/2addr v11, v0

    iget v0, v7, Lru/okei/timetable/ui/SplitBar;->nextX:F

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v7, Lru/okei/timetable/ui/SplitBar;->nextX:F

    .line 316
    :cond_7
    iget-object v2, v7, Lru/okei/timetable/ui/SplitBar;->backText:Ljava/lang/String;

    iget v3, v7, Lru/okei/timetable/ui/SplitBar;->backX:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lru/okei/timetable/ui/SplitBar;->drawCentered(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    .line 317
    iget-object v2, v7, Lru/okei/timetable/ui/SplitBar;->nextText:Ljava/lang/String;

    iget v3, v7, Lru/okei/timetable/ui/SplitBar;->nextX:F

    invoke-direct/range {v0 .. v5}, Lru/okei/timetable/ui/SplitBar;->drawCentered(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 235
    iget-boolean p2, p0, Lru/okei/timetable/ui/SplitBar;->single:Z

    const/high16 p3, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    int-to-float p1, p1

    .line 236
    iput p1, p0, Lru/okei/timetable/ui/SplitBar;->boundary:F

    div-float/2addr p1, p3

    .line 237
    iput p1, p0, Lru/okei/timetable/ui/SplitBar;->nextX:F

    const/4 p1, 0x0

    .line 238
    iput p1, p0, Lru/okei/timetable/ui/SplitBar;->backX:F

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 240
    iget p2, p0, Lru/okei/timetable/ui/SplitBar;->gap:F

    sub-float p4, p1, p2

    div-float/2addr p4, p3

    iput p4, p0, Lru/okei/timetable/ui/SplitBar;->boundary:F

    add-float/2addr p2, p4

    add-float/2addr p2, p1

    div-float/2addr p2, p3

    .line 241
    iput p2, p0, Lru/okei/timetable/ui/SplitBar;->nextX:F

    div-float/2addr p4, p3

    .line 242
    iput p4, p0, Lru/okei/timetable/ui/SplitBar;->backX:F

    .line 244
    :goto_0
    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lru/okei/timetable/ui/SplitBar;->listener:Lru/okei/timetable/ui/SplitBar$Listener;

    if-eqz v0, :cond_2

    .line 250
    iget-boolean v2, p0, Lru/okei/timetable/ui/SplitBar;->single:Z

    if-eqz v2, :cond_0

    .line 251
    invoke-interface {v0}, Lru/okei/timetable/ui/SplitBar$Listener;->onNext()V

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lru/okei/timetable/ui/SplitBar;->boundary:F

    iget v2, p0, Lru/okei/timetable/ui/SplitBar;->gap:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 253
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar;->listener:Lru/okei/timetable/ui/SplitBar$Listener;

    invoke-interface {p1}, Lru/okei/timetable/ui/SplitBar$Listener;->onBack()V

    goto :goto_0

    .line 255
    :cond_1
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar;->listener:Lru/okei/timetable/ui/SplitBar$Listener;

    invoke-interface {p1}, Lru/okei/timetable/ui/SplitBar$Listener;->onNext()V

    :goto_0
    return v1

    .line 259
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method

.method public resetBorder()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lru/okei/timetable/ui/SplitBar;->borderProgress:F

    .line 81
    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->invalidate()V

    return-void
.end method

.method public setBackText(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lru/okei/timetable/ui/SplitBar;->backText:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->invalidate()V

    return-void
.end method

.method public setColors(II)V
    .locals 0

    .line 60
    iput p1, p0, Lru/okei/timetable/ui/SplitBar;->textColor:I

    .line 61
    iput p2, p0, Lru/okei/timetable/ui/SplitBar;->lineColor:I

    .line 62
    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->invalidate()V

    return-void
.end method

.method public setListener(Lru/okei/timetable/ui/SplitBar$Listener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lru/okei/timetable/ui/SplitBar;->listener:Lru/okei/timetable/ui/SplitBar$Listener;

    return-void
.end method

.method public setNextText(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lru/okei/timetable/ui/SplitBar;->nextText:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;F)V
    .locals 1

    .line 54
    iget-object v0, p0, Lru/okei/timetable/ui/SplitBar;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 55
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->invalidate()V

    return-void
.end method

.method public showSingle()V
    .locals 3

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lru/okei/timetable/ui/SplitBar;->single:Z

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lru/okei/timetable/ui/SplitBar;->seamProgress:F

    const-string v1, ""

    .line 87
    iput-object v1, p0, Lru/okei/timetable/ui/SplitBar;->backText:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lru/okei/timetable/ui/SplitBar;->boundary:F

    .line 89
    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lru/okei/timetable/ui/SplitBar;->nextX:F

    .line 90
    iput v0, p0, Lru/okei/timetable/ui/SplitBar;->backX:F

    .line 91
    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->invalidate()V

    return-void
.end method

.method public showSplitInstant()V
    .locals 3

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lru/okei/timetable/ui/SplitBar;->single:Z

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lru/okei/timetable/ui/SplitBar;->seamProgress:F

    .line 97
    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lru/okei/timetable/ui/SplitBar;->gap:F

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput v0, p0, Lru/okei/timetable/ui/SplitBar;->boundary:F

    add-float/2addr v0, v1

    .line 98
    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lru/okei/timetable/ui/SplitBar;->nextX:F

    .line 99
    iget v0, p0, Lru/okei/timetable/ui/SplitBar;->boundary:F

    div-float/2addr v0, v2

    iput v0, p0, Lru/okei/timetable/ui/SplitBar;->backX:F

    .line 100
    invoke-virtual {p0}, Lru/okei/timetable/ui/SplitBar;->invalidate()V

    return-void
.end method
