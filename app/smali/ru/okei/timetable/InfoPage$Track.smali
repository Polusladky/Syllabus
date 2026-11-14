.class final Lru/okei/timetable/InfoPage$Track;
.super Landroid/view/View;
.source "InfoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/InfoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Track"
.end annotation


# instance fields
.field private final density:F

.field private final fillPaint:Landroid/graphics/Paint;

.field private final markPaint:Landroid/graphics/Paint;

.field private progress:F

.field private final trackPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .line 386
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 379
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/InfoPage$Track;->trackPaint:Landroid/graphics/Paint;

    .line 380
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lru/okei/timetable/InfoPage$Track;->fillPaint:Landroid/graphics/Paint;

    .line 381
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lru/okei/timetable/InfoPage$Track;->markPaint:Landroid/graphics/Paint;

    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lru/okei/timetable/InfoPage$Track;->density:F

    .line 388
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 389
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 390
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 392
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 403
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 404
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage$Track;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 405
    iget v1, p0, Lru/okei/timetable/InfoPage$Track;->density:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v0, v2

    const/4 v4, 0x0

    div-float/2addr v1, v2

    sub-float v9, v0, v1

    .line 407
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage$Track;->getWidth()I

    move-result v3

    int-to-float v6, v3

    add-float/2addr v1, v0

    iget-object v8, p0, Lru/okei/timetable/InfoPage$Track;->trackPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v9

    move v7, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 408
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage$Track;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lru/okei/timetable/InfoPage$Track;->progress:F

    mul-float v3, v3, v4

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    const/4 v6, 0x0

    .line 410
    iget-object v10, p0, Lru/okei/timetable/InfoPage$Track;->fillPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v9

    move v8, v3

    move v9, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 412
    :cond_0
    iget v1, p0, Lru/okei/timetable/InfoPage$Track;->density:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v5, v1, v4

    div-float/2addr v5, v2

    sub-float v7, v3, v5

    mul-float v2, v1, v4

    sub-float v8, v0, v2

    add-float v9, v3, v5

    mul-float v1, v1, v4

    add-float v10, v0, v1

    .line 413
    iget-object v11, p0, Lru/okei/timetable/InfoPage$Track;->markPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method setProgress(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 397
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lru/okei/timetable/InfoPage$Track;->progress:F

    .line 398
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage$Track;->invalidate()V

    return-void
.end method
