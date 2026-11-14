.class public Lru/okei/timetable/ui/ThemeToggleView;
.super Landroid/view/View;
.source "ThemeToggleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/ui/ThemeToggleView$Listener;
    }
.end annotation


# static fields
.field private static final APPEAR_STEPS:I = 0x6

.field private static final APPEAR_STEP_MS:J = 0x2dL

.field private static final MORPH_STEPS:I = 0x8

.field private static final MORPH_STEP_MS:J = 0x2dL


# instance fields
.field private appear:F

.field private final appearStep:Ljava/lang/Runnable;

.field private bgColor:I

.field private color:I

.field private final handler:Landroid/os/Handler;

.field private light:Z

.field private listener:Lru/okei/timetable/ui/ThemeToggleView$Listener;

.field private morph:F

.field private morphFrom:F

.field private final morphStep:Ljava/lang/Runnable;

.field private morphTo:F

.field private final paint:Landroid/graphics/Paint;

.field private step:I

.field private touchX:F

.field private touchY:F


# direct methods
.method static bridge synthetic -$$Nest$fgetappear(Lru/okei/timetable/ui/ThemeToggleView;)F
    .locals 0

    iget p0, p0, Lru/okei/timetable/ui/ThemeToggleView;->appear:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lru/okei/timetable/ui/ThemeToggleView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/ui/ThemeToggleView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lru/okei/timetable/ui/ThemeToggleView;)Lru/okei/timetable/ui/ThemeToggleView$Listener;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/ui/ThemeToggleView;->listener:Lru/okei/timetable/ui/ThemeToggleView$Listener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmorphFrom(Lru/okei/timetable/ui/ThemeToggleView;)F
    .locals 0

    iget p0, p0, Lru/okei/timetable/ui/ThemeToggleView;->morphFrom:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmorphTo(Lru/okei/timetable/ui/ThemeToggleView;)F
    .locals 0

    iget p0, p0, Lru/okei/timetable/ui/ThemeToggleView;->morphTo:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstep(Lru/okei/timetable/ui/ThemeToggleView;)I
    .locals 0

    iget p0, p0, Lru/okei/timetable/ui/ThemeToggleView;->step:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputappear(Lru/okei/timetable/ui/ThemeToggleView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->appear:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmorph(Lru/okei/timetable/ui/ThemeToggleView;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->morph:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstep(Lru/okei/timetable/ui/ThemeToggleView;I)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->step:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 90
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->paint:Landroid/graphics/Paint;

    .line 34
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->handler:Landroid/os/Handler;

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->color:I

    const/high16 p1, -0x1000000

    .line 38
    iput p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->bgColor:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 42
    iput p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->appear:F

    .line 60
    new-instance p1, Lru/okei/timetable/ui/ThemeToggleView$1;

    invoke-direct {p1, p0}, Lru/okei/timetable/ui/ThemeToggleView$1;-><init>(Lru/okei/timetable/ui/ThemeToggleView;)V

    iput-object p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->appearStep:Ljava/lang/Runnable;

    .line 74
    new-instance p1, Lru/okei/timetable/ui/ThemeToggleView$2;

    invoke-direct {p1, p0}, Lru/okei/timetable/ui/ThemeToggleView$2;-><init>(Lru/okei/timetable/ui/ThemeToggleView;)V

    iput-object p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->morphStep:Ljava/lang/Runnable;

    .line 91
    invoke-direct {p0}, Lru/okei/timetable/ui/ThemeToggleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->paint:Landroid/graphics/Paint;

    .line 34
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->handler:Landroid/os/Handler;

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->color:I

    const/high16 p1, -0x1000000

    .line 38
    iput p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->bgColor:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 42
    iput p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->appear:F

    .line 60
    new-instance p1, Lru/okei/timetable/ui/ThemeToggleView$1;

    invoke-direct {p1, p0}, Lru/okei/timetable/ui/ThemeToggleView$1;-><init>(Lru/okei/timetable/ui/ThemeToggleView;)V

    iput-object p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->appearStep:Ljava/lang/Runnable;

    .line 74
    new-instance p1, Lru/okei/timetable/ui/ThemeToggleView$2;

    invoke-direct {p1, p0}, Lru/okei/timetable/ui/ThemeToggleView$2;-><init>(Lru/okei/timetable/ui/ThemeToggleView;)V

    iput-object p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->morphStep:Ljava/lang/Runnable;

    .line 96
    invoke-direct {p0}, Lru/okei/timetable/ui/ThemeToggleView;->init()V

    return-void
.end method

.method private dp(F)F
    .locals 1

    .line 316
    invoke-virtual {p0}, Lru/okei/timetable/ui/ThemeToggleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    return p1
.end method

.method private init()V
    .locals 2

    .line 100
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, v0}, Lru/okei/timetable/ui/ThemeToggleView;->setClickable(Z)V

    .line 103
    invoke-virtual {p0, v0}, Lru/okei/timetable/ui/ThemeToggleView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 311
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 312
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/ThemeToggleView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v1, v8

    .line 146
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/ThemeToggleView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v10, v1, v8

    .line 147
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/ThemeToggleView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/ThemeToggleView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    if-lez v3, :cond_4

    .line 148
    iget v3, v0, Lru/okei/timetable/ui/ThemeToggleView;->appear:F

    const v11, 0x3ca3d70a    # 0.02f

    cmpg-float v4, v3, v11

    if-gtz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const v4, 0x3f3851ec    # 0.72f

    mul-float v12, v1, v4

    .line 152
    iget v1, v0, Lru/okei/timetable/ui/ThemeToggleView;->morph:F

    sub-float/2addr v2, v1

    mul-float v13, v2, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 154
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/ThemeToggleView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/ThemeToggleView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v14

    cmpl-float v1, v13, v11

    if-lez v1, :cond_2

    .line 156
    iget-object v1, v0, Lru/okei/timetable/ui/ThemeToggleView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    iget-object v1, v0, Lru/okei/timetable/ui/ThemeToggleView;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Lru/okei/timetable/ui/ThemeToggleView;->dp(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    iget-object v1, v0, Lru/okei/timetable/ui/ThemeToggleView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 159
    iget-object v1, v0, Lru/okei/timetable/ui/ThemeToggleView;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lru/okei/timetable/ui/ThemeToggleView;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v8, v1, :cond_2

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    int-to-double v3, v8

    mul-double v3, v3, v1

    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    div-double/2addr v3, v1

    const v1, 0x3f9c28f6    # 1.22f

    mul-float v2, v12, v1

    const v5, 0x3ed70a3d    # 0.42f

    mul-float v5, v5, v13

    add-float/2addr v5, v1

    mul-float v5, v5, v12

    move v15, v12

    .line 165
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v1, v11

    mul-float v1, v1, v2

    add-float v6, v9, v1

    .line 166
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v1, v11

    mul-float v1, v1, v2

    add-float v11, v10, v1

    .line 167
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v5

    add-float v12, v9, v1

    .line 168
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v5

    add-float v5, v10, v1

    iget-object v4, v0, Lru/okei/timetable/ui/ThemeToggleView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v6

    move v3, v11

    move-object v6, v4

    move v4, v12

    .line 164
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    move v12, v15

    const v11, 0x3ca3d70a    # 0.02f

    goto :goto_0

    :cond_2
    move v15, v12

    .line 173
    iget-object v1, v0, Lru/okei/timetable/ui/ThemeToggleView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    iget-object v1, v0, Lru/okei/timetable/ui/ThemeToggleView;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lru/okei/timetable/ui/ThemeToggleView;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget-object v1, v0, Lru/okei/timetable/ui/ThemeToggleView;->paint:Landroid/graphics/Paint;

    move v2, v15

    invoke-virtual {v7, v9, v10, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 177
    iget v1, v0, Lru/okei/timetable/ui/ThemeToggleView;->morph:F

    const v3, 0x3ca3d70a    # 0.02f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    .line 178
    iget-object v1, v0, Lru/okei/timetable/ui/ThemeToggleView;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const v1, 0x3f1eb852    # 0.62f

    mul-float v12, v2, v1

    .line 179
    iget v1, v0, Lru/okei/timetable/ui/ThemeToggleView;->morph:F

    mul-float v12, v12, v1

    add-float/2addr v9, v12

    const v3, 0x3e8f5c29    # 0.28f

    mul-float v12, v2, v3

    mul-float v12, v12, v1

    sub-float/2addr v10, v12

    const v1, 0x3f75c28f    # 0.96f

    mul-float v12, v2, v1

    iget-object v1, v0, Lru/okei/timetable/ui/ThemeToggleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v10, v12, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 181
    iget-object v1, v0, Lru/okei/timetable/ui/ThemeToggleView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 183
    :cond_3
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 224
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 207
    :cond_0
    invoke-virtual {p0, v3}, Lru/okei/timetable/ui/ThemeToggleView;->setAlpha(F)V

    return v2

    :cond_1
    return v2

    .line 211
    :cond_4
    invoke-virtual {p0, v3}, Lru/okei/timetable/ui/ThemeToggleView;->setAlpha(F)V

    .line 217
    iput v1, p0, Lru/okei/timetable/ui/ThemeToggleView;->step:I

    .line 218
    iget p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->morph:F

    iput p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->morphFrom:F

    .line 219
    iget-boolean p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->light:Z

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    iput v3, p0, Lru/okei/timetable/ui/ThemeToggleView;->morphTo:F

    .line 220
    iget-object p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView;->morphStep:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 221
    iget-object p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView;->morphStep:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2

    .line 190
    :cond_8
    const v0, 0x3f0ccccd    # 0.55f

    .line 193
    invoke-virtual {p0, v0}, Lru/okei/timetable/ui/ThemeToggleView;->setAlpha(F)V

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lru/okei/timetable/ui/ThemeToggleView;->touchX:F

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->touchY:F

    return v2
.end method

.method public playAppear()V
    .locals 3

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lru/okei/timetable/ui/ThemeToggleView;->step:I

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lru/okei/timetable/ui/ThemeToggleView;->appear:F

    .line 131
    iget-boolean v1, p0, Lru/okei/timetable/ui/ThemeToggleView;->light:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    iput v2, p0, Lru/okei/timetable/ui/ThemeToggleView;->morphTo:F

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x3eb33333    # 0.35f

    .line 132
    :goto_1
    iput v0, p0, Lru/okei/timetable/ui/ThemeToggleView;->morphFrom:F

    .line 133
    iput v0, p0, Lru/okei/timetable/ui/ThemeToggleView;->morph:F

    .line 134
    invoke-virtual {p0}, Lru/okei/timetable/ui/ThemeToggleView;->invalidate()V

    .line 135
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/ui/ThemeToggleView;->appearStep:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/ui/ThemeToggleView;->appearStep:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setInstant()V
    .locals 2

    .line 121
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/ui/ThemeToggleView;->appearStep:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/ui/ThemeToggleView;->morphStep:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 123
    iput v0, p0, Lru/okei/timetable/ui/ThemeToggleView;->appear:F

    .line 124
    iget-boolean v1, p0, Lru/okei/timetable/ui/ThemeToggleView;->light:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput v0, p0, Lru/okei/timetable/ui/ThemeToggleView;->morph:F

    .line 125
    invoke-virtual {p0}, Lru/okei/timetable/ui/ThemeToggleView;->invalidate()V

    return-void
.end method

.method public setListener(Lru/okei/timetable/ui/ThemeToggleView$Listener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->listener:Lru/okei/timetable/ui/ThemeToggleView$Listener;

    return-void
.end method

.method public setState(ZII)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lru/okei/timetable/ui/ThemeToggleView;->light:Z

    .line 112
    iput p2, p0, Lru/okei/timetable/ui/ThemeToggleView;->color:I

    .line 113
    iput p3, p0, Lru/okei/timetable/ui/ThemeToggleView;->bgColor:I

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 114
    :goto_0
    iput p2, p0, Lru/okei/timetable/ui/ThemeToggleView;->morph:F

    if-eqz p1, :cond_1

    const-string p1, "\u0421\u0432\u0435\u0442\u043b\u0430\u044f \u0442\u0435\u043c\u0430, \u043f\u0435\u0440\u0435\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u043d\u0430 \u0442\u0451\u043c\u043d\u0443\u044e"

    goto :goto_1

    :cond_1
    const-string p1, "\u0422\u0451\u043c\u043d\u0430\u044f \u0442\u0435\u043c\u0430, \u043f\u0435\u0440\u0435\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u043d\u0430 \u0441\u0432\u0435\u0442\u043b\u0443\u044e"

    .line 115
    :goto_1
    invoke-virtual {p0, p1}, Lru/okei/timetable/ui/ThemeToggleView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0}, Lru/okei/timetable/ui/ThemeToggleView;->invalidate()V

    return-void
.end method
