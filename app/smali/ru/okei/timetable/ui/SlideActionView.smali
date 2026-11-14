.class public Lru/okei/timetable/ui/SlideActionView;
.super Landroid/view/View;
.source "SlideActionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/ui/SlideActionView$Listener;,
        Lru/okei/timetable/ui/SlideActionView$BurstListener;
    }
.end annotation


# static fields
.field private static final BEAT_MS:J = 0x104L

.field private static final BLOCK_COLORS:[I

.field public static final ICON_CANCEL:I = 0x0

.field public static final ICON_SNOOZE:I = 0x1

.field private static final TRIGGER:F = 0.82f


# instance fields
.field private activePointer:I

.field private animating:Z

.field private announcedHalf:Z

.field private announcedReady:Z

.field private beatAt:J

.field private beatKick:F

.field private beatStrength:F

.field private burstListener:Lru/okei/timetable/ui/SlideActionView$BurstListener;

.field private downProgress:F

.field private downX:F

.field private dragging:Z

.field private fired:Z

.field private floatPhase:F

.field private final frame:Ljava/lang/Runnable;

.field private glowCurrent:F

.field private glowTarget:F

.field private icon:I

.field private iconText:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private labelSizePx:F

.field private listener:Lru/okei/timetable/ui/SlideActionView$Listener;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private progress:F

.field private final shape:Landroid/graphics/Path;

.field private slopPassed:Z

.field private snap:Landroid/animation/ValueAnimator;

.field private final textPaint:Landroid/graphics/Paint;

.field private toRight:Z

.field private touchSlop:F

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method static bridge synthetic -$$Nest$fgetbeatKick(Lru/okei/timetable/ui/SlideActionView;)F
    .locals 0

    iget p0, p0, Lru/okei/timetable/ui/SlideActionView;->beatKick:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdragging(Lru/okei/timetable/ui/SlideActionView;)Z
    .locals 0

    iget-boolean p0, p0, Lru/okei/timetable/ui/SlideActionView;->dragging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfloatPhase(Lru/okei/timetable/ui/SlideActionView;)F
    .locals 0

    iget p0, p0, Lru/okei/timetable/ui/SlideActionView;->floatPhase:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetglowCurrent(Lru/okei/timetable/ui/SlideActionView;)F
    .locals 0

    iget p0, p0, Lru/okei/timetable/ui/SlideActionView;->glowCurrent:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetglowTarget(Lru/okei/timetable/ui/SlideActionView;)F
    .locals 0

    iget p0, p0, Lru/okei/timetable/ui/SlideActionView;->glowTarget:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprogress(Lru/okei/timetable/ui/SlideActionView;)F
    .locals 0

    iget p0, p0, Lru/okei/timetable/ui/SlideActionView;->progress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputanimating(Lru/okei/timetable/ui/SlideActionView;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/ui/SlideActionView;->animating:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbeatKick(Lru/okei/timetable/ui/SlideActionView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/SlideActionView;->beatKick:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfloatPhase(Lru/okei/timetable/ui/SlideActionView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/SlideActionView;->floatPhase:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputglowCurrent(Lru/okei/timetable/ui/SlideActionView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/SlideActionView;->glowCurrent:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputglowTarget(Lru/okei/timetable/ui/SlideActionView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/SlideActionView;->glowTarget:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputprogress(Lru/okei/timetable/ui/SlideActionView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/SlideActionView;->progress:F

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const v0, -0x79797a

    const v1, -0xa5a5a6

    const/4 v2, -0x1

    const v3, -0x1d1d1e

    const v4, -0x4b4b4c

    .line 37
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lru/okei/timetable/ui/SlideActionView;->BLOCK_COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 77
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    .line 42
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    .line 43
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/SlideActionView;->shape:Landroid/graphics/Path;

    .line 44
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/SlideActionView;->path:Landroid/graphics/Path;

    const-string p1, ""

    .line 46
    iput-object p1, p0, Lru/okei/timetable/ui/SlideActionView;->label:Ljava/lang/String;

    const-string p1, "z z z"

    .line 47
    iput-object p1, p0, Lru/okei/timetable/ui/SlideActionView;->iconText:Ljava/lang/String;

    const/4 p1, 0x1

    .line 48
    iput p1, p0, Lru/okei/timetable/ui/SlideActionView;->icon:I

    .line 51
    iput-boolean p1, p0, Lru/okei/timetable/ui/SlideActionView;->toRight:Z

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lru/okei/timetable/ui/SlideActionView;->activePointer:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 64
    iput-wide v0, p0, Lru/okei/timetable/ui/SlideActionView;->beatAt:J

    .line 164
    new-instance p1, Lru/okei/timetable/ui/SlideActionView$1;

    invoke-direct {p1, p0}, Lru/okei/timetable/ui/SlideActionView$1;-><init>(Lru/okei/timetable/ui/SlideActionView;)V

    iput-object p1, p0, Lru/okei/timetable/ui/SlideActionView;->frame:Ljava/lang/Runnable;

    .line 78
    invoke-direct {p0}, Lru/okei/timetable/ui/SlideActionView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    .line 42
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    .line 43
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/SlideActionView;->shape:Landroid/graphics/Path;

    .line 44
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/SlideActionView;->path:Landroid/graphics/Path;

    const-string p1, ""

    .line 46
    iput-object p1, p0, Lru/okei/timetable/ui/SlideActionView;->label:Ljava/lang/String;

    const-string p1, "z z z"

    .line 47
    iput-object p1, p0, Lru/okei/timetable/ui/SlideActionView;->iconText:Ljava/lang/String;

    const/4 p1, 0x1

    .line 48
    iput p1, p0, Lru/okei/timetable/ui/SlideActionView;->icon:I

    .line 51
    iput-boolean p1, p0, Lru/okei/timetable/ui/SlideActionView;->toRight:Z

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lru/okei/timetable/ui/SlideActionView;->activePointer:I

    const-wide/high16 p1, -0x8000000000000000L

    .line 64
    iput-wide p1, p0, Lru/okei/timetable/ui/SlideActionView;->beatAt:J

    .line 164
    new-instance p1, Lru/okei/timetable/ui/SlideActionView$1;

    invoke-direct {p1, p0}, Lru/okei/timetable/ui/SlideActionView$1;-><init>(Lru/okei/timetable/ui/SlideActionView;)V

    iput-object p1, p0, Lru/okei/timetable/ui/SlideActionView;->frame:Ljava/lang/Runnable;

    .line 83
    invoke-direct {p0}, Lru/okei/timetable/ui/SlideActionView;->init()V

    return-void
.end method

.method private buildPanel(FFFLandroid/graphics/Path;)V
    .locals 4

    const v0, 0x3e851eb8    # 0.26f

    mul-float v0, v0, p2

    const/high16 v1, 0x41b00000    # 22.0f

    .line 363
    invoke-direct {p0, v1}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 364
    invoke-direct {p0}, Lru/okei/timetable/ui/SlideActionView;->gutter()F

    move-result v1

    add-float/2addr v1, p3

    .line 365
    invoke-direct {p0}, Lru/okei/timetable/ui/SlideActionView;->gutter()F

    move-result v2

    sub-float/2addr p1, v2

    sub-float/2addr p1, p3

    sub-float/2addr p2, p3

    .line 368
    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    add-float v2, v1, v0

    .line 369
    invoke-virtual {p4, v2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v3, p1, v0

    .line 370
    invoke-virtual {p4, v3, p3}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr p3, v0

    .line 371
    invoke-virtual {p4, p1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v0, p2, v0

    .line 372
    invoke-virtual {p4, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 373
    invoke-virtual {p4, v3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 374
    invoke-virtual {p4, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 375
    invoke-virtual {p4, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 376
    invoke-virtual {p4, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 377
    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private density()F
    .locals 1

    .line 202
    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private dp(F)I
    .locals 1

    .line 198
    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->getResources()Landroid/content/res/Resources;

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

.method private drawContent(Landroid/graphics/Canvas;IIFF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 485
    invoke-direct/range {p0 .. p0}, Lru/okei/timetable/ui/SlideActionView;->gutter()F

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {v0, v2}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float v8, v1, v3

    move/from16 v1, p2

    int-to-float v9, v1

    .line 486
    invoke-direct/range {p0 .. p0}, Lru/okei/timetable/ui/SlideActionView;->gutter()F

    move-result v1

    sub-float v1, v9, v1

    invoke-direct {v0, v2}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v10, v1, v2

    const/high16 v1, 0x41d00000    # 26.0f

    .line 487
    invoke-direct {v0, v1}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v8

    move/from16 v3, p3

    int-to-float v11, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v11, v12

    .line 491
    iget v3, v0, Lru/okei/timetable/ui/SlideActionView;->icon:I

    const/4 v4, 0x1

    const/4 v14, -0x1

    const/high16 v15, 0x3f800000    # 1.0f

    if-ne v3, v4, :cond_0

    .line 492
    iget-object v3, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lru/okei/timetable/ui/SlideActionView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 493
    iget-object v3, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 494
    iget-object v3, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const v4, 0x3e99999a    # 0.3f

    mul-float v4, v4, v11

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 495
    iget-object v1, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 496
    iget-object v1, v0, Lru/okei/timetable/ui/SlideActionView;->iconText:Ljava/lang/String;

    const v3, 0x3db851ec    # 0.09f

    mul-float v3, v3, v11

    add-float/2addr v3, v13

    iget-object v4, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41f00000    # 30.0f

    .line 498
    invoke-direct {v0, v1}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3eae147b    # 0.34f

    mul-float v3, v3, v11

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-direct {v0, v7, v2, v13, v1}, Lru/okei/timetable/ui/SlideActionView;->drawCross(Landroid/graphics/Canvas;FFF)V

    .line 502
    :goto_0
    iget-object v1, v0, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 503
    iget-object v1, v0, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    const v2, -0x33000001    # -1.3421772E8f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x42500000    # 52.0f

    .line 504
    invoke-direct {v0, v1}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v16, v8, v1

    const v1, 0x3e75c28f    # 0.24f

    mul-float v1, v1, v11

    sub-float v3, v13, v1

    const v2, 0x3fcccccd    # 1.6f

    .line 505
    invoke-direct {v0, v2}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v4, v16, v2

    add-float v5, v13, v1

    iget-object v6, v0, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 508
    iget-object v1, v0, Lru/okei/timetable/ui/SlideActionView;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/high16 v1, 0x41600000    # 14.0f

    .line 509
    invoke-direct {v0, v1}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v16, v16, v1

    const/high16 v1, 0x41900000    # 18.0f

    .line 510
    invoke-direct {v0, v1}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v10, v1

    sub-float v1, v10, v16

    .line 511
    invoke-static {v15, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 512
    iget-object v2, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lru/okei/timetable/ui/SlideActionView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 513
    iget-object v2, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    iget v3, v0, Lru/okei/timetable/ui/SlideActionView;->labelSizePx:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 514
    iget-object v2, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 515
    iget-object v2, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lru/okei/timetable/ui/SlideActionView;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    const v4, 0x3f8ccccd    # 1.1f

    div-float/2addr v1, v2

    .line 516
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 517
    :cond_1
    iget-object v1, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    const v2, 0x3f051eb8    # 0.52f

    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 518
    iget-object v1, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 519
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v1

    div-float/2addr v2, v12

    sub-float/2addr v13, v2

    add-float v16, v16, v10

    div-float v1, v16, v12

    .line 522
    iget-boolean v2, v0, Lru/okei/timetable/ui/SlideActionView;->toRight:Z

    const/high16 v4, 0x40c00000    # 6.0f

    if-eqz v2, :cond_2

    move v2, v8

    goto :goto_1

    :cond_2
    invoke-direct/range {p0 .. p0}, Lru/okei/timetable/ui/SlideActionView;->panelWidth()I

    move-result v2

    invoke-direct {v0, v4}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    add-float/2addr v2, v8

    sub-float v2, v2, p4

    .line 523
    :goto_1
    iget-boolean v5, v0, Lru/okei/timetable/ui/SlideActionView;->toRight:Z

    if-eqz v5, :cond_3

    add-float v8, v8, p4

    goto :goto_2

    :cond_3
    invoke-direct/range {p0 .. p0}, Lru/okei/timetable/ui/SlideActionView;->panelWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v8, v5

    invoke-direct {v0, v4}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v8, v4

    .line 525
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 526
    invoke-virtual {v7, v2, v3, v8, v11}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 527
    iget-object v4, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 528
    iget-object v4, v0, Lru/okei/timetable/ui/SlideActionView;->label:Ljava/lang/String;

    iget-object v5, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v1, v13, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 529
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 532
    invoke-virtual {v7, v3, v3, v2, v11}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 533
    iget-object v2, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 534
    iget-object v2, v0, Lru/okei/timetable/ui/SlideActionView;->label:Ljava/lang/String;

    iget-object v4, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v13, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 537
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 538
    invoke-virtual {v7, v8, v3, v9, v11}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 539
    iget-object v2, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 540
    iget-object v2, v0, Lru/okei/timetable/ui/SlideActionView;->label:Ljava/lang/String;

    iget-object v3, v0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v13, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 541
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method private drawCross(Landroid/graphics/Canvas;FFF)V
    .locals 15

    move-object v0, p0

    .line 546
    iget-object v1, v0, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 547
    iget-object v1, v0, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3d99999a    # 0.075f

    mul-float v1, v1, p4

    const/high16 v2, 0x40000000    # 2.0f

    .line 548
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v2, 0x3f933333    # 1.15f

    mul-float v2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const v5, 0x3eb851ec    # 0.36f

    const/16 v6, 0x9

    if-ge v4, v6, :cond_0

    mul-float v5, v5, p4

    sub-float v6, p2, v5

    int-to-float v7, v4

    mul-float v7, v7, v2

    add-float v9, v6, v7

    sub-float v5, p3, v5

    add-float v10, v5, v7

    add-float v11, v9, v1

    add-float v12, v10, v1

    .line 553
    iget-object v13, v0, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v6, :cond_1

    mul-float v4, p4, v5

    add-float v7, p2, v4

    int-to-float v8, v3

    mul-float v8, v8, v2

    sub-float v10, v7, v8

    sub-float v4, p3, v4

    add-float v11, v4, v8

    add-float v12, v10, v1

    add-float v13, v11, v1

    .line 558
    iget-object v14, v0, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private drawSideBars(Landroid/graphics/Canvas;IIF)V
    .locals 17

    move-object/from16 v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    .line 462
    invoke-direct {v0, v1}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-direct {v0, v2}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v2

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-direct {v0, v3}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-direct {v0, v4}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {v0, v5}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v5

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    .line 463
    invoke-direct {v0, v2}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 464
    invoke-direct {v0, v4}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v5

    int-to-float v5, v5

    .line 465
    iget-object v6, v0, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x2

    if-ge v7, v8, :cond_3

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x5

    if-ge v8, v9, :cond_2

    if-nez v7, :cond_0

    .line 469
    invoke-direct {v0, v2}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v8

    add-float v12, v3, v5

    mul-float v11, v11, v12

    add-float/2addr v10, v11

    goto :goto_2

    .line 470
    :cond_0
    invoke-direct {v0, v2}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v10

    sub-int v10, p2, v10

    int-to-float v10, v10

    add-int/lit8 v11, v8, 0x1

    int-to-float v11, v11

    add-float v12, v3, v5

    mul-float v11, v11, v12

    sub-float/2addr v10, v11

    add-float/2addr v10, v5

    :goto_2
    move v12, v10

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float v10, v10, p4

    .line 471
    rem-int/lit8 v11, v8, 0x2

    const/high16 v13, 0x3f800000    # 1.0f

    if-nez v11, :cond_1

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_1
    const v11, 0x3f0ccccd    # 0.55f

    :goto_3
    mul-float v10, v10, v11

    add-float/2addr v10, v13

    move/from16 v15, p3

    int-to-float v11, v15

    const v14, 0x3eeb851f    # 0.46f

    mul-float v14, v14, v11

    .line 472
    aget v2, v1, v8

    int-to-float v2, v2

    mul-float v2, v2, v10

    invoke-static {v14, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 473
    sget-object v10, Lru/okei/timetable/ui/SlideActionView;->BLOCK_COLORS:[I

    array-length v14, v10

    add-int/lit8 v14, v14, -0x1

    array-length v6, v10

    mul-int v6, v6, v8

    div-int/2addr v6, v9

    invoke-static {v14, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 475
    iget-object v9, v0, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    aget v6, v10, v6

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 476
    iget-object v6, v0, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    const v9, 0x3eb33333    # 0.35f

    add-float v9, p4, v9

    invoke-static {v13, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v10, 0x43020000    # 130.0f

    mul-float v9, v9, v10

    const/high16 v10, 0x42b40000    # 90.0f

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    div-float/2addr v11, v4

    div-float/2addr v2, v4

    sub-float v13, v11, v2

    add-float v14, v12, v3

    add-float/2addr v2, v11

    .line 477
    iget-object v6, v0, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v15, v2

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    goto/16 :goto_0

    .line 481
    :cond_3
    iget-object v1, v0, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private fire()V
    .locals 4

    .line 299
    iget-boolean v0, p0, Lru/okei/timetable/ui/SlideActionView;->fired:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lru/okei/timetable/ui/SlideActionView;->fired:Z

    const/4 v1, 0x0

    .line 303
    invoke-virtual {p0, v1}, Lru/okei/timetable/ui/SlideActionView;->setEnabled(Z)V

    .line 304
    iget-object v2, p0, Lru/okei/timetable/ui/SlideActionView;->snap:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    .line 305
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x0

    .line 306
    iput-object v2, p0, Lru/okei/timetable/ui/SlideActionView;->snap:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 308
    iget v3, p0, Lru/okei/timetable/ui/SlideActionView;->progress:F

    aput v3, v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->snap:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x8c

    .line 309
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 310
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->snap:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 311
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->snap:Landroid/animation/ValueAnimator;

    new-instance v2, Lru/okei/timetable/ui/SlideActionView$2;

    invoke-direct {v2, p0}, Lru/okei/timetable/ui/SlideActionView$2;-><init>(Lru/okei/timetable/ui/SlideActionView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 318
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->snap:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 319
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lru/okei/timetable/ui/SlideActionView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->burstListener:Lru/okei/timetable/ui/SlideActionView$BurstListener;

    if-eqz v0, :cond_3

    .line 321
    iget-boolean v2, p0, Lru/okei/timetable/ui/SlideActionView;->toRight:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    invoke-interface {v0, p0, v1}, Lru/okei/timetable/ui/SlideActionView$BurstListener;->onBurst(Lru/okei/timetable/ui/SlideActionView;F)V

    .line 323
    :cond_3
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->listener:Lru/okei/timetable/ui/SlideActionView$Listener;

    if-eqz v0, :cond_4

    .line 324
    invoke-interface {v0}, Lru/okei/timetable/ui/SlideActionView$Listener;->onTriggered()V

    :cond_4
    return-void
.end method

.method private gutter()F
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 354
    invoke-direct {p0, v0}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private init()V
    .locals 2

    .line 87
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 89
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 91
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 92
    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lru/okei/timetable/ui/SlideActionView;->touchSlop:F

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0}, Lru/okei/timetable/ui/SlideActionView;->setClickable(Z)V

    return-void
.end method

.method private panelWidth()I
    .locals 3

    .line 358
    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lru/okei/timetable/ui/SlideActionView;->gutter()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private pulse()F
    .locals 5

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lru/okei/timetable/ui/SlideActionView;->beatAt:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/16 v2, 0x104

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    long-to-float v0, v0

    const/high16 v1, 0x43820000    # 260.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 350
    iget v0, p0, Lru/okei/timetable/ui/SlideActionView;->beatStrength:F

    mul-float v1, v1, v0

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private snapBack()V
    .locals 3

    .line 329
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->snap:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 332
    iget v2, p0, Lru/okei/timetable/ui/SlideActionView;->progress:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->snap:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xdc

    .line 333
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 334
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->snap:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 335
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->snap:Landroid/animation/ValueAnimator;

    new-instance v1, Lru/okei/timetable/ui/SlideActionView$3;

    invoke-direct {v1, p0}, Lru/okei/timetable/ui/SlideActionView$3;-><init>(Lru/okei/timetable/ui/SlideActionView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 342
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->snap:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startAnimation()V
    .locals 1

    .line 157
    iget-boolean v0, p0, Lru/okei/timetable/ui/SlideActionView;->animating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lru/okei/timetable/ui/SlideActionView;->animating:Z

    .line 161
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->frame:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lru/okei/timetable/ui/SlideActionView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public beat(F)V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lru/okei/timetable/ui/SlideActionView;->beatAt:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 151
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lru/okei/timetable/ui/SlideActionView;->beatStrength:F

    .line 152
    iget v0, p0, Lru/okei/timetable/ui/SlideActionView;->beatKick:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lru/okei/timetable/ui/SlideActionView;->beatKick:F

    .line 153
    invoke-direct {p0}, Lru/okei/timetable/ui/SlideActionView;->startAnimation()V

    return-void
.end method

.method public glow(F)V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x3faccccd    # 1.35f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 142
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lru/okei/timetable/ui/SlideActionView;->glowTarget:F

    .line 143
    invoke-direct {p0}, Lru/okei/timetable/ui/SlideActionView;->startAnimation()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 382
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/SlideActionView;->getWidth()I

    move-result v8

    .line 383
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/SlideActionView;->getHeight()I

    move-result v9

    if-lez v8, :cond_8

    if-gtz v9, :cond_0

    goto/16 :goto_7

    .line 387
    :cond_0
    invoke-direct/range {p0 .. p0}, Lru/okei/timetable/ui/SlideActionView;->pulse()F

    move-result v10

    .line 388
    iget v0, v6, Lru/okei/timetable/ui/SlideActionView;->glowCurrent:F

    .line 389
    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 390
    iget v1, v6, Lru/okei/timetable/ui/SlideActionView;->progress:F

    const v2, 0x3f0ccccd    # 0.55f

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 392
    invoke-direct {v6, v7, v8, v9, v11}, Lru/okei/timetable/ui/SlideActionView;->drawSideBars(Landroid/graphics/Canvas;IIF)V

    const v0, 0x3ca3d70a    # 0.02f

    const/4 v12, 0x4

    const v13, 0x40266666    # 2.6f

    cmpl-float v0, v11, v0

    if-lez v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    int-to-float v1, v0

    .line 397
    invoke-direct {v6, v13}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    const v3, 0x3ee66666    # 0.45f

    add-float/2addr v3, v11

    mul-float v2, v2, v3

    int-to-float v3, v8

    int-to-float v4, v9

    neg-float v5, v2

    .line 398
    iget-object v14, v6, Lru/okei/timetable/ui/SlideActionView;->shape:Landroid/graphics/Path;

    invoke-direct {v6, v3, v4, v5, v14}, Lru/okei/timetable/ui/SlideActionView;->buildPanel(FFFLandroid/graphics/Path;)V

    .line 399
    iget-object v3, v6, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 400
    iget-object v3, v6, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, 0x42380000    # 46.0f

    mul-float v2, v2, v11

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 402
    iget-object v2, v6, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    const v3, 0xffffff

    or-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 403
    iget-object v1, v6, Lru/okei/timetable/ui/SlideActionView;->shape:Landroid/graphics/Path;

    iget-object v2, v6, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    int-to-float v14, v8

    int-to-float v15, v9

    const/high16 v5, 0x40000000    # 2.0f

    .line 408
    invoke-direct {v6, v5}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v6, Lru/okei/timetable/ui/SlideActionView;->shape:Landroid/graphics/Path;

    invoke-direct {v6, v14, v15, v0, v1}, Lru/okei/timetable/ui/SlideActionView;->buildPanel(FFFLandroid/graphics/Path;)V

    .line 409
    iget-object v0, v6, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 410
    iget-object v0, v6, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 411
    iget-object v0, v6, Lru/okei/timetable/ui/SlideActionView;->shape:Landroid/graphics/Path;

    iget-object v1, v6, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 414
    invoke-direct/range {p0 .. p0}, Lru/okei/timetable/ui/SlideActionView;->gutter()F

    move-result v0

    mul-float v0, v0, v5

    sub-float v0, v14, v0

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-direct {v6, v4}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, v6, Lru/okei/timetable/ui/SlideActionView;->progress:F

    mul-float v16, v0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    cmpl-float v0, v16, v0

    if-lez v0, :cond_6

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 417
    invoke-direct {v6, v5}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v6, Lru/okei/timetable/ui/SlideActionView;->shape:Landroid/graphics/Path;

    invoke-direct {v6, v14, v15, v0, v1}, Lru/okei/timetable/ui/SlideActionView;->buildPanel(FFFLandroid/graphics/Path;)V

    .line 418
    iget-object v0, v6, Lru/okei/timetable/ui/SlideActionView;->shape:Landroid/graphics/Path;

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 419
    iget-object v0, v6, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    div-int/lit8 v0, v9, 0x4

    int-to-float v2, v0

    const/high16 v0, 0x40e00000    # 7.0f

    .line 422
    invoke-direct {v6, v0}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v0

    int-to-float v1, v0

    .line 423
    invoke-direct/range {p0 .. p0}, Lru/okei/timetable/ui/SlideActionView;->gutter()F

    move-result v0

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v6, v3}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float v17, v0, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v12, :cond_5

    .line 425
    iget-boolean v3, v6, Lru/okei/timetable/ui/SlideActionView;->toRight:Z

    if-eqz v3, :cond_2

    move/from16 v3, v17

    goto :goto_2

    :cond_2
    invoke-direct/range {p0 .. p0}, Lru/okei/timetable/ui/SlideActionView;->panelWidth()I

    move-result v3

    invoke-direct {v6, v4}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v18

    sub-int v3, v3, v18

    int-to-float v3, v3

    add-float v3, v17, v3

    sub-float v3, v3, v16

    .line 426
    :goto_2
    iget-boolean v5, v6, Lru/okei/timetable/ui/SlideActionView;->toRight:Z

    if-eqz v5, :cond_3

    add-float v5, v17, v16

    goto :goto_3

    :cond_3
    invoke-direct/range {p0 .. p0}, Lru/okei/timetable/ui/SlideActionView;->panelWidth()I

    move-result v5

    int-to-float v5, v5

    add-float v5, v17, v5

    invoke-direct {v6, v4}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v5, v13

    .line 427
    :goto_3
    iget-boolean v13, v6, Lru/okei/timetable/ui/SlideActionView;->toRight:Z

    if-eqz v13, :cond_4

    int-to-float v13, v0

    int-to-float v4, v12

    div-float v4, v1, v4

    mul-float v13, v13, v4

    sub-float/2addr v5, v13

    goto :goto_4

    :cond_4
    int-to-float v4, v0

    int-to-float v13, v12

    div-float v13, v1, v13

    mul-float v4, v4, v13

    add-float/2addr v3, v4

    :goto_4
    int-to-float v4, v0

    mul-float v4, v4, v2

    .line 432
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-int/lit8 v13, v0, 0x1

    int-to-float v0, v13

    mul-float v19, v0, v2

    iget-object v0, v6, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v21, v1

    move v1, v3

    move/from16 v22, v2

    move v2, v4

    const/4 v4, -0x1

    move v3, v5

    const/4 v5, -0x1

    const/high16 v12, 0x40c00000    # 6.0f

    move/from16 v4, v19

    const/high16 v12, 0x40000000    # 2.0f

    move-object/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v0, v13

    move/from16 v1, v21

    move/from16 v2, v22

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v12, 0x4

    const v13, 0x40266666    # 2.6f

    goto :goto_1

    :cond_5
    const/high16 v12, 0x40000000    # 2.0f

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    :cond_6
    const/high16 v12, 0x40000000    # 2.0f

    .line 438
    :goto_5
    invoke-direct {v6, v12}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v6, Lru/okei/timetable/ui/SlideActionView;->shape:Landroid/graphics/Path;

    invoke-direct {v6, v14, v15, v0, v1}, Lru/okei/timetable/ui/SlideActionView;->buildPanel(FFFLandroid/graphics/Path;)V

    .line 439
    iget-object v0, v6, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 440
    iget-object v0, v6, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    const v1, 0x40266666    # 2.6f

    invoke-direct {v6, v1}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3fb33333    # 1.4f

    invoke-direct {v6, v2}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v11

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 441
    iget-object v0, v6, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    iget-object v0, v6, Lru/okei/timetable/ui/SlideActionView;->shape:Landroid/graphics/Path;

    iget-object v3, v6, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 443
    invoke-direct {v6, v12}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v0

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {v6, v3}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, v6, Lru/okei/timetable/ui/SlideActionView;->shape:Landroid/graphics/Path;

    invoke-direct {v6, v14, v15, v0, v3}, Lru/okei/timetable/ui/SlideActionView;->buildPanel(FFFLandroid/graphics/Path;)V

    .line 444
    iget-object v0, v6, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    const v3, 0x3fa66666    # 1.3f

    invoke-direct {v6, v3}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 445
    iget-object v0, v6, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    const v3, 0x3d4ccccd    # 0.05f

    cmpl-float v3, v11, v3

    if-lez v3, :cond_7

    const/4 v3, -0x1

    goto :goto_6

    :cond_7
    const v3, -0x272728

    :goto_6
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    iget-object v0, v6, Lru/okei/timetable/ui/SlideActionView;->shape:Landroid/graphics/Path;

    iget-object v1, v6, Lru/okei/timetable/ui/SlideActionView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 448
    iget v0, v6, Lru/okei/timetable/ui/SlideActionView;->floatPhase:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {v6, v2}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget v1, v6, Lru/okei/timetable/ui/SlideActionView;->beatKick:F

    const v2, 0x3fcccccd    # 1.6f

    .line 449
    invoke-direct {v6, v2}, Lru/okei/timetable/ui/SlideActionView;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, v6, Lru/okei/timetable/ui/SlideActionView;->floatPhase:F

    mul-float v2, v2, v12

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 450
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    .line 451
    invoke-virtual {v7, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move v5, v11

    .line 452
    invoke-direct/range {v0 .. v5}, Lru/okei/timetable/ui/SlideActionView;->drawContent(Landroid/graphics/Canvas;IIFF)V

    .line 453
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const v0, 0x3cf5c28f    # 0.03f

    cmpl-float v0, v10, v0

    if-lez v0, :cond_8

    const-wide/16 v0, 0x10

    .line 456
    invoke-virtual {v6, v0, v1}, Lru/okei/timetable/ui/SlideActionView;->postInvalidateDelayed(J)V

    :cond_8
    :goto_7
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 207
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.SeekBar"

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->label:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 \u0441\u0432\u0430\u0439\u043f"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/4 v0, 0x1

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 225
    iget-boolean v0, p0, Lru/okei/timetable/ui/SlideActionView;->fired:Z

    const/4 v1, 0x0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const v3, 0x3f51eb85    # 0.82f

    if-eq v0, v2, :cond_c

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 294
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    return v2

    .line 286
    :cond_2
    iput-boolean v1, p0, Lru/okei/timetable/ui/SlideActionView;->dragging:Z

    .line 287
    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 288
    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 290
    :cond_3
    invoke-direct {p0}, Lru/okei/timetable/ui/SlideActionView;->snapBack()V

    return v2

    .line 242
    :cond_4
    iget-boolean v0, p0, Lru/okei/timetable/ui/SlideActionView;->dragging:Z

    if-nez v0, :cond_5

    return v1

    .line 245
    :cond_5
    iget v0, p0, Lru/okei/timetable/ui/SlideActionView;->activePointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_6

    return v1

    .line 249
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 250
    iget-boolean v0, p0, Lru/okei/timetable/ui/SlideActionView;->slopPassed:Z

    if-nez v0, :cond_8

    .line 251
    iget v0, p0, Lru/okei/timetable/ui/SlideActionView;->downX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lru/okei/timetable/ui/SlideActionView;->touchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    return v2

    .line 254
    :cond_7
    iput-boolean v2, p0, Lru/okei/timetable/ui/SlideActionView;->slopPassed:Z

    .line 256
    :cond_8
    iget v0, p0, Lru/okei/timetable/ui/SlideActionView;->downX:F

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr p1, v0

    .line 257
    iget-boolean v0, p0, Lru/okei/timetable/ui/SlideActionView;->toRight:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lru/okei/timetable/ui/SlideActionView;->downProgress:F

    add-float/2addr v0, p1

    goto :goto_0

    :cond_9
    iget v0, p0, Lru/okei/timetable/ui/SlideActionView;->downProgress:F

    sub-float/2addr v0, p1

    :goto_0
    const/4 p1, 0x0

    .line 258
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lru/okei/timetable/ui/SlideActionView;->progress:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_a

    .line 259
    iget-boolean p1, p0, Lru/okei/timetable/ui/SlideActionView;->announcedHalf:Z

    if-nez p1, :cond_a

    .line 260
    iput-boolean v2, p0, Lru/okei/timetable/ui/SlideActionView;->announcedHalf:Z

    const-string p1, "\u041f\u041e\u041b\u041e\u0412\u0418\u041d\u0410"

    .line 261
    invoke-virtual {p0, p1}, Lru/okei/timetable/ui/SlideActionView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 263
    :cond_a
    iget p1, p0, Lru/okei/timetable/ui/SlideActionView;->progress:F

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_b

    iget-boolean p1, p0, Lru/okei/timetable/ui/SlideActionView;->announcedReady:Z

    if-nez p1, :cond_b

    .line 264
    iput-boolean v2, p0, Lru/okei/timetable/ui/SlideActionView;->announcedReady:Z

    const-string p1, "\u041e\u0422\u041f\u0423\u0421\u0422\u0418\u0422\u0415 \u0414\u041b\u042f \u0412\u042b\u041f\u041e\u041b\u041d\u0415\u041d\u0418\u042f"

    .line 265
    invoke-virtual {p0, p1}, Lru/okei/timetable/ui/SlideActionView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 267
    :cond_b
    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->invalidate()V

    return v2

    .line 271
    :cond_c
    iget-boolean p1, p0, Lru/okei/timetable/ui/SlideActionView;->dragging:Z

    if-nez p1, :cond_d

    return v1

    .line 274
    :cond_d
    iput-boolean v1, p0, Lru/okei/timetable/ui/SlideActionView;->dragging:Z

    .line 275
    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 276
    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 278
    :cond_e
    iget p1, p0, Lru/okei/timetable/ui/SlideActionView;->progress:F

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_f

    .line 279
    invoke-direct {p0}, Lru/okei/timetable/ui/SlideActionView;->fire()V

    goto :goto_1

    .line 281
    :cond_f
    invoke-direct {p0}, Lru/okei/timetable/ui/SlideActionView;->snapBack()V

    :goto_1
    return v2

    .line 230
    :cond_10
    iput-boolean v2, p0, Lru/okei/timetable/ui/SlideActionView;->dragging:Z

    .line 231
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lru/okei/timetable/ui/SlideActionView;->activePointer:I

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lru/okei/timetable/ui/SlideActionView;->downX:F

    .line 233
    iget p1, p0, Lru/okei/timetable/ui/SlideActionView;->progress:F

    iput p1, p0, Lru/okei/timetable/ui/SlideActionView;->downProgress:F

    .line 234
    iput-boolean v1, p0, Lru/okei/timetable/ui/SlideActionView;->slopPassed:Z

    .line 235
    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 236
    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_11
    return v2

    :cond_12
    :goto_2
    return v1
.end method

.method public performClick()Z
    .locals 2

    .line 216
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 217
    iget-boolean v1, p0, Lru/okei/timetable/ui/SlideActionView;->fired:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-direct {p0}, Lru/okei/timetable/ui/SlideActionView;->fire()V

    :cond_0
    return v0
.end method

.method public reset()V
    .locals 4

    .line 117
    iget-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->snap:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lru/okei/timetable/ui/SlideActionView;->snap:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lru/okei/timetable/ui/SlideActionView;->progress:F

    const/4 v1, 0x0

    .line 122
    iput-boolean v1, p0, Lru/okei/timetable/ui/SlideActionView;->dragging:Z

    .line 123
    iput-boolean v1, p0, Lru/okei/timetable/ui/SlideActionView;->slopPassed:Z

    .line 124
    iput-boolean v1, p0, Lru/okei/timetable/ui/SlideActionView;->fired:Z

    const/4 v2, -0x1

    .line 125
    iput v2, p0, Lru/okei/timetable/ui/SlideActionView;->activePointer:I

    const-wide/high16 v2, -0x8000000000000000L

    .line 126
    iput-wide v2, p0, Lru/okei/timetable/ui/SlideActionView;->beatAt:J

    .line 127
    iput v0, p0, Lru/okei/timetable/ui/SlideActionView;->beatStrength:F

    .line 128
    iput v0, p0, Lru/okei/timetable/ui/SlideActionView;->beatKick:F

    .line 129
    iput v0, p0, Lru/okei/timetable/ui/SlideActionView;->glowCurrent:F

    .line 130
    iput v0, p0, Lru/okei/timetable/ui/SlideActionView;->glowTarget:F

    .line 131
    iput-boolean v1, p0, Lru/okei/timetable/ui/SlideActionView;->announcedHalf:Z

    .line 132
    iput-boolean v1, p0, Lru/okei/timetable/ui/SlideActionView;->announcedReady:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 133
    invoke-virtual {p0, v0}, Lru/okei/timetable/ui/SlideActionView;->setAlpha(F)V

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p0, v0}, Lru/okei/timetable/ui/SlideActionView;->setEnabled(Z)V

    .line 135
    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->invalidate()V

    return-void
.end method

.method public setBurstListener(Lru/okei/timetable/ui/SlideActionView$BurstListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lru/okei/timetable/ui/SlideActionView;->burstListener:Lru/okei/timetable/ui/SlideActionView$BurstListener;

    return-void
.end method

.method public setup(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Typeface;FZLru/okei/timetable/ui/SlideActionView$Listener;)V
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 98
    :goto_0
    iput-object v1, p0, Lru/okei/timetable/ui/SlideActionView;->label:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v0

    .line 99
    :cond_1
    iput-object p2, p0, Lru/okei/timetable/ui/SlideActionView;->iconText:Ljava/lang/String;

    .line 100
    iput p3, p0, Lru/okei/timetable/ui/SlideActionView;->icon:I

    .line 101
    iput-object p4, p0, Lru/okei/timetable/ui/SlideActionView;->typeface:Landroid/graphics/Typeface;

    .line 102
    iput p5, p0, Lru/okei/timetable/ui/SlideActionView;->labelSizePx:F

    .line 103
    iput-boolean p6, p0, Lru/okei/timetable/ui/SlideActionView;->toRight:Z

    .line 104
    iput-object p7, p0, Lru/okei/timetable/ui/SlideActionView;->listener:Lru/okei/timetable/ui/SlideActionView$Listener;

    .line 105
    iget-object p2, p0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 106
    iget-object p2, p0, Lru/okei/timetable/ui/SlideActionView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 107
    invoke-virtual {p0, p1}, Lru/okei/timetable/ui/SlideActionView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Lru/okei/timetable/ui/SlideActionView;->reset()V

    return-void
.end method
