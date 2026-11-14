.class public final Lru/okei/timetable/ui/OnboardDots;
.super Landroid/view/View;
.source "OnboardDots.java"


# instance fields
.field private appear:F

.field private current:I

.field private instant:Z

.field private pages:I

.field private final paint:Landroid/graphics/Paint;

.field private position:F


# direct methods
.method static bridge synthetic -$$Nest$fputappear(Lru/okei/timetable/ui/OnboardDots;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/OnboardDots;->appear:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputposition(Lru/okei/timetable/ui/OnboardDots;F)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/OnboardDots;->position:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/ui/OnboardDots;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    .line 14
    iput v0, p0, Lru/okei/timetable/ui/OnboardDots;->pages:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lru/okei/timetable/ui/OnboardDots;->instant:Z

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, -0x1

    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private dp(F)F
    .locals 1

    .line 118
    invoke-virtual {p0}, Lru/okei/timetable/ui/OnboardDots;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    return p1
.end method


# virtual methods
.method public appear()V
    .locals 3

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lru/okei/timetable/ui/OnboardDots;->appear:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 41
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2f8

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 44
    new-instance v1, Lru/okei/timetable/ui/OnboardDots$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/ui/OnboardDots$1;-><init>(Lru/okei/timetable/ui/OnboardDots;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    .line 76
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/OnboardDots;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v2, 0x3fb33333    # 1.4f

    mul-float v2, v2, v1

    .line 79
    iget v3, v0, Lru/okei/timetable/ui/OnboardDots;->pages:I

    int-to-float v4, v3

    mul-float v4, v4, v1

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v3, v3, v2

    add-float/2addr v4, v3

    .line 80
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/OnboardDots;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float v8, v3, v6

    .line 81
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/ui/OnboardDots;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    div-float/2addr v3, v6

    .line 83
    iget v7, v0, Lru/okei/timetable/ui/OnboardDots;->appear:F

    const v9, 0x3fcccccd    # 1.6f

    mul-float v7, v7, v9

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v15, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 85
    iget v9, v0, Lru/okei/timetable/ui/OnboardDots;->appear:F

    const v10, 0x3ee66666    # 0.45f

    cmpg-float v11, v9, v10

    if-gez v11, :cond_0

    div-float/2addr v9, v10

    mul-float v4, v4, v9

    .line 87
    iget-object v2, v0, Lru/okei/timetable/ui/OnboardDots;->paint:Landroid/graphics/Paint;

    const/16 v5, 0xc8

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    div-float/2addr v1, v6

    add-float/2addr v3, v1

    .line 88
    invoke-direct {v0, v15}, Lru/okei/timetable/ui/OnboardDots;->dp(F)F

    move-result v1

    sub-float v9, v3, v1

    add-float v10, v8, v4

    .line 89
    invoke-direct {v0, v15}, Lru/okei/timetable/ui/OnboardDots;->dp(F)F

    move-result v1

    add-float v11, v3, v1

    iget-object v12, v0, Lru/okei/timetable/ui/OnboardDots;->paint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    .line 88
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    .line 93
    :goto_0
    iget v9, v0, Lru/okei/timetable/ui/OnboardDots;->pages:I

    if-ge v4, v9, :cond_3

    int-to-float v9, v4

    add-float v10, v1, v2

    mul-float v10, v10, v9

    add-float/2addr v10, v8

    const v14, 0x3f99999a    # 1.2f

    mul-float v11, v7, v14

    const v12, 0x3da3d70a    # 0.08f

    mul-float v12, v12, v9

    sub-float/2addr v11, v12

    .line 95
    invoke-static {v15, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    mul-float v11, v11, v1

    const/high16 v12, 0x3f000000    # 0.5f

    cmpg-float v12, v11, v12

    if-gtz v12, :cond_1

    goto/16 :goto_2

    :cond_1
    div-float v12, v1, v6

    add-float/2addr v10, v12

    .line 100
    iget v12, v0, Lru/okei/timetable/ui/OnboardDots;->position:F

    sub-float/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 101
    invoke-static {v15, v13}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float v9, v15, v9

    const/4 v12, 0x0

    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v12, 0x43430000    # 195.0f

    mul-float v9, v9, v12

    const/high16 v12, 0x42700000    # 60.0f

    add-float/2addr v9, v12

    float-to-int v9, v9

    .line 102
    iget-object v12, v0, Lru/okei/timetable/ui/OnboardDots;->paint:Landroid/graphics/Paint;

    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    div-float/2addr v11, v6

    sub-float v16, v10, v11

    add-float v17, v10, v11

    add-float v18, v3, v1

    .line 104
    iget-object v12, v0, Lru/okei/timetable/ui/OnboardDots;->paint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move/from16 v10, v16

    move v11, v3

    move-object/from16 v19, v12

    move/from16 v12, v17

    move/from16 v20, v13

    move/from16 v13, v18

    const v5, 0x3f99999a    # 1.2f

    move-object/from16 v14, v19

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const v9, 0x3eb33333    # 0.35f

    cmpg-float v9, v20, v9

    if-gez v9, :cond_2

    .line 105
    iget v9, v0, Lru/okei/timetable/ui/OnboardDots;->appear:F

    const v10, 0x3f666666    # 0.9f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    const/4 v10, 0x7

    if-gt v9, v10, :cond_2

    int-to-float v10, v9

    .line 108
    invoke-direct {v0, v5}, Lru/okei/timetable/ui/OnboardDots;->dp(F)F

    move-result v11

    mul-float v10, v10, v11

    .line 109
    iget-object v11, v0, Lru/okei/timetable/ui/OnboardDots;->paint:Landroid/graphics/Paint;

    mul-int/lit8 v12, v9, 0x3

    rsub-int/lit8 v12, v12, 0x1a

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    sub-float v22, v16, v10

    sub-float v23, v3, v10

    add-float v24, v17, v10

    add-float v25, v18, v10

    .line 110
    iget-object v10, v0, Lru/okei/timetable/ui/OnboardDots;->paint:Landroid/graphics/Paint;

    move-object/from16 v21, p1

    move-object/from16 v26, v10

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public setPage(IZ)V
    .locals 2

    .line 55
    iput p1, p0, Lru/okei/timetable/ui/OnboardDots;->current:I

    if-nez p2, :cond_0

    int-to-float p1, p1

    .line 57
    iput p1, p0, Lru/okei/timetable/ui/OnboardDots;->position:F

    .line 58
    invoke-virtual {p0}, Lru/okei/timetable/ui/OnboardDots;->invalidate()V

    return-void

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    .line 61
    iget v1, p0, Lru/okei/timetable/ui/OnboardDots;->position:F

    aput v1, p2, v0

    const/4 v0, 0x1

    int-to-float p1, p1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x140

    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 63
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const v0, 0x3fb33333    # 1.4f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 64
    new-instance p2, Lru/okei/timetable/ui/OnboardDots$2;

    invoke-direct {p2, p0}, Lru/okei/timetable/ui/OnboardDots$2;-><init>(Lru/okei/timetable/ui/OnboardDots;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 71
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setPages(I)V
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lru/okei/timetable/ui/OnboardDots;->pages:I

    .line 28
    invoke-virtual {p0}, Lru/okei/timetable/ui/OnboardDots;->invalidate()V

    return-void
.end method

.method public showInstant(I)V
    .locals 0

    .line 32
    iput p1, p0, Lru/okei/timetable/ui/OnboardDots;->current:I

    int-to-float p1, p1

    .line 33
    iput p1, p0, Lru/okei/timetable/ui/OnboardDots;->position:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 34
    iput p1, p0, Lru/okei/timetable/ui/OnboardDots;->appear:F

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lru/okei/timetable/ui/OnboardDots;->instant:Z

    .line 36
    invoke-virtual {p0}, Lru/okei/timetable/ui/OnboardDots;->invalidate()V

    return-void
.end method
