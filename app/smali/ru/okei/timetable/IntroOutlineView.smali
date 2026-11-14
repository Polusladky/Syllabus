.class public final Lru/okei/timetable/IntroOutlineView;
.super Landroid/view/View;
.source "IntroOutlineView.java"


# instance fields
.field private cached:Landroid/graphics/Bitmap;

.field private cachedLabel:Ljava/lang/String;

.field private color:I

.field private final drawPaint:Landroid/graphics/Paint;

.field private final fillPaint:Landroid/graphics/Paint;

.field private label:Ljava/lang/String;

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/IntroOutlineView;->fillPaint:Landroid/graphics/Paint;

    .line 15
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lru/okei/timetable/IntroOutlineView;->drawPaint:Landroid/graphics/Paint;

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lru/okei/timetable/IntroOutlineView;->label:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lru/okei/timetable/IntroOutlineView;->cachedLabel:Ljava/lang/String;

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lru/okei/timetable/IntroOutlineView;->color:I

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private build()V
    .locals 15

    .line 60
    iget-object v0, p0, Lru/okei/timetable/IntroOutlineView;->label:Ljava/lang/String;

    iput-object v0, p0, Lru/okei/timetable/IntroOutlineView;->cachedLabel:Ljava/lang/String;

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lru/okei/timetable/IntroOutlineView;->cached:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lru/okei/timetable/IntroOutlineView;->textSize:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto/16 :goto_a

    .line 65
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/IntroOutlineView;->fillPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lru/okei/timetable/IntroOutlineView;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x8

    .line 66
    iget v1, p0, Lru/okei/timetable/IntroOutlineView;->textSize:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v9, v1, 0x8

    if-lez v0, :cond_10

    if-gtz v9, :cond_1

    goto/16 :goto_a

    .line 70
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 71
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    iget-object v2, p0, Lru/okei/timetable/IntroOutlineView;->label:Ljava/lang/String;

    int-to-float v3, v9

    const v4, 0x3f428f5c    # 0.76f

    mul-float v3, v3, v4

    iget-object v4, p0, Lru/okei/timetable/IntroOutlineView;->fillPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    mul-int v11, v0, v9

    .line 73
    new-array v12, v11, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    move-object v2, v12

    move v4, v0

    move v7, v0

    move v8, v9

    .line 74
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 75
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 77
    new-array v1, v11, [I

    .line 78
    new-array v2, v11, [I

    .line 79
    iget v3, p0, Lru/okei/timetable/IntroOutlineView;->color:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v9, :cond_7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_6

    mul-int v8, v5, v0

    add-int/2addr v8, v7

    .line 83
    aget v10, v12, v8

    ushr-int/lit8 v10, v10, 0x18

    if-nez v10, :cond_2

    goto :goto_4

    :cond_2
    if-eqz v7, :cond_4

    if-eqz v5, :cond_4

    add-int/lit8 v10, v0, -0x1

    if-eq v7, v10, :cond_4

    add-int/lit8 v10, v9, -0x1

    if-eq v5, v10, :cond_4

    add-int/lit8 v10, v8, -0x1

    .line 86
    aget v10, v12, v10

    ushr-int/lit8 v10, v10, 0x18

    if-eqz v10, :cond_4

    add-int/lit8 v10, v8, 0x1

    aget v10, v12, v10

    ushr-int/lit8 v10, v10, 0x18

    if-eqz v10, :cond_4

    sub-int v10, v8, v0

    aget v10, v12, v10

    ushr-int/lit8 v10, v10, 0x18

    if-eqz v10, :cond_4

    add-int v10, v8, v0

    aget v10, v12, v10

    ushr-int/lit8 v10, v10, 0x18

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v10, 0x1

    :goto_3
    if-eqz v10, :cond_5

    .line 92
    aput v6, v2, v8

    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 96
    :cond_7
    invoke-virtual {p0}, Lru/okei/timetable/IntroOutlineView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const v7, 0x3f99999a    # 1.2f

    mul-float v5, v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v7, 0x1

    :goto_5
    if-ge v7, v5, :cond_d

    .line 98
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    const/4 v10, 0x1

    :goto_6
    add-int/lit8 v11, v9, -0x1

    if-ge v10, v11, :cond_c

    const/4 v11, 0x1

    :goto_7
    add-int/lit8 v13, v0, -0x1

    if-ge v11, v13, :cond_b

    mul-int v13, v10, v0

    add-int/2addr v13, v11

    .line 102
    aget v14, v12, v13

    ushr-int/lit8 v14, v14, 0x18

    if-eqz v14, :cond_a

    aget v14, v2, v13

    if-eqz v14, :cond_8

    goto :goto_8

    :cond_8
    add-int/lit8 v14, v13, -0x1

    .line 105
    aget v14, v2, v14

    if-nez v14, :cond_9

    add-int/lit8 v14, v13, 0x1

    aget v14, v2, v14

    if-nez v14, :cond_9

    sub-int v14, v13, v0

    aget v14, v2, v14

    if-nez v14, :cond_9

    add-int v14, v13, v0

    aget v14, v2, v14

    if-eqz v14, :cond_a

    .line 107
    :cond_9
    aput v6, v8, v13

    :cond_a
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v7, v7, 0x1

    move-object v2, v8

    goto :goto_5

    .line 113
    :cond_d
    :goto_9
    array-length v5, v2

    if-ge v4, v5, :cond_f

    .line 114
    aget v5, v2, v4

    if-eqz v5, :cond_e

    .line 115
    aput v3, v1, v4

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 118
    :cond_f
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v9, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/IntroOutlineView;->cached:Landroid/graphics/Bitmap;

    :cond_10
    :goto_a
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    iget-object v0, p0, Lru/okei/timetable/IntroOutlineView;->label:Ljava/lang/String;

    iget-object v1, p0, Lru/okei/timetable/IntroOutlineView;->cachedLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0}, Lru/okei/timetable/IntroOutlineView;->build()V

    .line 50
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/IntroOutlineView;->cached:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 53
    :cond_1
    invoke-virtual {p0}, Lru/okei/timetable/IntroOutlineView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lru/okei/timetable/IntroOutlineView;->cached:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 54
    invoke-virtual {p0}, Lru/okei/timetable/IntroOutlineView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lru/okei/timetable/IntroOutlineView;->cached:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 55
    iget-object v1, p0, Lru/okei/timetable/IntroOutlineView;->cached:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lru/okei/timetable/IntroOutlineView;->drawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 40
    :cond_0
    iput-object p1, p0, Lru/okei/timetable/IntroOutlineView;->label:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lru/okei/timetable/IntroOutlineView;->invalidate()V

    return-void
.end method

.method public setStyle(Landroid/graphics/Typeface;FI)V
    .locals 1

    .line 31
    iget-object v0, p0, Lru/okei/timetable/IntroOutlineView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 32
    iput p2, p0, Lru/okei/timetable/IntroOutlineView;->textSize:F

    .line 33
    iget-object p1, p0, Lru/okei/timetable/IntroOutlineView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 34
    iput p3, p0, Lru/okei/timetable/IntroOutlineView;->color:I

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lru/okei/timetable/IntroOutlineView;->cachedLabel:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lru/okei/timetable/IntroOutlineView;->invalidate()V

    return-void
.end method
