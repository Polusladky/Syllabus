.class public final Lru/okei/timetable/DayStripView;
.super Landroid/view/View;
.source "DayStripView.java"


# static fields
.field private static final CELLS:I = 0xc


# instance fields
.field private currentEnd:J

.field private currentStart:J

.field private final empty:Landroid/graphics/Paint;

.field private ends:[J

.field private now:J

.field private progress:F

.field private starts:[J

.field private final strong:Landroid/graphics/Paint;

.field private final weak:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/DayStripView;->strong:Landroid/graphics/Paint;

    .line 17
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lru/okei/timetable/DayStripView;->weak:Landroid/graphics/Paint;

    .line 18
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lru/okei/timetable/DayStripView;->empty:Landroid/graphics/Paint;

    const/4 v3, 0x0

    new-array v4, v3, [J

    .line 20
    iput-object v4, p0, Lru/okei/timetable/DayStripView;->starts:[J

    new-array v4, v3, [J

    .line 21
    iput-object v4, p0, Lru/okei/timetable/DayStripView;->ends:[J

    const/4 v4, 0x2

    .line 29
    invoke-virtual {p0, v4}, Lru/okei/timetable/DayStripView;->setImportantForAccessibility(I)V

    .line 30
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v4, -0x1

    .line 32
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, -0x89898a

    .line 35
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const p1, -0xb5b5b6

    .line 39
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    .line 65
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/DayStripView;->getWidth()I

    move-result v1

    if-lez v1, :cond_9

    .line 66
    iget-object v2, v0, Lru/okei/timetable/DayStripView;->starts:[J

    array-length v2, v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 69
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/DayStripView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v3, v3, v2

    const/high16 v4, 0x40400000    # 3.0f

    .line 70
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v5, v2, v12

    const/high16 v13, 0x3f800000    # 1.0f

    .line 71
    invoke-static {v13, v5}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 72
    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float v21, v11, v5

    .line 73
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 75
    iget-object v4, v0, Lru/okei/timetable/DayStripView;->starts:[J

    const/4 v15, 0x0

    aget-wide v16, v4, v15

    .line 76
    iget-object v4, v0, Lru/okei/timetable/DayStripView;->ends:[J

    array-length v5, v4

    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    aget-wide v5, v4, v5

    move-wide/from16 v19, v5

    const/4 v4, 0x1

    .line 77
    :goto_0
    iget-object v5, v0, Lru/okei/timetable/DayStripView;->ends:[J

    array-length v6, v5

    if-ge v4, v6, :cond_2

    .line 78
    aget-wide v6, v5, v4

    cmp-long v5, v6, v19

    if-lez v5, :cond_1

    move-wide/from16 v19, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sub-long v4, v19, v16

    long-to-float v4, v4

    .line 82
    invoke-static {v13, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v10, 0x0

    .line 84
    :goto_1
    iget-object v5, v0, Lru/okei/timetable/DayStripView;->starts:[J

    array-length v6, v5

    if-ge v10, v6, :cond_6

    int-to-long v6, v1

    .line 85
    aget-wide v8, v5, v10

    sub-long v22, v8, v16

    mul-long v12, v6, v22

    long-to-float v5, v12

    div-float v12, v5, v4

    .line 86
    iget-object v5, v0, Lru/okei/timetable/DayStripView;->ends:[J

    aget-wide v22, v5, v10

    sub-long v25, v22, v16

    mul-long v6, v6, v25

    long-to-float v5, v6

    div-float/2addr v5, v4

    sub-float v6, v5, v12

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v13

    if-gez v6, :cond_3

    add-float v5, v12, v13

    :cond_3
    move/from16 v24, v5

    .line 90
    iget-wide v5, v0, Lru/okei/timetable/DayStripView;->currentStart:J

    cmp-long v7, v8, v5

    if-nez v7, :cond_4

    iget-wide v5, v0, Lru/okei/timetable/DayStripView;->currentEnd:J

    cmp-long v7, v22, v5

    if-nez v7, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/4 v7, 0x0

    if-eqz v5, :cond_5

    .line 92
    iget-object v5, v0, Lru/okei/timetable/DayStripView;->strong:Landroid/graphics/Paint;

    goto :goto_3

    :cond_5
    iget-object v5, v0, Lru/okei/timetable/DayStripView;->weak:Landroid/graphics/Paint;

    :goto_3
    move-object/from16 v22, v5

    move-object/from16 v5, p1

    move v6, v12

    move/from16 v8, v24

    move v9, v11

    move v12, v10

    move-object/from16 v10, v22

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v12, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_1

    .line 95
    :cond_6
    iget-wide v5, v0, Lru/okei/timetable/DayStripView;->now:J

    const/4 v12, 0x0

    cmp-long v7, v5, v16

    if-ltz v7, :cond_7

    cmp-long v7, v5, v19

    if-gtz v7, :cond_7

    int-to-long v7, v1

    sub-long v5, v5, v16

    mul-long v7, v7, v5

    long-to-float v5, v7

    div-float/2addr v5, v4

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v2, v2, v4

    .line 97
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float v4, v5, v2

    .line 98
    invoke-static {v12, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/4 v7, 0x0

    int-to-float v4, v1

    add-float/2addr v5, v2

    .line 99
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget-object v10, v0, Lru/okei/timetable/DayStripView;->strong:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v9, v11

    .line 98
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    :cond_7
    iget v2, v0, Lru/okei/timetable/DayStripView;->progress:F

    cmpl-float v4, v2, v12

    if-lez v4, :cond_9

    int-to-float v1, v1

    const/high16 v4, 0x41300000    # 11.0f

    mul-float v4, v4, v14

    sub-float/2addr v1, v4

    const/high16 v4, 0x41400000    # 12.0f

    div-float/2addr v1, v4

    mul-float v2, v2, v4

    .line 104
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v4, 0x0

    :goto_4
    const/16 v5, 0xc

    if-ge v4, v5, :cond_9

    int-to-float v5, v4

    add-float v6, v1, v14

    mul-float v16, v5, v6

    if-ge v4, v2, :cond_8

    add-float v18, v16, v1

    add-float v19, v21, v3

    .line 108
    iget-object v5, v0, Lru/okei/timetable/DayStripView;->strong:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v17, v21

    move-object/from16 v20, v5

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_8
    add-float v18, v16, v1

    add-float v19, v21, v3

    .line 110
    iget-object v5, v0, Lru/okei/timetable/DayStripView;->empty:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v17, v21

    move-object/from16 v20, v5

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    :goto_6
    return-void
.end method

.method public setColors(III)V
    .locals 1

    .line 43
    iget-object v0, p0, Lru/okei/timetable/DayStripView;->strong:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object p1, p0, Lru/okei/timetable/DayStripView;->weak:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object p1, p0, Lru/okei/timetable/DayStripView;->empty:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    invoke-virtual {p0}, Lru/okei/timetable/DayStripView;->invalidate()V

    return-void
.end method

.method public setDay([J[JJJJF)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [J

    .line 51
    :cond_0
    iput-object p1, p0, Lru/okei/timetable/DayStripView;->starts:[J

    if-nez p2, :cond_1

    new-array p2, v0, [J

    .line 52
    :cond_1
    iput-object p2, p0, Lru/okei/timetable/DayStripView;->ends:[J

    .line 53
    iput-wide p3, p0, Lru/okei/timetable/DayStripView;->now:J

    .line 54
    iput-wide p5, p0, Lru/okei/timetable/DayStripView;->currentStart:J

    .line 55
    iput-wide p7, p0, Lru/okei/timetable/DayStripView;->currentEnd:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 56
    invoke-static {p1, p9}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lru/okei/timetable/DayStripView;->progress:F

    cmpl-float p2, p1, p2

    if-lez p2, :cond_2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    .line 58
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u0414\u0415\u041d\u042c \u0417\u0410\u041f\u041e\u041b\u041d\u0415\u041d \u041d\u0410 "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "\u0414\u0415\u041d\u042c"

    .line 57
    :goto_0
    invoke-virtual {p0, p1}, Lru/okei/timetable/DayStripView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0}, Lru/okei/timetable/DayStripView;->invalidate()V

    return-void
.end method
