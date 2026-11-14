.class public final Lru/okei/timetable/PixelWaveView;
.super Landroid/view/View;
.source "PixelWaveView.java"


# static fields
.field private static final GLOW:F = 0.085f

.field private static final RIM:F = 0.03f


# instance fields
.field private final base:I

.field private cell:F

.field private final front:I

.field private final mid:I

.field private originX:F

.field private originY:F

.field private final paint:Landroid/graphics/Paint;

.field private progress:F

.field private reach:F

.field private reverse:Z

.field private final shotPaint:Landroid/graphics/Paint;

.field private snapshot:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/content/Context;III)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/PixelWaveView;->paint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/PixelWaveView;->shotPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    iput v0, p0, Lru/okei/timetable/PixelWaveView;->cell:F

    .line 31
    iput v0, p0, Lru/okei/timetable/PixelWaveView;->reach:F

    const/4 v0, 0x2

    .line 36
    invoke-virtual {p0, v0}, Lru/okei/timetable/PixelWaveView;->setImportantForAccessibility(I)V

    .line 37
    iput p2, p0, Lru/okei/timetable/PixelWaveView;->front:I

    .line 38
    iput p3, p0, Lru/okei/timetable/PixelWaveView;->mid:I

    .line 39
    iput p4, p0, Lru/okei/timetable/PixelWaveView;->base:I

    const/4 p2, 0x0

    .line 40
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 42
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lru/okei/timetable/PixelWaveView;->setClickable(Z)V

    .line 45
    invoke-virtual {p0, p2}, Lru/okei/timetable/PixelWaveView;->setFocusable(Z)V

    return-void
.end method

