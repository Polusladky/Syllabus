.class public final Lru/okei/timetable/ui/PixelDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PixelDrawable.java"


# static fields
.field public static final CHECKER:I = 0x0

.field public static final DASH:I = 0x1


# instance fields
.field private final cell:I

.field private final mode:I

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/ui/PixelDrawable;->paint:Landroid/graphics/Paint;

    .line 28
    iput p3, p0, Lru/okei/timetable/ui/PixelDrawable;->mode:I

    const/4 p3, 0x1

    .line 29
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lru/okei/timetable/ui/PixelDrawable;->cell:I

    .line 30
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 31
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method private drawChecker(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 13

    .line 51
    iget v0, p2, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v3, :cond_2

    .line 52
    iget v3, p0, Lru/okei/timetable/ui/PixelDrawable;->cell:I

    add-int/2addr v3, v0

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 54
    iget v4, p2, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    :goto_1
    iget v6, p2, Landroid/graphics/Rect;->right:I

    if-ge v4, v6, :cond_1

    add-int v6, v2, v5

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    int-to-float v8, v4

    int-to-float v9, v0

    .line 56
    iget v6, p0, Lru/okei/timetable/ui/PixelDrawable;->cell:I

    add-int/2addr v6, v4

    iget v7, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v10, v6

    int-to-float v11, v3

    iget-object v12, p0, Lru/okei/timetable/ui/PixelDrawable;->paint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 54
    :cond_0
    iget v6, p0, Lru/okei/timetable/ui/PixelDrawable;->cell:I

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 51
    :cond_1
    iget v3, p0, Lru/okei/timetable/ui/PixelDrawable;->cell:I

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawDashes(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10

    .line 63
    iget v0, p0, Lru/okei/timetable/ui/PixelDrawable;->cell:I

    mul-int/lit8 v1, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    .line 65
    iget v2, p2, Landroid/graphics/Rect;->left:I

    :goto_0
    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_0

    int-to-float v5, v2

    .line 66
    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v3

    add-int v3, v2, v1

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v7, v3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v3

    iget-object v9, p0, Lru/okei/timetable/ui/PixelDrawable;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v3, v1, v0

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lru/okei/timetable/ui/PixelDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 42
    :cond_0
    iget v1, p0, Lru/okei/timetable/ui/PixelDrawable;->mode:I

    if-nez v1, :cond_1

    .line 43
    invoke-direct {p0, p1, v0}, Lru/okei/timetable/ui/PixelDrawable;->drawChecker(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-direct {p0, p1, v0}, Lru/okei/timetable/ui/PixelDrawable;->drawDashes(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lru/okei/timetable/ui/PixelDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lru/okei/timetable/ui/PixelDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
