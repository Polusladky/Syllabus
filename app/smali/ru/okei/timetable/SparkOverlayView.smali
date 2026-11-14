.class public Lru/okei/timetable/SparkOverlayView;
.super Landroid/view/View;
.source "SparkOverlayView.java"


# static fields
.field private static final DUST:I = 0x2e

.field private static final FRAME_MS:J = 0x32L


# instance fields
.field private active:Z

.field private final alpha:[F

.field private beat:F

.field private final frame:Ljava/lang/Runnable;

.field private glitchRow:I

.field private glitchTtl:I

.field private glitchWidth:I

.field private final handler:Landroid/os/Handler;

.field private final paint:Landroid/graphics/Paint;

.field private final random:Ljava/util/Random;

.field private running:Z

.field private final size:[F

.field private final speed:[F

.field private final x:[F

.field private final y:[F


# direct methods
.method static bridge synthetic -$$Nest$fgetactive(Lru/okei/timetable/SparkOverlayView;)Z
    .locals 0

    iget-boolean p0, p0, Lru/okei/timetable/SparkOverlayView;->active:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbeat(Lru/okei/timetable/SparkOverlayView;)F
    .locals 0

    iget p0, p0, Lru/okei/timetable/SparkOverlayView;->beat:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetglitchTtl(Lru/okei/timetable/SparkOverlayView;)I
    .locals 0

    iget p0, p0, Lru/okei/timetable/SparkOverlayView;->glitchTtl:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lru/okei/timetable/SparkOverlayView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/SparkOverlayView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrandom(Lru/okei/timetable/SparkOverlayView;)Ljava/util/Random;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/SparkOverlayView;->random:Ljava/util/Random;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspeed(Lru/okei/timetable/SparkOverlayView;)[F
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/SparkOverlayView;->speed:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetx(Lru/okei/timetable/SparkOverlayView;)[F
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/SparkOverlayView;->x:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgety(Lru/okei/timetable/SparkOverlayView;)[F
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/SparkOverlayView;->y:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbeat(Lru/okei/timetable/SparkOverlayView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/SparkOverlayView;->beat:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputglitchRow(Lru/okei/timetable/SparkOverlayView;I)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/SparkOverlayView;->glitchRow:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputglitchTtl(Lru/okei/timetable/SparkOverlayView;I)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/SparkOverlayView;->glitchTtl:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputglitchWidth(Lru/okei/timetable/SparkOverlayView;I)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/SparkOverlayView;->glitchWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrunning(Lru/okei/timetable/SparkOverlayView;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/SparkOverlayView;->running:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/SparkOverlayView;->paint:Landroid/graphics/Paint;

    .line 23
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    iput-object p2, p0, Lru/okei/timetable/SparkOverlayView;->random:Ljava/util/Random;

    .line 24
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lru/okei/timetable/SparkOverlayView;->handler:Landroid/os/Handler;

    const/16 p2, 0x2e

    new-array v0, p2, [F

    .line 25
    iput-object v0, p0, Lru/okei/timetable/SparkOverlayView;->x:[F

    new-array v0, p2, [F

    .line 26
    iput-object v0, p0, Lru/okei/timetable/SparkOverlayView;->y:[F

    new-array v0, p2, [F

    .line 27
    iput-object v0, p0, Lru/okei/timetable/SparkOverlayView;->speed:[F

    new-array v0, p2, [F

    .line 28
    iput-object v0, p0, Lru/okei/timetable/SparkOverlayView;->size:[F

    new-array p2, p2, [F

    .line 29
    iput-object p2, p0, Lru/okei/timetable/SparkOverlayView;->alpha:[F

    const/4 p2, -0x1

    .line 34
    iput p2, p0, Lru/okei/timetable/SparkOverlayView;->glitchRow:I

    .line 93
    new-instance p2, Lru/okei/timetable/SparkOverlayView$1;

    invoke-direct {p2, p0}, Lru/okei/timetable/SparkOverlayView$1;-><init>(Lru/okei/timetable/SparkOverlayView;)V

    iput-object p2, p0, Lru/okei/timetable/SparkOverlayView;->frame:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 40
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 42
    invoke-virtual {p0, p2}, Lru/okei/timetable/SparkOverlayView;->setClickable(Z)V

    .line 43
    invoke-virtual {p0, p2}, Lru/okei/timetable/SparkOverlayView;->setFocusable(Z)V

    const/4 p1, 0x2

    .line 44
    invoke-virtual {p0, p1}, Lru/okei/timetable/SparkOverlayView;->setImportantForAccessibility(I)V

    .line 45
    invoke-direct {p0}, Lru/okei/timetable/SparkOverlayView;->initDust()V

    return-void
.end method

.method private dp(F)F
    .locals 1

    .line 59
    invoke-virtual {p0}, Lru/okei/timetable/SparkOverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    return p1
.end method

.method private initDust()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x2e

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lru/okei/timetable/SparkOverlayView;->x:[F

    iget-object v2, p0, Lru/okei/timetable/SparkOverlayView;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    aput v2, v1, v0

    .line 51
    iget-object v1, p0, Lru/okei/timetable/SparkOverlayView;->y:[F

    iget-object v2, p0, Lru/okei/timetable/SparkOverlayView;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    aput v2, v1, v0

    .line 52
    iget-object v1, p0, Lru/okei/timetable/SparkOverlayView;->speed:[F

    iget-object v2, p0, Lru/okei/timetable/SparkOverlayView;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const v3, 0x3ad1b717    # 0.0016f

    mul-float v2, v2, v3

    const v3, 0x3a1d4952    # 6.0E-4f

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 53
    iget-object v1, p0, Lru/okei/timetable/SparkOverlayView;->size:[F

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, v2}, Lru/okei/timetable/SparkOverlayView;->dp(F)F

    move-result v2

    iget-object v3, p0, Lru/okei/timetable/SparkOverlayView;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {p0, v4}, Lru/okei/timetable/SparkOverlayView;->dp(F)F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 54
    iget-object v1, p0, Lru/okei/timetable/SparkOverlayView;->alpha:[F

    iget-object v2, p0, Lru/okei/timetable/SparkOverlayView;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const v3, 0x3e6147ae    # 0.22f

    mul-float v2, v2, v3

    const v3, 0x3da3d70a    # 0.08f

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private wake()V
    .locals 4

    .line 87
    iget-boolean v0, p0, Lru/okei/timetable/SparkOverlayView;->running:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lru/okei/timetable/SparkOverlayView;->running:Z

    .line 89
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/SparkOverlayView;->frame:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public beat(F)V
    .locals 2

    .line 80
    iget v0, p0, Lru/okei/timetable/SparkOverlayView;->beat:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lru/okei/timetable/SparkOverlayView;->beat:F

    .line 81
    iget-boolean p1, p0, Lru/okei/timetable/SparkOverlayView;->active:Z

    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Lru/okei/timetable/SparkOverlayView;->wake()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 122
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lru/okei/timetable/SparkOverlayView;->running:Z

    .line 124
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 129
    invoke-virtual {p0}, Lru/okei/timetable/SparkOverlayView;->getWidth()I

    move-result v0

    .line 130
    invoke-virtual {p0}, Lru/okei/timetable/SparkOverlayView;->getHeight()I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_0

    goto/16 :goto_1

    .line 134
    :cond_0
    iget-object v2, p0, Lru/okei/timetable/SparkOverlayView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x2e

    if-ge v2, v3, :cond_1

    .line 136
    iget-object v3, p0, Lru/okei/timetable/SparkOverlayView;->alpha:[F

    aget v3, v3, v2

    iget v4, p0, Lru/okei/timetable/SparkOverlayView;->beat:F

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float v3, v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 137
    iget-object v4, p0, Lru/okei/timetable/SparkOverlayView;->paint:Landroid/graphics/Paint;

    shl-int/lit8 v3, v3, 0x18

    const v5, 0xffffff

    or-int/2addr v3, v5

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v3, p0, Lru/okei/timetable/SparkOverlayView;->x:[F

    aget v3, v3, v2

    int-to-float v4, v0

    mul-float v6, v3, v4

    iget-object v5, p0, Lru/okei/timetable/SparkOverlayView;->y:[F

    aget v5, v5, v2

    int-to-float v7, v1

    mul-float v8, v5, v7

    mul-float v3, v3, v4

    iget-object v4, p0, Lru/okei/timetable/SparkOverlayView;->size:[F

    aget v4, v4, v2

    add-float/2addr v3, v4

    mul-float v5, v5, v7

    add-float v9, v5, v4

    iget-object v10, p0, Lru/okei/timetable/SparkOverlayView;->paint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v8

    move v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_1
    iget v0, p0, Lru/okei/timetable/SparkOverlayView;->glitchTtl:I

    if-lez v0, :cond_2

    iget v0, p0, Lru/okei/timetable/SparkOverlayView;->glitchRow:I

    if-ltz v0, :cond_2

    .line 141
    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView;->paint:Landroid/graphics/Paint;

    const v1, 0x2affffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    .line 142
    iget v0, p0, Lru/okei/timetable/SparkOverlayView;->glitchRow:I

    int-to-float v4, v0

    iget v1, p0, Lru/okei/timetable/SparkOverlayView;->glitchWidth:I

    int-to-float v5, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v1}, Lru/okei/timetable/SparkOverlayView;->dp(F)F

    move-result v1

    add-float v6, v0, v1

    iget-object v7, p0, Lru/okei/timetable/SparkOverlayView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setActive(Z)V
    .locals 1

    .line 64
    iget-boolean v0, p0, Lru/okei/timetable/SparkOverlayView;->active:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 67
    :cond_0
    iput-boolean p1, p0, Lru/okei/timetable/SparkOverlayView;->active:Z

    if-eqz p1, :cond_1

    .line 69
    invoke-direct {p0}, Lru/okei/timetable/SparkOverlayView;->wake()V

    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p0, Lru/okei/timetable/SparkOverlayView;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lru/okei/timetable/SparkOverlayView;->frame:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lru/okei/timetable/SparkOverlayView;->running:Z

    .line 73
    iput p1, p0, Lru/okei/timetable/SparkOverlayView;->glitchTtl:I

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lru/okei/timetable/SparkOverlayView;->beat:F

    .line 75
    invoke-virtual {p0}, Lru/okei/timetable/SparkOverlayView;->invalidate()V

    :goto_0
    return-void
.end method
