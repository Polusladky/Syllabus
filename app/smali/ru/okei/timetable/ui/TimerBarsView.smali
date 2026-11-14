.class public Lru/okei/timetable/ui/TimerBarsView;
.super Landroid/view/View;
.source "TimerBarsView.java"


# static fields
.field private static final BLOCK_COLORS:[I

.field private static final COLUMNS:I = 0x22

.field private static final FRAME_MS:J = 0x21L

.field private static final MAX_STEPS:I = 0x14

.field private static final MORPH_MS:J = 0x1ccL


# instance fields
.field private beat:F

.field private dying:Z

.field private face:Landroid/graphics/Typeface;

.field private flash:F

.field private final frame:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private info:Ljava/lang/String;

.field private ink:I

.field private final level:[F

.field private morphFrom:Ljava/lang/String;

.field private morphStart:J

.field private morphing:Z

.field private final oval:Landroid/graphics/RectF;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private rhythm:Z

.field private running:Z

.field private spin:F

.field private final target:[F

.field private final textPaint:Landroid/graphics/Paint;

.field private time:Ljava/lang/String;

.field private final velocity:[F


# direct methods
.method static bridge synthetic -$$Nest$fgetbeat(Lru/okei/timetable/ui/TimerBarsView;)F
    .locals 0

    iget p0, p0, Lru/okei/timetable/ui/TimerBarsView;->beat:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdying(Lru/okei/timetable/ui/TimerBarsView;)Z
    .locals 0

    iget-boolean p0, p0, Lru/okei/timetable/ui/TimerBarsView;->dying:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetflash(Lru/okei/timetable/ui/TimerBarsView;)F
    .locals 0

    iget p0, p0, Lru/okei/timetable/ui/TimerBarsView;->flash:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lru/okei/timetable/ui/TimerBarsView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/ui/TimerBarsView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlevel(Lru/okei/timetable/ui/TimerBarsView;)[F
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/ui/TimerBarsView;->level:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmorphStart(Lru/okei/timetable/ui/TimerBarsView;)J
    .locals 2

    iget-wide v0, p0, Lru/okei/timetable/ui/TimerBarsView;->morphStart:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmorphing(Lru/okei/timetable/ui/TimerBarsView;)Z
    .locals 0

    iget-boolean p0, p0, Lru/okei/timetable/ui/TimerBarsView;->morphing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrhythm(Lru/okei/timetable/ui/TimerBarsView;)Z
    .locals 0

    iget-boolean p0, p0, Lru/okei/timetable/ui/TimerBarsView;->rhythm:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetspin(Lru/okei/timetable/ui/TimerBarsView;)F
    .locals 0

    iget p0, p0, Lru/okei/timetable/ui/TimerBarsView;->spin:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettarget(Lru/okei/timetable/ui/TimerBarsView;)[F
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/ui/TimerBarsView;->target:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvelocity(Lru/okei/timetable/ui/TimerBarsView;)[F
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/ui/TimerBarsView;->velocity:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbeat(Lru/okei/timetable/ui/TimerBarsView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/TimerBarsView;->beat:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputflash(Lru/okei/timetable/ui/TimerBarsView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/TimerBarsView;->flash:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmorphing(Lru/okei/timetable/ui/TimerBarsView;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/ui/TimerBarsView;->morphing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrunning(Lru/okei/timetable/ui/TimerBarsView;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/ui/TimerBarsView;->running:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputspin(Lru/okei/timetable/ui/TimerBarsView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/TimerBarsView;->spin:F

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const v0, -0x777778

    const v1, -0xa3a3a4

    const/4 v2, -0x1

    const v3, -0x1b1b1c

    const v4, -0x49494a

    .line 28
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lru/okei/timetable/ui/TimerBarsView;->BLOCK_COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    .line 34
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->handler:Landroid/os/Handler;

    const/16 p1, 0x22

    new-array v0, p1, [F

    .line 35
    iput-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->level:[F

    new-array v0, p1, [F

    .line 36
    iput-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->target:[F

    new-array p1, p1, [F

    .line 37
    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->velocity:[F

    .line 38
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->path:Landroid/graphics/Path;

    .line 39
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->oval:Landroid/graphics/RectF;

    const-string p1, ""

    .line 41
    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->time:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->morphFrom:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->info:Ljava/lang/String;

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lru/okei/timetable/ui/TimerBarsView;->ink:I

    .line 177
    new-instance p1, Lru/okei/timetable/ui/TimerBarsView$1;

    invoke-direct {p1, p0}, Lru/okei/timetable/ui/TimerBarsView$1;-><init>(Lru/okei/timetable/ui/TimerBarsView;)V

    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->frame:Ljava/lang/Runnable;

    .line 57
    invoke-direct {p0}, Lru/okei/timetable/ui/TimerBarsView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    .line 34
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->handler:Landroid/os/Handler;

    const/16 p1, 0x22

    new-array p2, p1, [F

    .line 35
    iput-object p2, p0, Lru/okei/timetable/ui/TimerBarsView;->level:[F

    new-array p2, p1, [F

    .line 36
    iput-object p2, p0, Lru/okei/timetable/ui/TimerBarsView;->target:[F

    new-array p1, p1, [F

    .line 37
    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->velocity:[F

    .line 38
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->path:Landroid/graphics/Path;

    .line 39
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->oval:Landroid/graphics/RectF;

    const-string p1, ""

    .line 41
    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->time:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->morphFrom:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->info:Ljava/lang/String;

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lru/okei/timetable/ui/TimerBarsView;->ink:I

    .line 177
    new-instance p1, Lru/okei/timetable/ui/TimerBarsView$1;

    invoke-direct {p1, p0}, Lru/okei/timetable/ui/TimerBarsView$1;-><init>(Lru/okei/timetable/ui/TimerBarsView;)V

    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->frame:Ljava/lang/Runnable;

    .line 62
    invoke-direct {p0}, Lru/okei/timetable/ui/TimerBarsView;->init()V

    return-void
.end method

.method private density()F
    .locals 1

    .line 241
    invoke-virtual {p0}, Lru/okei/timetable/ui/TimerBarsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private dp(F)I
    .locals 1

    .line 237
    invoke-virtual {p0}, Lru/okei/timetable/ui/TimerBarsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private drawColumn(Landroid/graphics/Canvas;FFFDFFFI)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    const/high16 v3, 0x3f800000    # 1.0f

    .line 297
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x2

    add-int/2addr v3, v4

    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v5, v1, v5

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    .line 301
    :goto_0
    iget v3, v0, Lru/okei/timetable/ui/TimerBarsView;->beat:F

    iget v5, v0, Lru/okei/timetable/ui/TimerBarsView;->flash:F

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v5, 0x41b00000    # 22.0f

    mul-float v3, v3, v5

    float-to-int v3, v3

    const/16 v5, 0x12

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit16 v3, v3, 0xe8

    const/16 v5, 0xff

    .line 302
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 303
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 306
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v13, p1

    .line 307
    invoke-virtual {v13, v6}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v6, 0x0

    :goto_1
    const/high16 v7, 0x40000000    # 2.0f

    if-ge v6, v4, :cond_1

    .line 310
    sget-object v8, Lru/okei/timetable/ui/TimerBarsView;->BLOCK_COLORS:[I

    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    array-length v10, v8

    mul-int v10, v10, v6

    div-int/2addr v10, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 311
    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    add-int v9, v9, p10

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    aget v8, v8, v9

    .line 312
    iget-object v9, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    iget-object v8, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v8, v6

    mul-float v8, v8, p9

    add-float v8, p4, v8

    div-float v11, v2, v7

    sub-float v9, v8, v11

    neg-float v10, v2

    div-float/2addr v10, v7

    add-float v12, v8, v11

    .line 315
    iget-object v14, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v8, v9

    move v9, v10

    move v10, v12

    move-object v12, v14

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const v3, 0x3f0ccccd    # 0.55f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    int-to-float v1, v4

    mul-float v1, v1, p9

    add-float v1, p4, v1

    const v3, 0x3faccccd    # 1.35f

    mul-float v2, v2, v3

    .line 321
    iget-object v3, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    iget-object v3, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    div-float v3, v2, v7

    sub-float v4, v1, v3

    neg-float v6, v2

    div-float/2addr v6, v7

    add-float v7, v1, v3

    .line 323
    iget-object v8, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    move-object/from16 p2, p1

    move/from16 p3, v4

    move/from16 p4, v6

    move/from16 p5, v7

    move/from16 p6, v3

    move-object/from16 p7, v8

    invoke-virtual/range {p2 .. p7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 324
    iget-object v4, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    const/16 v7, 0x5a

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    sub-float v4, v1, v2

    add-float/2addr v1, v2

    .line 325
    iget-object v2, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    move/from16 p3, v4

    move/from16 p5, v1

    move-object/from16 p7, v2

    invoke-virtual/range {p2 .. p7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 327
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 328
    iget-object v1, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private drawColumns(Landroid/graphics/Canvas;FFF)V
    .locals 21

    move-object/from16 v11, p0

    .line 269
    iget-boolean v0, v11, Lru/okei/timetable/ui/TimerBarsView;->rhythm:Z

    const v12, 0x3ca3d70a    # 0.02f

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, v11, Lru/okei/timetable/ui/TimerBarsView;->level:[F

    aget v0, v0, v1

    cmpg-float v0, v0, v12

    if-gtz v0, :cond_0

    iget-boolean v0, v11, Lru/okei/timetable/ui/TimerBarsView;->dying:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x40200000    # 2.5f

    .line 272
    invoke-direct {v11, v0}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3d1374bc    # 0.036f

    mul-float v2, v2, p4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 273
    invoke-direct/range {p0 .. p0}, Lru/okei/timetable/ui/TimerBarsView;->density()F

    move-result v2

    mul-float v2, v2, v0

    add-float v14, v13, v2

    const/high16 v0, 0x40000000    # 2.0f

    .line 274
    invoke-direct {v11, v0}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v15, p4, v0

    .line 275
    iget-object v0, v11, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v10, 0x0

    :goto_0
    const/16 v0, 0x22

    if-ge v10, v0, :cond_2

    .line 278
    iget-object v0, v11, Lru/okei/timetable/ui/TimerBarsView;->level:[F

    aget v16, v0, v10

    cmpg-float v0, v16, v12

    if-gtz v0, :cond_1

    .line 279
    iget-boolean v0, v11, Lru/okei/timetable/ui/TimerBarsView;->rhythm:Z

    if-nez v0, :cond_1

    move/from16 v20, v10

    goto :goto_1

    :cond_1
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v2, v10

    mul-double v2, v2, v0

    const-wide/high16 v0, 0x4041000000000000L    # 34.0

    div-double/2addr v2, v0

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v17, v2, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v15

    move-wide/from16 v5, v17

    move/from16 v7, v16

    move v8, v13

    move v9, v14

    move/from16 v20, v10

    move/from16 v10, v19

    .line 283
    invoke-direct/range {v0 .. v10}, Lru/okei/timetable/ui/TimerBarsView;->drawColumn(Landroid/graphics/Canvas;FFFDFFFI)V

    const-wide v0, 0x3fb7a78322220c53L    # 0.09239978392911156

    add-double v5, v17, v0

    const v0, 0x3f59999a    # 0.85f

    mul-float v7, v16, v0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 284
    invoke-direct/range {v0 .. v10}, Lru/okei/timetable/ui/TimerBarsView;->drawColumn(Landroid/graphics/Canvas;FFFDFFFI)V

    :goto_1
    add-int/lit8 v10, v20, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawInfo(Landroid/graphics/Canvas;FFF)V
    .locals 3

    .line 420
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->face:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->info:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView;->face:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 424
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3db43958    # 0.088f

    mul-float v2, v2, p4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 425
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    const v1, -0x27000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->info:Ljava/lang/String;

    const v1, 0x3e99999a    # 0.3f

    mul-float p4, p4, v1

    add-float/2addr p3, p4

    iget-object p4, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawInterior(Landroid/graphics/Canvas;FFF)V
    .locals 2

    .line 367
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 368
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x41100000    # 9.0f

    .line 369
    invoke-direct {p0, v0}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p4, v0

    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRing(Landroid/graphics/Canvas;FFF)V
    .locals 12

    move-object v0, p0

    move-object v7, p1

    move v8, p2

    move v1, p3

    move/from16 v2, p4

    .line 332
    iget v3, v0, Lru/okei/timetable/ui/TimerBarsView;->beat:F

    iget v4, v0, Lru/okei/timetable/ui/TimerBarsView;->flash:F

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v4, v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 333
    iget-object v4, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v4, 0x4

    :goto_0
    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 336
    iget-object v5, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p0, v6}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const v9, 0x3fe66666    # 1.8f

    invoke-direct {p0, v9}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v9

    mul-int v9, v9, v4

    int-to-float v9, v9

    const v10, 0x3ed70a3d    # 0.42f

    add-float/2addr v10, v3

    mul-float v9, v9, v10

    add-float/2addr v6, v9

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v5, 0x41d00000    # 26.0f

    mul-float v5, v5, v3

    const/high16 v6, 0x41400000    # 12.0f

    add-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v5, v4

    .line 338
    iget-object v6, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    const/4 v9, 0x3

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    iget v9, v0, Lru/okei/timetable/ui/TimerBarsView;->ink:I

    const v10, 0xffffff

    and-int/2addr v9, v10

    or-int/2addr v5, v9

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v5, 0x3fc00000    # 1.5f

    .line 339
    invoke-direct {p0, v5}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v5

    mul-int v5, v5, v4

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget-object v6, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 341
    :cond_0
    iget-object v4, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    const v5, 0x408ccccd    # 4.4f

    invoke-direct {p0, v5}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x40266666    # 2.6f

    invoke-direct {p0, v6}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v3

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 342
    iget-object v4, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    iget v5, v0, Lru/okei/timetable/ui/TimerBarsView;->ink:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 343
    iget-object v4, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 344
    iget-object v4, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    const v5, 0x3f99999a    # 1.2f

    invoke-direct {p0, v5}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 345
    iget-object v4, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    const v5, -0x66000001

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    const v4, 0x404ccccd    # 3.2f

    .line 346
    invoke-direct {p0, v4}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget-object v6, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 347
    iget-object v5, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    const v6, 0x3fb33333    # 1.4f

    invoke-direct {p0, v6}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 348
    iget-object v5, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v5, 0x40400000    # 3.0f

    .line 349
    invoke-direct {p0, v5}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget-object v9, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v5, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 351
    iget-object v5, v0, Lru/okei/timetable/ui/TimerBarsView;->oval:Landroid/graphics/RectF;

    sub-float v9, v8, v2

    sub-float v10, v1, v2

    add-float v11, v8, v2

    add-float/2addr v1, v2

    invoke-virtual {v5, v9, v10, v11, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 352
    iget-boolean v1, v0, Lru/okei/timetable/ui/TimerBarsView;->rhythm:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x43280000    # 168.0f

    iget v2, v0, Lru/okei/timetable/ui/TimerBarsView;->spin:F

    add-float/2addr v2, v1

    move v9, v2

    goto :goto_1

    :cond_1
    const/high16 v2, 0x43200000    # 160.0f

    const/high16 v9, 0x43200000    # 160.0f

    .line 353
    :goto_1
    iget-object v1, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, v4}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v11, 0x40000000    # 2.0f

    invoke-direct {p0, v11}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 354
    iget-object v1, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    iget-object v2, v0, Lru/okei/timetable/ui/TimerBarsView;->oval:Landroid/graphics/RectF;

    const/high16 v4, 0x41d00000    # 26.0f

    const/4 v5, 0x0

    iget-object v6, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 356
    iget-object v1, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-direct {p0, v2}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 357
    iget-object v1, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    const v2, 0x33ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    iget-object v2, v0, Lru/okei/timetable/ui/TimerBarsView;->oval:Landroid/graphics/RectF;

    const/high16 v1, 0x40800000    # 4.0f

    sub-float v3, v9, v1

    const/high16 v4, 0x42080000    # 34.0f

    iget-object v6, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 360
    iget-object v1, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 361
    iget-object v1, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lru/okei/timetable/ui/TimerBarsView;->ink:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    invoke-direct {p0, v11}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v8, v1

    invoke-direct {p0, v11}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v3, v10, v1

    invoke-direct {p0, v11}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v4, v8, v1

    const/high16 v1, 0x41500000    # 13.0f

    .line 363
    invoke-direct {p0, v1}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v5, v10, v1

    iget-object v6, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 362
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTicks(Landroid/graphics/Canvas;FFF)V
    .locals 13

    move-object v0, p0

    .line 374
    iget-object v1, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x3c

    if-ge v2, v3, :cond_4

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v5, v2

    mul-double v5, v5, v3

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    div-double/2addr v5, v3

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v5, v3

    .line 377
    rem-int/lit8 v3, v2, 0x5

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    const/high16 v4, 0x41700000    # 15.0f

    goto :goto_2

    :cond_1
    const/high16 v4, 0x41100000    # 9.0f

    .line 378
    :goto_2
    invoke-direct {p0, v4}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p4, v4

    const/high16 v7, 0x40800000    # 4.0f

    .line 379
    invoke-direct {p0, v7}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, p4, v7

    if-eqz v3, :cond_2

    const v8, 0x400ccccd    # 2.2f

    goto :goto_3

    :cond_2
    const v8, 0x3f8ccccd    # 1.1f

    .line 380
    :goto_3
    invoke-direct {p0, v8}, Lru/okei/timetable/ui/TimerBarsView;->dp(F)I

    move-result v8

    int-to-float v8, v8

    .line 381
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 382
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    if-eqz v3, :cond_3

    const/16 v3, 0xff

    goto :goto_4

    :cond_3
    const/16 v3, 0x96

    .line 384
    :goto_4
    iget-object v6, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    shl-int/lit8 v3, v3, 0x18

    iget v10, v0, Lru/okei/timetable/ui/TimerBarsView;->ink:I

    const v11, 0xffffff

    and-int/2addr v10, v11

    or-int/2addr v3, v10

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    iget-object v3, v0, Lru/okei/timetable/ui/TimerBarsView;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 386
    iget-object v3, v0, Lru/okei/timetable/ui/TimerBarsView;->path:Landroid/graphics/Path;

    mul-float v6, v9, v4

    add-float/2addr v6, p2

    mul-float v10, v5, v8

    sub-float v11, v6, v10

    mul-float v4, v4, v5

    add-float v4, p3, v4

    mul-float v8, v8, v9

    add-float v12, v4, v8

    invoke-virtual {v3, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 387
    iget-object v3, v0, Lru/okei/timetable/ui/TimerBarsView;->path:Landroid/graphics/Path;

    mul-float v9, v9, v7

    add-float/2addr v9, p2

    sub-float v11, v9, v10

    mul-float v5, v5, v7

    add-float v5, p3, v5

    add-float v7, v5, v8

    invoke-virtual {v3, v11, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 388
    iget-object v3, v0, Lru/okei/timetable/ui/TimerBarsView;->path:Landroid/graphics/Path;

    add-float/2addr v9, v10

    sub-float/2addr v5, v8

    invoke-virtual {v3, v9, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 389
    iget-object v3, v0, Lru/okei/timetable/ui/TimerBarsView;->path:Landroid/graphics/Path;

    add-float/2addr v6, v10

    sub-float/2addr v4, v8

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 390
    iget-object v3, v0, Lru/okei/timetable/ui/TimerBarsView;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 391
    iget-object v3, v0, Lru/okei/timetable/ui/TimerBarsView;->path:Landroid/graphics/Path;

    iget-object v4, v0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private drawTime(Landroid/graphics/Canvas;FFF)V
    .locals 7

    .line 396
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->face:Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->time:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 399
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView;->face:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 400
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    const v1, 0x3f0f5c29    # 0.56f

    mul-float v1, v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 401
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 402
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    sub-float/2addr p3, v1

    const v1, 0x3ca3d70a    # 0.02f

    mul-float v1, v1, p4

    sub-float/2addr p3, v1

    .line 404
    iget-boolean v1, p0, Lru/okei/timetable/ui/TimerBarsView;->morphing:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView;->morphFrom:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lru/okei/timetable/ui/TimerBarsView;->morphStart:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x43e60000    # 460.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v3, v1, v1

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v1, v1, v0

    sub-float/2addr v4, v1

    mul-float v3, v3, v4

    const v0, 0x3dcccccd    # 0.1f

    mul-float p4, p4, v0

    .line 408
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    sub-float/2addr v2, v3

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v4, v2, v1

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x18

    iget v5, p0, Lru/okei/timetable/ui/TimerBarsView;->ink:I

    const v6, 0xffffff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 409
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->morphFrom:Ljava/lang/String;

    mul-float v4, p4, v3

    sub-float v4, p3, v4

    iget-object v5, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    mul-float v3, v3, v1

    float-to-int v0, v3

    .line 411
    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    shl-int/lit8 v0, v0, 0x18

    iget v3, p0, Lru/okei/timetable/ui/TimerBarsView;->ink:I

    and-int/2addr v3, v6

    or-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->time:Ljava/lang/String;

    mul-float p4, p4, v2

    add-float/2addr p3, p4

    iget-object p4, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    .line 415
    :cond_1
    iget-object p4, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    iget v0, p0, Lru/okei/timetable/ui/TimerBarsView;->ink:I

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    iget-object p4, p0, Lru/okei/timetable/ui/TimerBarsView;->time:Ljava/lang/String;

    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 66
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 68
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 70
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private wake()V
    .locals 4

    .line 170
    iget-boolean v0, p0, Lru/okei/timetable/ui/TimerBarsView;->running:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lru/okei/timetable/ui/TimerBarsView;->running:Z

    .line 172
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/ui/TimerBarsView;->frame:Ljava/lang/Runnable;

    const-wide/16 v2, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    :cond_0
    invoke-virtual {p0}, Lru/okei/timetable/ui/TimerBarsView;->invalidate()V

    return-void
.end method


# virtual methods
.method public beat(F)V
    .locals 2

    .line 153
    iget v0, p0, Lru/okei/timetable/ui/TimerBarsView;->beat:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lru/okei/timetable/ui/TimerBarsView;->beat:F

    const/4 p1, 0x0

    .line 154
    iput-boolean p1, p0, Lru/okei/timetable/ui/TimerBarsView;->dying:Z

    .line 155
    invoke-direct {p0}, Lru/okei/timetable/ui/TimerBarsView;->wake()V

    return-void
.end method

.method public configure(Ljava/lang/String;Landroid/graphics/Typeface;F)V
    .locals 0

    const-string p3, ""

    .line 89
    invoke-virtual {p0, p1, p3, p2}, Lru/okei/timetable/ui/TimerBarsView;->configure(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public configure(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 1

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 79
    :cond_0
    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->time:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v0

    .line 80
    :cond_1
    iput-object p2, p0, Lru/okei/timetable/ui/TimerBarsView;->info:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lru/okei/timetable/ui/TimerBarsView;->face:Landroid/graphics/Typeface;

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lru/okei/timetable/ui/TimerBarsView;->morphing:Z

    .line 83
    iput-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->morphFrom:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lru/okei/timetable/ui/TimerBarsView;->invalidate()V

    return-void
.end method

.method public flash(F)V
    .locals 2

    .line 159
    iget v0, p0, Lru/okei/timetable/ui/TimerBarsView;->flash:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lru/okei/timetable/ui/TimerBarsView;->flash:F

    .line 160
    invoke-direct {p0}, Lru/okei/timetable/ui/TimerBarsView;->wake()V

    return-void
.end method

.method public morphTo(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 95
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->time:Ljava/lang/String;

    iput-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->morphFrom:Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->time:Ljava/lang/String;

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lru/okei/timetable/ui/TimerBarsView;->morphStart:J

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lru/okei/timetable/ui/TimerBarsView;->morphing:Z

    .line 105
    invoke-direct {p0}, Lru/okei/timetable/ui/TimerBarsView;->wake()V

    return-void

    .line 96
    :cond_2
    :goto_0
    iput-object p1, p0, Lru/okei/timetable/ui/TimerBarsView;->time:Ljava/lang/String;

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lru/okei/timetable/ui/TimerBarsView;->morphing:Z

    .line 98
    invoke-virtual {p0}, Lru/okei/timetable/ui/TimerBarsView;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 231
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lru/okei/timetable/ui/TimerBarsView;->running:Z

    .line 233
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 246
    invoke-virtual {p0}, Lru/okei/timetable/ui/TimerBarsView;->getWidth()I

    move-result v0

    .line 247
    invoke-virtual {p0}, Lru/okei/timetable/ui/TimerBarsView;->getHeight()I

    move-result v1

    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    int-to-float v1, v1

    const v3, 0x3f0f5c29    # 0.56f

    mul-float v3, v3, v1

    const v4, 0x3ed2f1aa    # 0.412f

    mul-float v0, v0, v4

    const v4, 0x3eb5c28f    # 0.355f

    mul-float v1, v1, v4

    .line 253
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 255
    invoke-direct {p0, p1, v2, v3, v0}, Lru/okei/timetable/ui/TimerBarsView;->drawColumns(Landroid/graphics/Canvas;FFF)V

    .line 256
    invoke-direct {p0, p1, v2, v3, v0}, Lru/okei/timetable/ui/TimerBarsView;->drawRing(Landroid/graphics/Canvas;FFF)V

    .line 257
    invoke-direct {p0, p1, v2, v3, v0}, Lru/okei/timetable/ui/TimerBarsView;->drawInterior(Landroid/graphics/Canvas;FFF)V

    .line 258
    invoke-direct {p0, p1, v2, v3, v0}, Lru/okei/timetable/ui/TimerBarsView;->drawTicks(Landroid/graphics/Canvas;FFF)V

    .line 259
    invoke-direct {p0, p1, v2, v3, v0}, Lru/okei/timetable/ui/TimerBarsView;->drawTime(Landroid/graphics/Canvas;FFF)V

    .line 260
    invoke-direct {p0, p1, v2, v3, v0}, Lru/okei/timetable/ui/TimerBarsView;->drawInfo(Landroid/graphics/Canvas;FFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public powerDown()V
    .locals 1

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lru/okei/timetable/ui/TimerBarsView;->dying:Z

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lru/okei/timetable/ui/TimerBarsView;->rhythm:Z

    .line 166
    invoke-direct {p0}, Lru/okei/timetable/ui/TimerBarsView;->wake()V

    return-void
.end method

.method public setBands([F)V
    .locals 8

    if-eqz p1, :cond_5

    .line 124
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 127
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x22

    if-ge v2, v3, :cond_2

    mul-int v4, v2, v0

    .line 129
    div-int/2addr v4, v3

    rem-int/2addr v4, v0

    .line 130
    aget v3, p1, v4

    const/16 v4, 0xb

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v2, v4, :cond_1

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float v3, v3, v4

    .line 132
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_1
    const/4 v4, 0x0

    .line 134
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v3, v3

    const-wide v6, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 135
    iget-object v4, p0, Lru/okei/timetable/ui/TimerBarsView;->target:[F

    const v6, 0x3e0f5c29    # 0.14f

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x1

    if-ge p1, v3, :cond_3

    add-int/lit8 v2, p1, 0x22

    sub-int/2addr v2, v0

    .line 139
    rem-int/2addr v2, v3

    add-int/lit8 v0, p1, 0x1

    .line 140
    rem-int/lit8 v4, v0, 0x22

    .line 141
    iget-object v5, p0, Lru/okei/timetable/ui/TimerBarsView;->target:[F

    aget v6, v5, p1

    aget v2, v5, v2

    aget v4, v5, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v4, 0x3f70a3d7    # 0.94f

    mul-float v2, v2, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v5, p1

    move p1, v0

    goto :goto_1

    :cond_3
    :goto_2
    const/16 p1, 0x11

    if-ge v0, p1, :cond_4

    rsub-int/lit8 p1, v0, 0x22

    .line 146
    iget-object v2, p0, Lru/okei/timetable/ui/TimerBarsView;->target:[F

    aget v3, v2, p1

    aget v4, v2, v0

    const v5, 0x3f59999a    # 0.85f

    mul-float v4, v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v2, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 148
    :cond_4
    iput-boolean v1, p0, Lru/okei/timetable/ui/TimerBarsView;->dying:Z

    .line 149
    invoke-direct {p0}, Lru/okei/timetable/ui/TimerBarsView;->wake()V

    :cond_5
    :goto_3
    return-void
.end method

.method public setInk(I)V
    .locals 0

    .line 74
    iput p1, p0, Lru/okei/timetable/ui/TimerBarsView;->ink:I

    .line 75
    invoke-virtual {p0}, Lru/okei/timetable/ui/TimerBarsView;->invalidate()V

    return-void
.end method

.method public setRhythm(Z)V
    .locals 2

    .line 109
    iget-boolean v0, p0, Lru/okei/timetable/ui/TimerBarsView;->rhythm:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 112
    :cond_0
    iput-boolean p1, p0, Lru/okei/timetable/ui/TimerBarsView;->rhythm:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x22

    if-ge p1, v0, :cond_1

    .line 115
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->level:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 116
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->target:[F

    aput v1, v0, p1

    .line 117
    iget-object v0, p0, Lru/okei/timetable/ui/TimerBarsView;->velocity:[F

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lru/okei/timetable/ui/TimerBarsView;->invalidate()V

    return-void
.end method
