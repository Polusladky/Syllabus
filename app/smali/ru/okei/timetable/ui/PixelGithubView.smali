.class public final Lru/okei/timetable/ui/PixelGithubView;
.super Landroid/view/View;
.source "PixelGithubView.java"


# static fields
.field private static final ROWS:[Ljava/lang/String;


# instance fields
.field private final paint:Landroid/graphics/Paint;

.field private progress:F


# direct methods
.method static bridge synthetic -$$Nest$fputprogress(Lru/okei/timetable/ui/PixelGithubView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/PixelGithubView;->progress:F

    return-void
.end method

.method static constructor <clinit>()V
    .locals 22

    const-string v0, "00011000000000011000"

    const-string v1, "00111111111111111000"

    const-string v2, "00111111111111111000"

    const-string v3, "00111111111111111000"

    const-string v4, "01111111111111111100"

    const-string v5, "01111111111111111110"

    const-string v6, "11111111111111111110"

    const-string v7, "11111111111111111110"

    const-string v8, "11111111111111111110"

    const-string v9, "11111111111111111110"

    const-string v10, "01111111111111111100"

    const-string v11, "01111111111111111000"

    const-string v12, "00111111111111110000"

    const-string v13, "00011111111111100000"

    const-string v14, "11000111111110000000"

    const-string v15, "01100001111100000000"

    const-string v16, "00110001111110000000"

    const-string v17, "00111111111110000000"

    const-string v18, "00011111111110000000"

    const-string v19, "00000111111110000000"

    const-string v20, "00000001111110000000"

    const-string v21, "00000001111110000000"

    .line 12
    filled-new-array/range {v0 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/ui/PixelGithubView;->ROWS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/PixelGithubView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, -0x1

    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 86
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    iget v1, v0, Lru/okei/timetable/ui/PixelGithubView;->progress:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    return-void

    .line 90
    :cond_0
    sget-object v1, Lru/okei/timetable/ui/PixelGithubView;->ROWS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    .line 91
    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 92
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/PixelGithubView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/PixelGithubView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 93
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/PixelGithubView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v4

    sub-float/2addr v6, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v6, v5

    .line 94
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/PixelGithubView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v4

    sub-float/2addr v8, v7

    div-float/2addr v8, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    const/16 v9, 0x31

    if-ge v5, v2, :cond_3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v1, :cond_2

    .line 98
    sget-object v11, Lru/okei/timetable/ui/PixelGithubView;->ROWS:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_1

    add-int/lit8 v7, v7, 0x1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    int-to-float v5, v7

    .line 103
    iget v7, v0, Lru/okei/timetable/ui/PixelGithubView;->progress:F

    mul-float v5, v5, v7

    float-to-int v5, v5

    add-int/lit8 v2, v2, -0x1

    const/4 v7, 0x0

    :goto_2
    if-ltz v2, :cond_6

    if-ge v7, v5, :cond_6

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v1, :cond_5

    if-ge v7, v5, :cond_5

    .line 108
    sget-object v11, Lru/okei/timetable/ui/PixelGithubView;->ROWS:[Ljava/lang/String;

    aget-object v11, v11, v2

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_4

    int-to-float v11, v10

    mul-float v11, v11, v4

    add-float v13, v6, v11

    int-to-float v11, v2

    mul-float v11, v11, v4

    add-float v14, v8, v11

    add-int/lit8 v11, v10, 0x1

    int-to-float v11, v11

    mul-float v11, v11, v4

    add-float v15, v6, v11

    add-int/lit8 v11, v2, 0x1

    int-to-float v11, v11

    mul-float v11, v11, v4

    add-float v16, v8, v11

    .line 109
    iget-object v11, v0, Lru/okei/timetable/ui/PixelGithubView;->paint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public reveal(J)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lru/okei/timetable/ui/PixelGithubView;->progress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 72
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 74
    new-instance p1, Lru/okei/timetable/ui/PixelGithubView$2;

    invoke-direct {p1, p0}, Lru/okei/timetable/ui/PixelGithubView$2;-><init>(Lru/okei/timetable/ui/PixelGithubView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 81
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public revealJerky(IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lru/okei/timetable/ui/PixelGithubView;->progress:F

    .line 49
    invoke-virtual {p0}, Lru/okei/timetable/ui/PixelGithubView;->invalidate()V

    .line 50
    new-instance v0, Lru/okei/timetable/ui/PixelGithubView$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lru/okei/timetable/ui/PixelGithubView$1;-><init>(Lru/okei/timetable/ui/PixelGithubView;IJ)V

    invoke-virtual {p0, v0, p2, p3}, Lru/okei/timetable/ui/PixelGithubView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showAll()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    iput v0, p0, Lru/okei/timetable/ui/PixelGithubView;->progress:F

    .line 67
    invoke-virtual {p0}, Lru/okei/timetable/ui/PixelGithubView;->invalidate()V

    return-void
.end method
