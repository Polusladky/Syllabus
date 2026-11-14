.class public Lru/okei/timetable/ui/ShareIconView;
.super Landroid/view/View;
.source "ShareIconView.java"


# static fields
.field private static final APPEAR_MS:J = 0x18L

.field private static final APPEAR_STEPS:I = 0x16

.field private static final GRID:I = 0x18

.field private static final LINK:F = 2.0f

.field private static final LINKS:[[I

.field private static final NODE:F = 4.2f

.field private static final NODES:[[F

.field private static final PRESS_MS:J = 0x16L

.field private static final PRESS_STEPS:I = 0x1a


# instance fields
.field private appearPlayed:Z

.field private final appearRun:Ljava/lang/Runnable;

.field private appearStep:I

.field private appearT:F

.field private color:I

.field private final delay:[F

.field private final dotOrder:[I

.field private final handler:Landroid/os/Handler;

.field private final linkOrder:[I

.field private final offsetX:[F

.field private final offsetY:[F

.field private final paint:Landroid/graphics/Paint;

.field private final pressRun:Ljava/lang/Runnable;

.field private pressStep:I

.field private final random:Ljava/util/Random;


# direct methods
.method static bridge synthetic -$$Nest$fgetappearStep(Lru/okei/timetable/ui/ShareIconView;)I
    .locals 0

    iget p0, p0, Lru/okei/timetable/ui/ShareIconView;->appearStep:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lru/okei/timetable/ui/ShareIconView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/ui/ShareIconView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpressStep(Lru/okei/timetable/ui/ShareIconView;)I
    .locals 0

    iget p0, p0, Lru/okei/timetable/ui/ShareIconView;->pressStep:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputappearStep(Lru/okei/timetable/ui/ShareIconView;I)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/ShareIconView;->appearStep:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputappearT(Lru/okei/timetable/ui/ShareIconView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/ShareIconView;->appearT:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpressStep(Lru/okei/timetable/ui/ShareIconView;I)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/ShareIconView;->pressStep:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [[F

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 24
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    sput-object v1, Lru/okei/timetable/ui/ShareIconView;->NODES:[[F

    new-array v0, v0, [[I

    .line 25
    filled-new-array {v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v4

    filled-new-array {v4, v2}, [I

    move-result-object v1

    aput-object v1, v0, v5

    filled-new-array {v5, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lru/okei/timetable/ui/ShareIconView;->LINKS:[[I

    return-void

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x41400000    # 12.0f
    .end array-data

    :array_1
    .array-data 4
        0x41980000    # 19.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_2
    .array-data 4
        0x41980000    # 19.0f
        0x41980000    # 19.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/ShareIconView;->paint:Landroid/graphics/Paint;

    .line 34
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lru/okei/timetable/ui/ShareIconView;->handler:Landroid/os/Handler;

    .line 35
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    iput-object p2, p0, Lru/okei/timetable/ui/ShareIconView;->random:Ljava/util/Random;

    const/4 p2, -0x1

    .line 37
    iput p2, p0, Lru/okei/timetable/ui/ShareIconView;->color:I

    const/16 v0, 0x16

    .line 39
    iput v0, p0, Lru/okei/timetable/ui/ShareIconView;->appearStep:I

    .line 41
    iput p2, p0, Lru/okei/timetable/ui/ShareIconView;->pressStep:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 43
    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    iput-object v3, p0, Lru/okei/timetable/ui/ShareIconView;->dotOrder:[I

    .line 44
    filled-new-array {v0, v1, v2}, [I

    move-result-object v1

    iput-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->linkOrder:[I

    const/4 v1, 0x3

    new-array v3, v1, [F

    .line 45
    iput-object v3, p0, Lru/okei/timetable/ui/ShareIconView;->offsetX:[F

    new-array v3, v1, [F

    .line 46
    iput-object v3, p0, Lru/okei/timetable/ui/ShareIconView;->offsetY:[F

    new-array v1, v1, [F

    .line 48
    iput-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->delay:[F

    .line 50
    new-instance v1, Lru/okei/timetable/ui/ShareIconView$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/ui/ShareIconView$1;-><init>(Lru/okei/timetable/ui/ShareIconView;)V

    iput-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->appearRun:Ljava/lang/Runnable;

    .line 62
    new-instance v1, Lru/okei/timetable/ui/ShareIconView$2;

    invoke-direct {v1, p0}, Lru/okei/timetable/ui/ShareIconView$2;-><init>(Lru/okei/timetable/ui/ShareIconView;)V

    iput-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->pressRun:Ljava/lang/Runnable;

    .line 78
    invoke-virtual {p0, v2}, Lru/okei/timetable/ui/ShareIconView;->setImportantForAccessibility(I)V

    .line 79
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lru/okei/timetable/ui/ShareIconView;->appearT:F

    return-void
.end method

.method private clearOffsets()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 146
    iget-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->offsetX:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 147
    iget-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->offsetY:[F

    aput v2, v1, v0

    .line 148
    iget-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->delay:[F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dot(Landroid/graphics/Canvas;FFF)V
    .locals 6

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    sub-float v1, p2, p4

    sub-float v2, p3, p4

    add-float v3, p2, p4

    add-float v4, p3, p4

    .line 259
    iget-object v5, p0, Lru/okei/timetable/ui/ShareIconView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static indexOf([II)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 249
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 250
    aget v2, p0, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private link(Landroid/graphics/Canvas;FFFFFF)V
    .locals 12

    const/high16 v0, 0x41400000    # 12.0f

    mul-float v1, p7, v0

    .line 265
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p6, v2

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v1, :cond_0

    int-to-float v4, v3

    div-float/2addr v4, v0

    sub-float v5, p4, p2

    mul-float v5, v5, v4

    add-float/2addr v5, p2

    sub-float v6, p5, p3

    mul-float v6, v6, v4

    add-float v4, p3, v6

    sub-float v7, v5, v2

    sub-float v8, v4, v2

    add-float v9, v5, v2

    add-float v10, v4, v2

    move-object v4, p0

    .line 271
    iget-object v11, v4, Lru/okei/timetable/ui/ShareIconView;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v4, p0

    return-void
.end method

.method private pull(IFFF)V
    .locals 4

    .line 182
    sget-object v0, Lru/okei/timetable/ui/ShareIconView;->NODES:[[F

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget v1, v0, v1

    sub-float/2addr p2, v1

    const/4 v1, 0x1

    .line 183
    aget v0, v0, v1

    sub-float/2addr p3, v0

    float-to-double v0, p2

    float-to-double v2, p3

    .line 184
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->offsetX:[F

    div-float/2addr p2, v0

    mul-float p2, p2, p4

    aput p2, v1, p1

    .line 189
    iget-object p2, p0, Lru/okei/timetable/ui/ShareIconView;->offsetY:[F

    div-float/2addr p3, v0

    mul-float p3, p3, p4

    aput p3, p2, p1

    return-void
.end method

.method private scatter()V
    .locals 9

    .line 153
    invoke-direct {p0}, Lru/okei/timetable/ui/ShareIconView;->clearOffsets()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-ge v2, v6, :cond_0

    .line 157
    sget-object v6, Lru/okei/timetable/ui/ShareIconView;->NODES:[[F

    aget-object v6, v6, v2

    aget v7, v6, v1

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v7, v8

    add-float/2addr v3, v7

    .line 158
    aget v5, v6, v5

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    iget-object v2, p0, Lru/okei/timetable/ui/ShareIconView;->random:Ljava/util/Random;

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 161
    sget-object v6, Lru/okei/timetable/ui/ShareIconView;->LINKS:[[I

    aget-object v2, v6, v2

    aget v1, v2, v1

    .line 162
    aget v2, v2, v5

    rsub-int/lit8 v5, v1, 0x3

    sub-int/2addr v5, v2

    .line 165
    iget-object v6, p0, Lru/okei/timetable/ui/ShareIconView;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v6, v6, v7

    const/high16 v8, 0x41080000    # 8.5f

    add-float/2addr v6, v8

    invoke-direct {p0, v1, v3, v4, v6}, Lru/okei/timetable/ui/ShareIconView;->pull(IFFF)V

    .line 166
    iget-object v6, p0, Lru/okei/timetable/ui/ShareIconView;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-float v6, v6, v7

    const/high16 v7, 0x40d00000    # 6.5f

    add-float/2addr v6, v7

    invoke-direct {p0, v2, v3, v4, v6}, Lru/okei/timetable/ui/ShareIconView;->pull(IFFF)V

    .line 168
    iget-object v3, p0, Lru/okei/timetable/ui/ShareIconView;->offsetX:[F

    iget-object v4, p0, Lru/okei/timetable/ui/ShareIconView;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v4, v6

    const/high16 v7, 0x41500000    # 13.0f

    mul-float v4, v4, v7

    aput v4, v3, v5

    .line 169
    iget-object v3, p0, Lru/okei/timetable/ui/ShareIconView;->offsetY:[F

    iget-object v4, p0, Lru/okei/timetable/ui/ShareIconView;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    sub-float/2addr v4, v6

    mul-float v4, v4, v7

    aput v4, v3, v5

    .line 171
    iget-object v3, p0, Lru/okei/timetable/ui/ShareIconView;->offsetX:[F

    aget v4, v3, v1

    iget-object v7, p0, Lru/okei/timetable/ui/ShareIconView;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    sub-float/2addr v7, v6

    const/high16 v8, 0x40600000    # 3.5f

    mul-float v7, v7, v8

    add-float/2addr v4, v7

    aput v4, v3, v1

    .line 172
    iget-object v3, p0, Lru/okei/timetable/ui/ShareIconView;->offsetY:[F

    aget v4, v3, v1

    iget-object v7, p0, Lru/okei/timetable/ui/ShareIconView;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    sub-float/2addr v7, v6

    mul-float v7, v7, v8

    add-float/2addr v4, v7

    aput v4, v3, v1

    .line 173
    iget-object v3, p0, Lru/okei/timetable/ui/ShareIconView;->offsetX:[F

    aget v4, v3, v2

    iget-object v7, p0, Lru/okei/timetable/ui/ShareIconView;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    sub-float/2addr v7, v6

    mul-float v7, v7, v8

    add-float/2addr v4, v7

    aput v4, v3, v2

    .line 174
    iget-object v3, p0, Lru/okei/timetable/ui/ShareIconView;->offsetY:[F

    aget v4, v3, v2

    iget-object v7, p0, Lru/okei/timetable/ui/ShareIconView;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    sub-float/2addr v7, v6

    mul-float v7, v7, v8

    add-float/2addr v4, v7

    aput v4, v3, v2

    .line 176
    iget-object v3, p0, Lru/okei/timetable/ui/ShareIconView;->delay:[F

    aput v0, v3, v1

    const v0, 0x3db851ec    # 0.09f

    .line 177
    aput v0, v3, v2

    const v0, 0x3e3851ec    # 0.18f

    .line 178
    aput v0, v3, v5

    return-void
.end method

.method private shuffle([I)V
    .locals 4

    .line 136
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 137
    iget-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->random:Ljava/util/Random;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 138
    aget v2, p1, v0

    .line 139
    aget v3, p1, v1

    aput v3, p1, v0

    .line 140
    aput v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static smooth(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    mul-float v0, p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float p0, p0, v1

    const/high16 v1, 0x40400000    # 3.0f

    sub-float/2addr v1, p0

    mul-float v0, v0, v1

    return v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 277
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 278
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v8, p0

    .line 199
    iget v0, v8, Lru/okei/timetable/ui/ShareIconView;->appearT:F

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/ShareIconView;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/ShareIconView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f3851ec    # 0.72f

    mul-float v0, v0, v1

    .line 203
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/ShareIconView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v1, v9

    .line 204
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/ShareIconView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    div-float/2addr v2, v9

    const/high16 v3, 0x41c00000    # 24.0f

    div-float v10, v0, v3

    .line 208
    iget v0, v8, Lru/okei/timetable/ui/ShareIconView;->pressStep:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    if-ltz v0, :cond_2

    int-to-float v0, v0

    const/high16 v4, 0x41d00000    # 26.0f

    div-float/2addr v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    sub-float v0, v3, v0

    :goto_0
    mul-float v0, v0, v9

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v12, 0x3

    new-array v13, v12, [F

    new-array v14, v12, [F

    const/4 v15, 0x0

    const/4 v4, 0x0

    :goto_2
    const/16 v16, 0x1

    if-ge v4, v12, :cond_4

    .line 216
    iget-object v5, v8, Lru/okei/timetable/ui/ShareIconView;->delay:[F

    aget v5, v5, v4

    sub-float v6, v3, v5

    sub-float v5, v0, v5

    cmpl-float v7, v6, v11

    if-lez v7, :cond_3

    goto :goto_3

    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_3
    div-float/2addr v5, v6

    .line 217
    invoke-static {v5}, Lru/okei/timetable/ui/ShareIconView;->smooth(F)F

    move-result v5

    .line 218
    sget-object v6, Lru/okei/timetable/ui/ShareIconView;->NODES:[[F

    aget-object v6, v6, v4

    aget v7, v6, v15

    iget-object v3, v8, Lru/okei/timetable/ui/ShareIconView;->offsetX:[F

    aget v3, v3, v4

    mul-float v3, v3, v5

    add-float/2addr v7, v3

    mul-float v7, v7, v10

    add-float/2addr v7, v1

    aput v7, v13, v4

    .line 219
    aget v3, v6, v16

    iget-object v6, v8, Lru/okei/timetable/ui/ShareIconView;->offsetY:[F

    aget v6, v6, v4

    mul-float v6, v6, v5

    add-float/2addr v3, v6

    mul-float v3, v3, v10

    add-float/2addr v3, v2

    aput v3, v14, v4

    add-int/lit8 v4, v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    .line 222
    :cond_4
    iget-object v0, v8, Lru/okei/timetable/ui/ShareIconView;->paint:Landroid/graphics/Paint;

    iget v1, v8, Lru/okei/timetable/ui/ShareIconView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-object v0, v8, Lru/okei/timetable/ui/ShareIconView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 225
    iget v0, v8, Lru/okei/timetable/ui/ShareIconView;->appearT:F

    invoke-static {v0}, Lru/okei/timetable/ui/ShareIconView;->smooth(F)F

    move-result v17

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v12, :cond_6

    .line 227
    iget-object v1, v8, Lru/okei/timetable/ui/ShareIconView;->dotOrder:[I

    invoke-static {v1, v0}, Lru/okei/timetable/ui/ShareIconView;->indexOf([II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e0f5c29    # 0.14f

    mul-float v1, v1, v2

    sub-float v1, v17, v1

    const v2, 0x3e75c28f    # 0.24f

    div-float/2addr v1, v2

    .line 229
    invoke-static {v1}, Lru/okei/timetable/ui/ShareIconView;->smooth(F)F

    move-result v1

    cmpl-float v2, v1, v11

    if-lez v2, :cond_5

    .line 231
    aget v2, v13, v0

    aget v3, v14, v0

    const v4, 0x40866666    # 4.2f

    mul-float v4, v4, v10

    mul-float v4, v4, v1

    move-object/from16 v7, p1

    invoke-direct {v8, v7, v2, v3, v4}, Lru/okei/timetable/ui/ShareIconView;->dot(Landroid/graphics/Canvas;FFF)V

    goto :goto_5

    :cond_5
    move-object/from16 v7, p1

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v7, p1

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v12, :cond_8

    .line 236
    iget-object v0, v8, Lru/okei/timetable/ui/ShareIconView;->linkOrder:[I

    invoke-static {v0, v6}, Lru/okei/timetable/ui/ShareIconView;->indexOf([II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3df5c28f    # 0.12f

    mul-float v0, v0, v1

    const v1, 0x3ed70a3d    # 0.42f

    add-float/2addr v0, v1

    sub-float v0, v17, v0

    const v1, 0x3ea3d70a    # 0.32f

    div-float/2addr v0, v1

    .line 238
    invoke-static {v0}, Lru/okei/timetable/ui/ShareIconView;->smooth(F)F

    move-result v18

    cmpg-float v0, v18, v11

    if-gtz v0, :cond_7

    move/from16 v20, v6

    goto :goto_7

    .line 242
    :cond_7
    sget-object v0, Lru/okei/timetable/ui/ShareIconView;->LINKS:[[I

    aget-object v0, v0, v6

    aget v1, v0, v15

    .line 243
    aget v0, v0, v16

    .line 244
    aget v2, v13, v1

    aget v3, v14, v1

    aget v4, v13, v0

    aget v5, v14, v0

    mul-float v19, v10, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v20, v6

    move/from16 v6, v19

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lru/okei/timetable/ui/ShareIconView;->link(Landroid/graphics/Canvas;FFFFFF)V

    :goto_7
    add-int/lit8 v6, v20, 0x1

    move-object/from16 v7, p1

    goto :goto_6

    :cond_8
    return-void
.end method

.method public playAppear()V
    .locals 4

    .line 114
    iget-boolean v0, p0, Lru/okei/timetable/ui/ShareIconView;->appearPlayed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lru/okei/timetable/ui/ShareIconView;->appearPlayed:Z

    .line 118
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->appearRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView;->dotOrder:[I

    invoke-direct {p0, v0}, Lru/okei/timetable/ui/ShareIconView;->shuffle([I)V

    .line 120
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView;->linkOrder:[I

    invoke-direct {p0, v0}, Lru/okei/timetable/ui/ShareIconView;->shuffle([I)V

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lru/okei/timetable/ui/ShareIconView;->appearStep:I

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lru/okei/timetable/ui/ShareIconView;->appearT:F

    .line 123
    invoke-virtual {p0}, Lru/okei/timetable/ui/ShareIconView;->invalidate()V

    .line 124
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->appearRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public playPress()V
    .locals 2

    .line 128
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->pressRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    invoke-direct {p0}, Lru/okei/timetable/ui/ShareIconView;->scatter()V

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lru/okei/timetable/ui/ShareIconView;->pressStep:I

    .line 131
    invoke-virtual {p0}, Lru/okei/timetable/ui/ShareIconView;->invalidate()V

    .line 132
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->pressRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reset()V
    .locals 2

    .line 103
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->appearRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->pressRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lru/okei/timetable/ui/ShareIconView;->appearStep:I

    const/4 v1, 0x0

    .line 106
    iput v1, p0, Lru/okei/timetable/ui/ShareIconView;->appearT:F

    .line 107
    iput-boolean v0, p0, Lru/okei/timetable/ui/ShareIconView;->appearPlayed:Z

    const/4 v0, -0x1

    .line 108
    iput v0, p0, Lru/okei/timetable/ui/ShareIconView;->pressStep:I

    .line 109
    invoke-direct {p0}, Lru/okei/timetable/ui/ShareIconView;->clearOffsets()V

    .line 110
    invoke-virtual {p0}, Lru/okei/timetable/ui/ShareIconView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 87
    iput p1, p0, Lru/okei/timetable/ui/ShareIconView;->color:I

    .line 88
    invoke-virtual {p0}, Lru/okei/timetable/ui/ShareIconView;->invalidate()V

    return-void
.end method

.method public showFinal()V
    .locals 2

    .line 92
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->appearRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/ui/ShareIconView;->pressRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0x16

    .line 94
    iput v0, p0, Lru/okei/timetable/ui/ShareIconView;->appearStep:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 95
    iput v0, p0, Lru/okei/timetable/ui/ShareIconView;->appearT:F

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lru/okei/timetable/ui/ShareIconView;->appearPlayed:Z

    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lru/okei/timetable/ui/ShareIconView;->pressStep:I

    .line 98
    invoke-direct {p0}, Lru/okei/timetable/ui/ShareIconView;->clearOffsets()V

    .line 99
    invoke-virtual {p0}, Lru/okei/timetable/ui/ShareIconView;->invalidate()V

    return-void
.end method
