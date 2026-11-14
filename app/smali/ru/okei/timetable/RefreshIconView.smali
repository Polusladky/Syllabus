.class public Lru/okei/timetable/RefreshIconView;
.super Landroid/view/View;
.source "RefreshIconView.java"


# static fields
.field private static final CELLS:I = 0x10

.field private static final RING:[[I

.field private static final START_ANGLE:F = 45.0f

.field private static final STEP:F = 22.0f

.field private static final STEP_MS:J = 0x45L

.field private static final TOTAL_STEPS:I = 0x11


# instance fields
.field private angle:F

.field private bgColor:I

.field private color:I

.field private final handler:Landroid/os/Handler;

.field private final paint:Landroid/graphics/Paint;

.field private plug:F

.field private reveal:F

.field private spinning:Z

.field private stepIndex:I

.field private final stepRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgethandler(Lru/okei/timetable/RefreshIconView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/RefreshIconView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspinning(Lru/okei/timetable/RefreshIconView;)Z
    .locals 0

    iget-boolean p0, p0, Lru/okei/timetable/RefreshIconView;->spinning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstepIndex(Lru/okei/timetable/RefreshIconView;)I
    .locals 0

    iget p0, p0, Lru/okei/timetable/RefreshIconView;->stepIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputangle(Lru/okei/timetable/RefreshIconView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/RefreshIconView;->angle:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputplug(Lru/okei/timetable/RefreshIconView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/RefreshIconView;->plug:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputreveal(Lru/okei/timetable/RefreshIconView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/RefreshIconView;->reveal:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputspinning(Lru/okei/timetable/RefreshIconView;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/RefreshIconView;->spinning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstepIndex(Lru/okei/timetable/RefreshIconView;I)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/RefreshIconView;->stepIndex:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x13

    new-array v0, v0, [[I

    const/4 v1, 0x6

    const/4 v2, 0x2

    .line 23
    filled-new-array {v1, v2}, [I

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/4 v3, 0x3

    filled-new-array {v1, v3}, [I

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    const/4 v4, 0x4

    filled-new-array {v1, v4}, [I

    move-result-object v6

    aput-object v6, v0, v2

    const/4 v6, 0x5

    filled-new-array {v1, v6}, [I

    move-result-object v7

    aput-object v7, v0, v3

    filled-new-array {v1, v1}, [I

    move-result-object v7

    aput-object v7, v0, v4

    filled-new-array {v6, v1}, [I

    move-result-object v7

    aput-object v7, v0, v6

    filled-new-array {v4, v1}, [I

    move-result-object v7

    aput-object v7, v0, v1

    const/4 v7, 0x7

    filled-new-array {v3, v1}, [I

    move-result-object v8

    aput-object v8, v0, v7

    const/16 v7, 0x8

    filled-new-array {v2, v1}, [I

    move-result-object v8

    aput-object v8, v0, v7

    const/16 v7, 0x9

    filled-new-array {v5, v1}, [I

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0xa

    filled-new-array {v5, v6}, [I

    move-result-object v7

    aput-object v7, v0, v1

    const/16 v1, 0xb

    filled-new-array {v5, v4}, [I

    move-result-object v7

    aput-object v7, v0, v1

    const/16 v1, 0xc

    filled-new-array {v5, v3}, [I

    move-result-object v7

    aput-object v7, v0, v1

    const/16 v1, 0xd

    filled-new-array {v5, v2}, [I

    move-result-object v7

    aput-object v7, v0, v1

    const/16 v1, 0xe

    filled-new-array {v5, v5}, [I

    move-result-object v7

    aput-object v7, v0, v1

    const/16 v1, 0xf

    filled-new-array {v2, v5}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    filled-new-array {v3, v5}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    filled-new-array {v4, v5}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    filled-new-array {v6, v5}, [I

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lru/okei/timetable/RefreshIconView;->RING:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/RefreshIconView;->paint:Landroid/graphics/Paint;

    .line 36
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lru/okei/timetable/RefreshIconView;->handler:Landroid/os/Handler;

    const/4 p2, -0x1

    .line 38
    iput p2, p0, Lru/okei/timetable/RefreshIconView;->color:I

    const/high16 v0, -0x1000000

    .line 39
    iput v0, p0, Lru/okei/timetable/RefreshIconView;->bgColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    iput v0, p0, Lru/okei/timetable/RefreshIconView;->reveal:F

    .line 42
    iput v0, p0, Lru/okei/timetable/RefreshIconView;->plug:F

    const/high16 v0, 0x42340000    # 45.0f

    .line 43
    iput v0, p0, Lru/okei/timetable/RefreshIconView;->angle:F

    .line 47
    new-instance v0, Lru/okei/timetable/RefreshIconView$1;

    invoke-direct {v0, p0}, Lru/okei/timetable/RefreshIconView$1;-><init>(Lru/okei/timetable/RefreshIconView;)V

    iput-object v0, p0, Lru/okei/timetable/RefreshIconView;->stepRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x2

    .line 68
    invoke-virtual {p0, v0}, Lru/okei/timetable/RefreshIconView;->setImportantForAccessibility(I)V

    .line 69
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x0

    .line 70
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method private drawTile(Landroid/graphics/Canvas;FFFFFFF)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p6

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p4, v2

    add-float v4, p2, v3

    add-float v5, p3, v3

    move/from16 v6, p7

    float-to-double v6, v6

    .line 170
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 171
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 172
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    neg-double v6, v6

    float-to-double v10, v3

    .line 174
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    div-double/2addr v10, v12

    float-to-double v3, v4

    mul-double v8, v8, v10

    add-double/2addr v3, v8

    double-to-float v3, v3

    float-to-double v4, v5

    mul-double v6, v6, v10

    add-double/2addr v4, v6

    double-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    .line 178
    iget v6, v0, Lru/okei/timetable/RefreshIconView;->plug:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v5, v5, v6

    mul-float v5, v5, p8

    float-to-int v5, v5

    .line 180
    iget-object v6, v0, Lru/okei/timetable/RefreshIconView;->paint:Landroid/graphics/Paint;

    iget v7, v0, Lru/okei/timetable/RefreshIconView;->bgColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v6, v0, Lru/okei/timetable/RefreshIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    div-float v2, v1, v2

    sub-float v6, v3, v2

    sub-float v8, v6, p5

    sub-float v13, v4, v2

    sub-float v9, v13, p5

    add-float/2addr v3, v2

    add-float v10, v3, p5

    add-float/2addr v4, v2

    add-float v11, v4, p5

    .line 182
    iget-object v12, v0, Lru/okei/timetable/RefreshIconView;->paint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 185
    iget-object v2, v0, Lru/okei/timetable/RefreshIconView;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lru/okei/timetable/RefreshIconView;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v2, v0, Lru/okei/timetable/RefreshIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v2, p1

    .line 187
    invoke-direct {v0, v2, v6, v13, v1}, Lru/okei/timetable/RefreshIconView;->square(Landroid/graphics/Canvas;FFF)V

    .line 188
    iget-object v1, v0, Lru/okei/timetable/RefreshIconView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private square(Landroid/graphics/Canvas;FFF)V
    .locals 7

    .line 192
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v2, v0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v3, v0

    add-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float v4, p2

    add-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float v5, p2

    iget-object v6, p0, Lru/okei/timetable/RefreshIconView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 197
    iget-object v0, p0, Lru/okei/timetable/RefreshIconView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 198
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 143
    invoke-virtual {p0}, Lru/okei/timetable/RefreshIconView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lru/okei/timetable/RefreshIconView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f1eb852    # 0.62f

    mul-float v0, v0, v1

    .line 144
    invoke-virtual {p0}, Lru/okei/timetable/RefreshIconView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 145
    invoke-virtual {p0}, Lru/okei/timetable/RefreshIconView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float v11, v3, v2

    const/high16 v3, 0x41800000    # 16.0f

    div-float v12, v0, v3

    mul-float v13, v12, v2

    .line 149
    iget v2, p0, Lru/okei/timetable/RefreshIconView;->reveal:F

    sget-object v3, Lru/okei/timetable/RefreshIconView;->RING:[[I

    array-length v3, v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 150
    iget-object v3, p0, Lru/okei/timetable/RefreshIconView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lru/okei/timetable/RefreshIconView;->color:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v3, p0, Lru/okei/timetable/RefreshIconView;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 152
    sget-object v5, Lru/okei/timetable/RefreshIconView;->RING:[[I

    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 153
    aget-object v5, v5, v4

    aget v6, v5, v3

    int-to-float v6, v6

    mul-float v6, v6, v13

    add-float/2addr v6, v1

    const/4 v7, 0x1

    aget v5, v5, v7

    int-to-float v5, v5

    mul-float v5, v5, v13

    add-float/2addr v5, v11

    invoke-direct {p0, p1, v6, v5, v13}, Lru/okei/timetable/RefreshIconView;->square(Landroid/graphics/Canvas;FFF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    :cond_0
    iget v2, p0, Lru/okei/timetable/RefreshIconView;->plug:F

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 157
    iget-boolean v2, p0, Lru/okei/timetable/RefreshIconView;->spinning:Z

    if-eqz v2, :cond_1

    .line 158
    iget v2, p0, Lru/okei/timetable/RefreshIconView;->angle:F

    const/high16 v3, 0x41b00000    # 22.0f

    sub-float v9, v2, v3

    const v10, 0x3ee66666    # 0.45f

    move-object v2, p0

    move-object v3, p1

    move v4, v1

    move v5, v11

    move v6, v0

    move v7, v12

    move v8, v13

    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/RefreshIconView;->drawTile(Landroid/graphics/Canvas;FFFFFFF)V

    .line 159
    iget v2, p0, Lru/okei/timetable/RefreshIconView;->angle:F

    const/high16 v3, 0x42300000    # 44.0f

    sub-float v9, v2, v3

    const/high16 v10, 0x3e800000    # 0.25f

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/RefreshIconView;->drawTile(Landroid/graphics/Canvas;FFFFFFF)V

    .line 160
    iget v2, p0, Lru/okei/timetable/RefreshIconView;->angle:F

    const/high16 v3, 0x42840000    # 66.0f

    sub-float v9, v2, v3

    const v10, 0x3df5c28f    # 0.12f

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/RefreshIconView;->drawTile(Landroid/graphics/Canvas;FFFFFFF)V

    .line 162
    :cond_1
    iget v9, p0, Lru/okei/timetable/RefreshIconView;->angle:F

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v2, p0

    move-object v3, p1

    move v4, v1

    move v5, v11

    move v6, v0

    move v7, v12

    move v8, v13

    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/RefreshIconView;->drawTile(Landroid/graphics/Canvas;FFFFFFF)V

    :cond_2
    return-void
.end method

.method public playAppear()V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lru/okei/timetable/RefreshIconView;->reset()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 102
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x41a

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 104
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 105
    new-instance v1, Lru/okei/timetable/RefreshIconView$2;

    invoke-direct {v1, p0}, Lru/okei/timetable/RefreshIconView$2;-><init>(Lru/okei/timetable/RefreshIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 112
    new-instance v1, Lru/okei/timetable/RefreshIconView$3;

    invoke-direct {v1, p0}, Lru/okei/timetable/RefreshIconView$3;-><init>(Lru/okei/timetable/RefreshIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 129
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public playSpin()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 133
    iput v0, p0, Lru/okei/timetable/RefreshIconView;->reveal:F

    .line 134
    iput v0, p0, Lru/okei/timetable/RefreshIconView;->plug:F

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lru/okei/timetable/RefreshIconView;->stepIndex:I

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lru/okei/timetable/RefreshIconView;->spinning:Z

    .line 137
    iget-object v0, p0, Lru/okei/timetable/RefreshIconView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/RefreshIconView;->stepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iget-object v0, p0, Lru/okei/timetable/RefreshIconView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/RefreshIconView;->stepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lru/okei/timetable/RefreshIconView;->reveal:F

    .line 93
    iput v0, p0, Lru/okei/timetable/RefreshIconView;->plug:F

    const/high16 v0, 0x42340000    # 45.0f

    .line 94
    iput v0, p0, Lru/okei/timetable/RefreshIconView;->angle:F

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lru/okei/timetable/RefreshIconView;->spinning:Z

    .line 96
    iget-object v0, p0, Lru/okei/timetable/RefreshIconView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/RefreshIconView;->stepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    invoke-virtual {p0}, Lru/okei/timetable/RefreshIconView;->invalidate()V

    return-void
.end method

.method public setColor(II)V
    .locals 0

    .line 76
    iput p1, p0, Lru/okei/timetable/RefreshIconView;->color:I

    .line 77
    iput p2, p0, Lru/okei/timetable/RefreshIconView;->bgColor:I

    .line 78
    iget-object p2, p0, Lru/okei/timetable/RefreshIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    invoke-virtual {p0}, Lru/okei/timetable/RefreshIconView;->invalidate()V

    return-void
.end method

.method public showFinal()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    iput v0, p0, Lru/okei/timetable/RefreshIconView;->reveal:F

    .line 84
    iput v0, p0, Lru/okei/timetable/RefreshIconView;->plug:F

    const/high16 v0, 0x42340000    # 45.0f

    .line 85
    iput v0, p0, Lru/okei/timetable/RefreshIconView;->angle:F

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lru/okei/timetable/RefreshIconView;->spinning:Z

    .line 87
    iget-object v0, p0, Lru/okei/timetable/RefreshIconView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/RefreshIconView;->stepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    invoke-virtual {p0}, Lru/okei/timetable/RefreshIconView;->invalidate()V

    return-void
.end method
