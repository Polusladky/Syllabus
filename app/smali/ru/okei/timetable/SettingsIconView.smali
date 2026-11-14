.class public Lru/okei/timetable/SettingsIconView;
.super Landroid/view/View;
.source "SettingsIconView.java"


# static fields
.field private static final CELLS:I = 0x10

.field private static final ROWS:[I

.field private static final TARGETS:[F


# instance fields
.field private final knob:[F

.field private knobs:F

.field private final paint:Landroid/graphics/Paint;

.field private final random:Ljava/util/Random;

.field private strips:F


# direct methods
.method static bridge synthetic -$$Nest$fgetknob(Lru/okei/timetable/SettingsIconView;)[F
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/SettingsIconView;->knob:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputknobs(Lru/okei/timetable/SettingsIconView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/SettingsIconView;->knobs:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstrips(Lru/okei/timetable/SettingsIconView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/SettingsIconView;->strips:F

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTARGETS()[F
    .locals 1

    sget-object v0, Lru/okei/timetable/SettingsIconView;->TARGETS:[F

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 20
    fill-array-data v1, :array_0

    sput-object v1, Lru/okei/timetable/SettingsIconView;->TARGETS:[F

    const/4 v1, 0x7

    const/16 v2, 0xb

    .line 22
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lru/okei/timetable/SettingsIconView;->ROWS:[I

    return-void

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x41100000    # 9.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/SettingsIconView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x3

    new-array p2, p2, [F

    .line 25
    fill-array-data p2, :array_0

    iput-object p2, p0, Lru/okei/timetable/SettingsIconView;->knob:[F

    .line 26
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    iput-object p2, p0, Lru/okei/timetable/SettingsIconView;->random:Ljava/util/Random;

    const/4 p2, 0x2

    .line 33
    invoke-virtual {p0, p2}, Lru/okei/timetable/SettingsIconView;->setImportantForAccessibility(I)V

    const/4 p2, -0x1

    .line 34
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x0

    .line 35
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    return-void

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x41100000    # 9.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private rect(Landroid/graphics/Canvas;FFFF)V
    .locals 6

    .line 152
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float v1, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float v2, p2

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float v3, p2

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float v4, p2

    iget-object v5, p0, Lru/okei/timetable/SettingsIconView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 127
    invoke-virtual {p0}, Lru/okei/timetable/SettingsIconView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lru/okei/timetable/SettingsIconView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f1eb852    # 0.62f

    mul-float v0, v0, v1

    .line 128
    invoke-virtual {p0}, Lru/okei/timetable/SettingsIconView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 129
    invoke-virtual {p0}, Lru/okei/timetable/SettingsIconView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float/2addr v3, v2

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v0, v4

    const/high16 v4, 0x41500000    # 13.0f

    mul-float v4, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x3

    if-ge v6, v7, :cond_0

    .line 134
    sget-object v7, Lru/okei/timetable/SettingsIconView;->ROWS:[I

    aget v7, v7, v6

    int-to-float v7, v7

    mul-float v7, v7, v0

    add-float v11, v3, v7

    .line 135
    iget v7, p0, Lru/okei/timetable/SettingsIconView;->strips:F

    mul-float v7, v7, v4

    add-float v8, v1, v0

    sub-float v9, v4, v7

    div-float/2addr v9, v2

    add-float v10, v8, v9

    add-float v12, v10, v7

    mul-float v7, v0, v2

    add-float v13, v11, v7

    move-object v8, p0

    move-object v9, p1

    .line 137
    invoke-direct/range {v8 .. v13}, Lru/okei/timetable/SettingsIconView;->rect(Landroid/graphics/Canvas;FFFF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iget v2, p0, Lru/okei/timetable/SettingsIconView;->knobs:F

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .line 141
    iget-object v4, p0, Lru/okei/timetable/SettingsIconView;->paint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v2, v2, v6

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    if-ge v5, v7, :cond_1

    .line 143
    sget-object v2, Lru/okei/timetable/SettingsIconView;->ROWS:[I

    aget v2, v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v2, v3

    .line 144
    iget-object v4, p0, Lru/okei/timetable/SettingsIconView;->knob:[F

    aget v4, v4, v5

    mul-float v4, v4, v0

    add-float v10, v1, v4

    sub-float v11, v2, v0

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v4, v4, v0

    add-float v12, v10, v4

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v4, v4, v0

    add-float v13, v2, v4

    move-object v8, p0

    move-object v9, p1

    .line 145
    invoke-direct/range {v8 .. v13}, Lru/okei/timetable/SettingsIconView;->rect(Landroid/graphics/Canvas;FFFF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 147
    :cond_1
    iget-object p1, p0, Lru/okei/timetable/SettingsIconView;->paint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2
    return-void
.end method

.method public playAppear()V
    .locals 6

    .line 64
    invoke-virtual {p0}, Lru/okei/timetable/SettingsIconView;->reset()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 65
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x140

    .line 66
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 67
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 68
    new-instance v2, Lru/okei/timetable/SettingsIconView$1;

    invoke-direct {v2, p0}, Lru/okei/timetable/SettingsIconView$1;-><init>(Lru/okei/timetable/SettingsIconView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    const/4 v1, 0x3

    new-array v2, v1, [F

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 79
    sget-object v4, Lru/okei/timetable/SettingsIconView;->TARGETS:[F

    aget v4, v4, v3

    rem-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_0

    const/high16 v5, 0x40900000    # 4.5f

    goto :goto_1

    :cond_0
    const/high16 v5, -0x3f700000    # -4.5f

    :goto_1
    add-float/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v0, [F

    .line 81
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1cc

    .line 82
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 83
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 84
    new-instance v1, Lru/okei/timetable/SettingsIconView$2;

    invoke-direct {v1, p0, v2}, Lru/okei/timetable/SettingsIconView$2;-><init>(Lru/okei/timetable/SettingsIconView;[F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 95
    new-instance v1, Lru/okei/timetable/SettingsIconView$3;

    invoke-direct {v1, p0, v0}, Lru/okei/timetable/SettingsIconView$3;-><init>(Lru/okei/timetable/SettingsIconView;Landroid/animation/ValueAnimator;)V

    const-wide/16 v2, 0xe6

    invoke-virtual {p0, v1, v2, v3}, Lru/okei/timetable/SettingsIconView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public playShuffle()V
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 104
    iget-object v2, p0, Lru/okei/timetable/SettingsIconView;->knob:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v4, 0x1

    aget v5, v2, v4

    aput v5, v1, v4

    const/4 v4, 0x2

    aget v2, v2, v4

    aput v2, v1, v4

    new-array v2, v0, [F

    :goto_0
    if-ge v3, v0, :cond_0

    .line 107
    iget-object v5, p0, Lru/okei/timetable/SettingsIconView;->random:Ljava/util/Random;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v4, [F

    .line 109
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1a4

    .line 110
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 111
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const v4, 0x3fcccccd    # 1.6f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    new-instance v3, Lru/okei/timetable/SettingsIconView$4;

    invoke-direct {v3, p0, v1, v2}, Lru/okei/timetable/SettingsIconView$4;-><init>(Lru/okei/timetable/SettingsIconView;[F[F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 122
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lru/okei/timetable/SettingsIconView;->strips:F

    .line 56
    iput v0, p0, Lru/okei/timetable/SettingsIconView;->knobs:F

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lru/okei/timetable/SettingsIconView;->knob:[F

    sget-object v2, Lru/okei/timetable/SettingsIconView;->TARGETS:[F

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lru/okei/timetable/SettingsIconView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lru/okei/timetable/SettingsIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    invoke-virtual {p0}, Lru/okei/timetable/SettingsIconView;->invalidate()V

    return-void
.end method

.method public showFinal()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    iput v0, p0, Lru/okei/timetable/SettingsIconView;->strips:F

    .line 47
    iput v0, p0, Lru/okei/timetable/SettingsIconView;->knobs:F

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lru/okei/timetable/SettingsIconView;->knob:[F

    sget-object v2, Lru/okei/timetable/SettingsIconView;->TARGETS:[F

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lru/okei/timetable/SettingsIconView;->invalidate()V

    return-void
.end method