.method private drawDissolve(Landroid/graphics/Canvas;II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    int-to-float v1, v1

    .line 109
    iget v2, v0, Lru/okei/timetable/PixelWaveView;->cell:F

    div-float v2, v1, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move/from16 v3, p3

    int-to-float v3, v3

    .line 110
    iget v4, v0, Lru/okei/timetable/PixelWaveView;->cell:F

    div-float v4, v3, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 111
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v4, :cond_2

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v2, :cond_1

    .line 114
    invoke-direct {v0, v14, v13}, Lru/okei/timetable/PixelWaveView;->edge(II)F

    move-result v5

    .line 115
    iget v6, v0, Lru/okei/timetable/PixelWaveView;->progress:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    goto :goto_2

    :cond_0
    int-to-float v5, v14

    .line 118
    iget v6, v0, Lru/okei/timetable/PixelWaveView;->cell:F

    mul-float v7, v5, v6

    int-to-float v5, v13

    mul-float v8, v5, v6

    add-float/2addr v6, v7

    .line 120
    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget v5, v0, Lru/okei/timetable/PixelWaveView;->cell:F

    add-float/2addr v5, v8

    .line 121
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v5, v11

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v15

    .line 120
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v11}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 125
    iget-object v1, v0, Lru/okei/timetable/PixelWaveView;->shotPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual {v2, v11, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method private drawFill(Landroid/graphics/Canvas;II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    int-to-float v1, v1

    .line 130
    iget v2, v0, Lru/okei/timetable/PixelWaveView;->cell:F

    div-float v2, v1, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move/from16 v3, p3

    int-to-float v3, v3

    .line 131
    iget v4, v0, Lru/okei/timetable/PixelWaveView;->cell:F

    div-float v4, v3, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 132
    iget v5, v0, Lru/okei/timetable/PixelWaveView;->progress:F

    const/high16 v6, 0x42080000    # 34.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_4

    .line 135
    invoke-direct {v0, v8, v7}, Lru/okei/timetable/PixelWaveView;->edge(II)F

    move-result v9

    .line 136
    iget v10, v0, Lru/okei/timetable/PixelWaveView;->progress:F

    cmpl-float v11, v9, v10

    if-lez v11, :cond_0

    goto :goto_3

    :cond_0
    sub-float/2addr v10, v9

    .line 140
    iget v9, v0, Lru/okei/timetable/PixelWaveView;->base:I

    const v11, 0x3cf5c28f    # 0.03f

    cmpg-float v11, v10, v11

    if-gez v11, :cond_1

    .line 142
    iget v9, v0, Lru/okei/timetable/PixelWaveView;->front:I

    goto :goto_2

    :cond_1
    const v11, 0x3dae147b    # 0.085f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    .line 144
    iget v9, v0, Lru/okei/timetable/PixelWaveView;->mid:I

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v8, 0x7

    add-int v11, v7, v5

    .line 145
    invoke-static {v10, v11}, Lru/okei/timetable/PixelWaveView;->noise(II)F

    move-result v10

    const v11, 0x3eae147b    # 0.34f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 146
    iget v9, v0, Lru/okei/timetable/PixelWaveView;->mid:I

    .line 148
    :cond_3
    :goto_2
    iget-object v10, v0, Lru/okei/timetable/PixelWaveView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v8

    .line 149
    iget v10, v0, Lru/okei/timetable/PixelWaveView;->cell:F

    mul-float v12, v9, v10

    int-to-float v9, v7

    mul-float v13, v9, v10

    add-float/2addr v10, v12

    .line 151
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iget v9, v0, Lru/okei/timetable/PixelWaveView;->cell:F

    add-float/2addr v9, v13

    .line 152
    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v15

    iget-object v9, v0, Lru/okei/timetable/PixelWaveView;->paint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v9

    .line 151
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private edge(II)F
    .locals 6

    int-to-float v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 158
    iget v2, p0, Lru/okei/timetable/PixelWaveView;->cell:F

    mul-float v0, v0, v2

    int-to-float v3, p2

    add-float/2addr v3, v1

    mul-float v3, v3, v2

    .line 160
    iget v1, p0, Lru/okei/timetable/PixelWaveView;->originX:F

    sub-float/2addr v0, v1

    .line 161
    iget v1, p0, Lru/okei/timetable/PixelWaveView;->originY:F

    sub-float/2addr v3, v1

    float-to-double v1, v3

    float-to-double v4, v0

    .line 162
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v0

    mul-float v3, v3, v3

    add-float/2addr v0, v3

    float-to-double v2, v0

    .line 163
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    iget v2, p0, Lru/okei/timetable/PixelWaveView;->reach:F

    div-float/2addr v0, v2

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float v1, v1, v2

    .line 164
    iget v2, p0, Lru/okei/timetable/PixelWaveView;->progress:F

    const/high16 v3, 0x41100000    # 9.0f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3d3851ec    # 0.045f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 165
    invoke-static {p1, p2}, Lru/okei/timetable/PixelWaveView;->noise(II)F

    move-result p1

    .line 166
    iget-boolean p2, p0, Lru/okei/timetable/PixelWaveView;->reverse:Z

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    const v0, 0x3f19999a    # 0.6f

    mul-float p1, p1, v0

    add-float/2addr p2, p1

    goto :goto_0

    :cond_0
    add-float p2, v0, p1

    :goto_0
    return p2
.end method

.method private static noise(II)F
    .locals 1

    const v0, 0x466f45d

    mul-int p0, p0, v0

    const v0, 0x127409f

    mul-int p1, p1, v0

    xor-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0xd

    xor-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    const/high16 p1, 0x437f0000    # 255.0f

    div-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    sub-float/2addr p0, p1

    const p1, 0x3e23d70a    # 0.16f

    mul-float p0, p0, p1

    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 86
    invoke-virtual {p0}, Lru/okei/timetable/PixelWaveView;->getWidth()I

    move-result v0

    .line 87
    invoke-virtual {p0}, Lru/okei/timetable/PixelWaveView;->getHeight()I

    move-result v1

    if-lez v0, :cond_5

    if-gtz v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v2, p0, Lru/okei/timetable/PixelWaveView;->snapshot:Landroid/graphics/Bitmap;

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_3

    .line 92
    iget v2, p0, Lru/okei/timetable/PixelWaveView;->progress:F

    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_1

    return-void

    :cond_1
    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 96
    iget v0, p0, Lru/okei/timetable/PixelWaveView;->base:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void

    .line 99
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lru/okei/timetable/PixelWaveView;->drawFill(Landroid/graphics/Canvas;II)V

    return-void

    .line 102
    :cond_3
    iget v2, p0, Lru/okei/timetable/PixelWaveView;->progress:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    return-void

    .line 105
    :cond_4
    invoke-direct {p0, p1, v0, v1}, Lru/okei/timetable/PixelWaveView;->drawDissolve(Landroid/graphics/Canvas;II)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lru/okei/timetable/PixelWaveView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x41200000    # 10.0f

    mul-float p3, p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    invoke-static {p4, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iput p3, p0, Lru/okei/timetable/PixelWaveView;->cell:F

    .line 79
    iget p3, p0, Lru/okei/timetable/PixelWaveView;->originX:F

    int-to-float p1, p1

    sub-float/2addr p1, p3

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 80
    iget p3, p0, Lru/okei/timetable/PixelWaveView;->originY:F

    int-to-float p2, p2

    sub-float/2addr p2, p3

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 81
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lru/okei/timetable/PixelWaveView;->reach:F

    return-void
.end method

.method public setOrigin(FF)V
    .locals 0

    .line 49
    iput p1, p0, Lru/okei/timetable/PixelWaveView;->originX:F

    .line 50
    iput p2, p0, Lru/okei/timetable/PixelWaveView;->originY:F

    .line 51
    invoke-virtual {p0}, Lru/okei/timetable/PixelWaveView;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lru/okei/timetable/PixelWaveView;->progress:F

    .line 56
    invoke-virtual {p0}, Lru/okei/timetable/PixelWaveView;->invalidate()V

    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lru/okei/timetable/PixelWaveView;->reverse:Z

    .line 61
    invoke-virtual {p0}, Lru/okei/timetable/PixelWaveView;->invalidate()V

    return-void
.end method

.method public setSnapshot(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 65
    iput-object p1, p0, Lru/okei/timetable/PixelWaveView;->snapshot:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lru/okei/timetable/PixelWaveView;->shotPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lru/okei/timetable/PixelWaveView;->shotPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 72
    :goto_0
    iget-object p1, p0, Lru/okei/timetable/PixelWaveView;->shotPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    invoke-virtual {p0}, Lru/okei/timetable/PixelWaveView;->invalidate()V

    return-void
.end method
