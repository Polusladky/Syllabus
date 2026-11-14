.class public final Lru/okei/timetable/ui/Shelf;
.super Landroid/view/View;
.source "Shelf.java"


# instance fields
.field private color:I

.field private final paint:Landroid/graphics/Paint;

.field private progress:F


# direct methods
.method static bridge synthetic -$$Nest$fputprogress(Lru/okei/timetable/ui/Shelf;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/Shelf;->progress:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/Shelf;->paint:Landroid/graphics/Paint;

    const v0, -0xd5d5d6

    .line 14
    iput v0, p0, Lru/okei/timetable/ui/Shelf;->color:I

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget v0, p0, Lru/okei/timetable/ui/Shelf;->color:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public grow(J)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lru/okei/timetable/ui/Shelf;->progress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 30
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32
    new-instance p1, Lru/okei/timetable/ui/Shelf$1;

    invoke-direct {p1, p0}, Lru/okei/timetable/ui/Shelf$1;-><init>(Lru/okei/timetable/ui/Shelf;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 39
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 49
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    iget v1, v0, Lru/okei/timetable/ui/Shelf;->progress:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/Shelf;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 54
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/Shelf;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 55
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/Shelf;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget v6, v0, Lru/okei/timetable/ui/Shelf;->progress:F

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v5, v5, v6

    .line 56
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/Shelf;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v8, v1, v3

    sub-float/2addr v6, v8

    sub-float v15, v4, v5

    sub-float v16, v6, v8

    add-float/2addr v4, v5

    add-float v5, v6, v8

    .line 57
    iget-object v14, v0, Lru/okei/timetable/ui/Shelf;->paint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v15

    move/from16 v11, v16

    move v12, v4

    move v13, v5

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v1

    .line 59
    iget v8, v0, Lru/okei/timetable/ui/Shelf;->progress:F

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float v8, v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v6, v6, v3

    cmpl-float v2, v6, v2

    if-lez v2, :cond_1

    sub-float v2, v16, v6

    add-float v12, v15, v1

    .line 61
    iget-object v14, v0, Lru/okei/timetable/ui/Shelf;->paint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v15

    move v11, v2

    move v13, v5

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-float v10, v4, v1

    .line 63
    iget-object v14, v0, Lru/okei/timetable/ui/Shelf;->paint:Landroid/graphics/Paint;

    move v12, v4

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 24
    iput p1, p0, Lru/okei/timetable/ui/Shelf;->color:I

    .line 25
    invoke-virtual {p0}, Lru/okei/timetable/ui/Shelf;->invalidate()V

    return-void
.end method

.method public showAll()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    iput v0, p0, Lru/okei/timetable/ui/Shelf;->progress:F

    .line 44
    invoke-virtual {p0}, Lru/okei/timetable/ui/Shelf;->invalidate()V

    return-void
.end method
