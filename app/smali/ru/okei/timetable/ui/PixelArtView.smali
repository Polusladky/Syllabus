.class public final Lru/okei/timetable/ui/PixelArtView;
.super Landroid/view/View;
.source "PixelArtView.java"


# instance fields
.field private art:Landroid/graphics/Bitmap;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/PixelArtView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 21
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 37
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 38
    iget-object v0, p0, Lru/okei/timetable/ui/PixelArtView;->art:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lru/okei/timetable/ui/PixelArtView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lru/okei/timetable/ui/PixelArtView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lru/okei/timetable/ui/PixelArtView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lru/okei/timetable/ui/PixelArtView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 42
    iget-object v1, p0, Lru/okei/timetable/ui/PixelArtView;->art:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lru/okei/timetable/ui/PixelArtView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setArt(II)V
    .locals 2

    .line 25
    invoke-virtual {p0}, Lru/okei/timetable/ui/PixelArtView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lru/okei/timetable/ui/PixelArtView;->art:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 27
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lru/okei/timetable/ui/PixelArtView;->art:Landroid/graphics/Bitmap;

    .line 28
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 30
    iget-object p2, p0, Lru/okei/timetable/ui/PixelArtView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 32
    :cond_0
    invoke-virtual {p0}, Lru/okei/timetable/ui/PixelArtView;->invalidate()V

    return-void
.end method
