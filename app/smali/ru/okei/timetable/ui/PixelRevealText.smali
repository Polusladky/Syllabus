.class public final Lru/okei/timetable/ui/PixelRevealText;
.super Landroid/view/View;
.source "PixelRevealText.java"


# instance fields
.field private cells:[I

.field private color:I

.field private cols:I

.field private on:[Z

.field private final paint:Landroid/graphics/Paint;

.field private progress:F

.field private rows:I


# direct methods
.method static bridge synthetic -$$Nest$fputprogress(Lru/okei/timetable/ui/PixelRevealText;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/PixelRevealText;->progress:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/PixelRevealText;->paint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lru/okei/timetable/ui/PixelRevealText;->color:I

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static rasterize(Ljava/lang/String;Landroid/graphics/Typeface;FF[IZ)[I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 81
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 82
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v4, p1

    .line 83
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 84
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v4, -0x1

    .line 85
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    .line 86
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 88
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/lit8 v5, v5, 0x4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const v6, 0x3fa66666    # 1.3f

    mul-float v1, v1, v6

    float-to-double v6, v1

    .line 89
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 90
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 91
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v8, v1

    const v9, 0x3f59999a    # 0.85f

    mul-float v9, v9, v8

    const/high16 v10, 0x40000000    # 2.0f

    .line 92
    invoke-virtual {v7, v0, v10, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    int-to-float v7, v5

    div-float v7, v7, p3

    float-to-double v9, v7

    .line 94
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v14

    div-float v8, v8, p3

    float-to-double v7, v8

    .line 95
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v15

    mul-int v13, v14, v15

    .line 96
    new-array v12, v13, [Z

    mul-int v11, v5, v1

    .line 97
    new-array v10, v11, [I

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v7, v10

    move v9, v5

    move-object/from16 v18, v10

    move/from16 v10, v16

    move v3, v11

    move/from16 v11, v17

    move-object/from16 v17, v12

    move v12, v5

    move/from16 v19, v13

    move v13, v1

    .line 98
    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 99
    new-array v6, v3, [I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_0

    .line 101
    aget v8, v18, v7

    ushr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v15, :cond_5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v14, :cond_4

    int-to-float v8, v7

    mul-float v8, v8, p3

    float-to-int v8, v8

    int-to-float v9, v3

    mul-float v9, v9, p3

    float-to-int v9, v9

    add-int/lit8 v10, v7, 0x1

    int-to-float v11, v10

    mul-float v11, v11, p3

    float-to-int v11, v11

    .line 107
    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/lit8 v12, v3, 0x1

    int-to-float v12, v12

    mul-float v12, v12, p3

    float-to-int v12, v12

    .line 108
    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v13, 0x0

    const/16 v18, 0x0

    :goto_3
    if-ge v9, v12, :cond_2

    move v4, v8

    :goto_4
    if-ge v4, v11, :cond_1

    mul-int v20, v9, v5

    add-int v20, v20, v4

    move/from16 p2, v1

    .line 113
    aget v1, v6, v20

    and-int/lit16 v1, v1, 0xff

    add-int v18, v18, v1

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p2

    goto :goto_4

    :cond_1
    move/from16 p2, v1

    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    move/from16 p2, v1

    mul-int v1, v3, v14

    add-int/2addr v1, v7

    if-lez v13, :cond_3

    .line 117
    div-int v4, v18, v13

    const/16 v7, 0x5a

    if-le v4, v7, :cond_3

    const/4 v4, 0x1

    goto :goto_5

    :cond_3
    const/4 v4, 0x0

    :goto_5
    aput-boolean v4, v17, v1

    move/from16 v1, p2

    move v7, v10

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    move/from16 p2, v1

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    if-eqz p4, :cond_6

    .line 121
    aput v14, p4, v1

    const/4 v3, 0x1

    .line 122
    aput v15, p4, v3

    :cond_6
    move/from16 v3, v19

    .line 124
    new-array v4, v3, [Z

    .line 126
    new-array v5, v14, [I

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v14, :cond_9

    int-to-float v7, v6

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    mul-float v7, v7, p3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 132
    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_8

    add-int/lit8 v10, v9, 0x1

    .line 133
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    cmpl-float v12, v7, v8

    if-ltz v12, :cond_7

    add-float v12, v8, v11

    cmpg-float v12, v7, v12

    if-gez v12, :cond_7

    goto :goto_8

    :cond_7
    add-float/2addr v8, v11

    move/from16 v21, v10

    move v10, v9

    move/from16 v9, v21

    goto :goto_7

    :cond_8
    move v9, v10

    .line 141
    :goto_8
    aput v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v15, :cond_b

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v14, :cond_a

    mul-int v6, v0, v14

    add-int/2addr v6, v2

    .line 145
    aget-boolean v7, v17, v6

    aput-boolean v7, v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 149
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v3, :cond_d

    .line 151
    aget-boolean v6, v4, v2

    if-eqz v6, :cond_c

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 158
    :cond_d
    new-instance v2, Lru/okei/timetable/ui/PixelRevealText$2;

    move/from16 v3, p5

    invoke-direct {v2, v14, v5, v3}, Lru/okei/timetable/ui/PixelRevealText$2;-><init>(I[IZ)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v4, 0x0

    .line 175
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_e

    .line 176
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_e
    return-object v2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 60
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    iget-object v0, p0, Lru/okei/timetable/ui/PixelRevealText;->cells:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    array-length v0, v0

    int-to-float v0, v0

    iget v1, p0, Lru/okei/timetable/ui/PixelRevealText;->progress:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 65
    invoke-virtual {p0}, Lru/okei/timetable/ui/PixelRevealText;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lru/okei/timetable/ui/PixelRevealText;->cols:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lru/okei/timetable/ui/PixelRevealText;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lru/okei/timetable/ui/PixelRevealText;->rows:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 66
    invoke-virtual {p0}, Lru/okei/timetable/ui/PixelRevealText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lru/okei/timetable/ui/PixelRevealText;->cols:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 67
    invoke-virtual {p0}, Lru/okei/timetable/ui/PixelRevealText;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lru/okei/timetable/ui/PixelRevealText;->rows:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    .line 68
    iget-object v3, p0, Lru/okei/timetable/ui/PixelRevealText;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lru/okei/timetable/ui/PixelRevealText;->color:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 70
    iget-object v5, p0, Lru/okei/timetable/ui/PixelRevealText;->cells:[I

    aget v5, v5, v3

    .line 71
    iget v6, p0, Lru/okei/timetable/ui/PixelRevealText;->cols:I

    div-int v7, v5, v6

    .line 72
    rem-int/2addr v5, v6

    int-to-float v6, v5

    mul-float v6, v6, v1

    add-float v9, v2, v6

    int-to-float v6, v7

    mul-float v6, v6, v1

    add-float v10, v4, v6

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    mul-float v5, v5, v1

    add-float v11, v2, v5

    add-int/lit8 v7, v7, 0x1

    int-to-float v5, v7

    mul-float v5, v5, v1

    add-float v12, v4, v5

    .line 73
    iget-object v13, p0, Lru/okei/timetable/ui/PixelRevealText;->paint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public reveal(J)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lru/okei/timetable/ui/PixelRevealText;->progress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 46
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    new-instance p1, Lru/okei/timetable/ui/PixelRevealText$1;

    invoke-direct {p1, p0}, Lru/okei/timetable/ui/PixelRevealText$1;-><init>(Lru/okei/timetable/ui/PixelRevealText;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 55
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setColor(I)V
    .locals 0

    .line 35
    iput p1, p0, Lru/okei/timetable/ui/PixelRevealText;->color:I

    .line 36
    invoke-virtual {p0}, Lru/okei/timetable/ui/PixelRevealText;->invalidate()V

    return-void
.end method

.method public setPixels([III)V
    .locals 0

    .line 28
    iput p2, p0, Lru/okei/timetable/ui/PixelRevealText;->cols:I

    .line 29
    iput p3, p0, Lru/okei/timetable/ui/PixelRevealText;->rows:I

    .line 30
    iput-object p1, p0, Lru/okei/timetable/ui/PixelRevealText;->cells:[I

    .line 31
    invoke-virtual {p0}, Lru/okei/timetable/ui/PixelRevealText;->invalidate()V

    return-void
.end method

.method public showAll()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Lru/okei/timetable/ui/PixelRevealText;->progress:F

    .line 41
    invoke-virtual {p0}, Lru/okei/timetable/ui/PixelRevealText;->invalidate()V

    return-void
.end method
