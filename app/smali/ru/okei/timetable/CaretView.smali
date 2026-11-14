.class public final Lru/okei/timetable/CaretView;
.super Landroid/view/View;
.source "CaretView.java"


# instance fields
.field private barHeight:F

.field private barWidth:F

.field private endX:F

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/CaretView;->paint:Landroid/graphics/Paint;

    const/high16 p2, -0x40800000    # -1.0f

    .line 15
    iput p2, p0, Lru/okei/timetable/CaretView;->endX:F

    const/high16 p2, 0x40200000    # 2.5f

    .line 16
    iput p2, p0, Lru/okei/timetable/CaretView;->barWidth:F

    const/high16 p2, 0x42200000    # 40.0f

    .line 17
    iput p2, p0, Lru/okei/timetable/CaretView;->barHeight:F

    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p2, -0x1

    .line 23
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 49
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    iget-object v0, p0, Lru/okei/timetable/CaretView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    invoke-virtual {p0}, Lru/okei/timetable/CaretView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v0, v0, v1

    .line 53
    iget v1, p0, Lru/okei/timetable/CaretView;->barWidth:F

    .line 54
    iget v2, p0, Lru/okei/timetable/CaretView;->barHeight:F

    .line 55
    invoke-virtual {p0}, Lru/okei/timetable/CaretView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v7, v3, v4

    .line 56
    iget v3, p0, Lru/okei/timetable/CaretView;->endX:F

    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    if-gez v5, :cond_0

    invoke-virtual {p0}, Lru/okei/timetable/CaretView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    move v6, v0

    goto :goto_0

    :cond_0
    add-float/2addr v3, v0

    move v6, v3

    :goto_0
    add-float v8, v6, v1

    add-float v9, v7, v2

    .line 57
    iget-object v10, p0, Lru/okei/timetable/CaretView;->paint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setBar(FF)V
    .locals 0

    .line 28
    iput p1, p0, Lru/okei/timetable/CaretView;->barWidth:F

    .line 29
    iput p2, p0, Lru/okei/timetable/CaretView;->barHeight:F

    .line 30
    invoke-virtual {p0}, Lru/okei/timetable/CaretView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 34
    iget-object v0, p0, Lru/okei/timetable/CaretView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    invoke-virtual {p0}, Lru/okei/timetable/CaretView;->invalidate()V

    return-void
.end method

.method public setEnd(F)V
    .locals 2

    .line 40
    iget v0, p0, Lru/okei/timetable/CaretView;->endX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    .line 43
    :cond_0
    iput p1, p0, Lru/okei/timetable/CaretView;->endX:F

    .line 44
    invoke-virtual {p0}, Lru/okei/timetable/CaretView;->invalidate()V

    return-void
.end method
