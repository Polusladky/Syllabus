.class public final Lru/okei/timetable/ui/BreakRule;
.super Landroid/view/View;
.source "BreakRule.java"


# instance fields
.field private final dash:Landroid/graphics/Paint;

.field private density:F

.field private label:Ljava/lang/String;

.field private final text:Landroid/graphics/Paint;

.field private textColor:I

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroid/graphics/Typeface;)V
    .locals 3

    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/ui/BreakRule;->dash:Landroid/graphics/Paint;

    .line 12
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lru/okei/timetable/ui/BreakRule;->text:Landroid/graphics/Paint;

    const-string v2, ""

    .line 13
    iput-object v2, p0, Lru/okei/timetable/ui/BreakRule;->label:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lru/okei/timetable/ui/BreakRule;->density:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float p1, p1, v2

    .line 21
    iput p1, p0, Lru/okei/timetable/ui/BreakRule;->textSize:F

    .line 22
    iput p2, p0, Lru/okei/timetable/ui/BreakRule;->textColor:I

    const/4 p1, 0x0

    .line 23
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 25
    iget v2, p0, Lru/okei/timetable/ui/BreakRule;->density:F

    invoke-static {p3, v2}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 26
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    iget p2, p0, Lru/okei/timetable/ui/BreakRule;->textSize:F

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p4, :cond_0

    .line 31
    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Lru/okei/timetable/ui/BreakRule;->setBackgroundColor(I)V

    return-void
.end method

.method private drawDashes(Landroid/graphics/Canvas;FFF)V
    .locals 9

    .line 85
    iget v0, p0, Lru/okei/timetable/ui/BreakRule;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v2, v0, v1

    mul-float v0, v0, v1

    :goto_0
    cmpg-float v1, p2, p3

    if-gez v1, :cond_0

    .line 89
    iget v1, p0, Lru/okei/timetable/ui/BreakRule;->density:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v1, v1, v3

    sub-float v5, p4, v1

    add-float v1, p2, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v1, p0, Lru/okei/timetable/ui/BreakRule;->density:F

    mul-float v1, v1, v3

    add-float v7, p4, v1

    iget-object v8, p0, Lru/okei/timetable/ui/BreakRule;->dash:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-float v1, v2, v0

    add-float/2addr p2, v1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 67
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p0}, Lru/okei/timetable/ui/BreakRule;->getWidth()I

    move-result v0

    .line 69
    invoke-virtual {p0}, Lru/okei/timetable/ui/BreakRule;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 70
    iget-object v3, p0, Lru/okei/timetable/ui/BreakRule;->text:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    iget-object v4, p0, Lru/okei/timetable/ui/BreakRule;->text:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    sub-float v3, v1, v3

    .line 71
    iget-object v4, p0, Lru/okei/timetable/ui/BreakRule;->label:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lru/okei/timetable/ui/BreakRule;->text:Landroid/graphics/Paint;

    iget-object v6, p0, Lru/okei/timetable/ui/BreakRule;->label:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 72
    :goto_0
    iget v6, p0, Lru/okei/timetable/ui/BreakRule;->density:F

    const/high16 v7, 0x41400000    # 12.0f

    mul-float v6, v6, v7

    int-to-float v0, v0

    div-float v7, v0, v2

    div-float/2addr v4, v2

    sub-float v2, v7, v4

    sub-float v8, v2, v6

    add-float/2addr v7, v4

    add-float/2addr v7, v6

    .line 76
    invoke-direct {p0, p1, v5, v8, v1}, Lru/okei/timetable/ui/BreakRule;->drawDashes(Landroid/graphics/Canvas;FFF)V

    .line 77
    invoke-direct {p0, p1, v7, v0, v1}, Lru/okei/timetable/ui/BreakRule;->drawDashes(Landroid/graphics/Canvas;FFF)V

    .line 78
    iget-object v0, p0, Lru/okei/timetable/ui/BreakRule;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lru/okei/timetable/ui/BreakRule;->text:Landroid/graphics/Paint;

    iget v1, p0, Lru/okei/timetable/ui/BreakRule;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lru/okei/timetable/ui/BreakRule;->label:Ljava/lang/String;

    iget-object v1, p0, Lru/okei/timetable/ui/BreakRule;->text:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 60
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 61
    iget p2, p0, Lru/okei/timetable/ui/BreakRule;->textSize:F

    const v0, 0x4019999a    # 2.4f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 62
    invoke-virtual {p0, p1, p2}, Lru/okei/timetable/ui/BreakRule;->setMeasuredDimension(II)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 44
    :cond_0
    iput-object p1, p0, Lru/okei/timetable/ui/BreakRule;->label:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lru/okei/timetable/ui/BreakRule;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lru/okei/timetable/ui/BreakRule;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 53
    iput p1, p0, Lru/okei/timetable/ui/BreakRule;->textColor:I

    .line 54
    iget-object v0, p0, Lru/okei/timetable/ui/BreakRule;->text:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    invoke-virtual {p0}, Lru/okei/timetable/ui/BreakRule;->invalidate()V

    return-void
.end method

.method public setTextSizeSp(F)V
    .locals 1

    .line 37
    iget v0, p0, Lru/okei/timetable/ui/BreakRule;->density:F

    mul-float p1, p1, v0

    iput p1, p0, Lru/okei/timetable/ui/BreakRule;->textSize:F

    .line 38
    iget-object v0, p0, Lru/okei/timetable/ui/BreakRule;->text:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 39
    invoke-virtual {p0}, Lru/okei/timetable/ui/BreakRule;->requestLayout()V

    .line 40
    invoke-virtual {p0}, Lru/okei/timetable/ui/BreakRule;->invalidate()V

    return-void
.end method
