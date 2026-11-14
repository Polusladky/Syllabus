.class public final Lru/okei/timetable/ui/Accordion;
.super Ljava/lang/Object;
.source "Accordion.java"


# static fields
.field private static final EASE:Landroid/view/animation/DecelerateInterpolator;

.field private static final RUNNING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOKENS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smmine(Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1}, Lru/okei/timetable/ui/Accordion;->mine(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lru/okei/timetable/ui/Accordion;->RUNNING:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lru/okei/timetable/ui/Accordion;->TOKENS:Ljava/util/Map;

    .line 24
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3fe66666    # 1.8f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lru/okei/timetable/ui/Accordion;->EASE:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cancel(Landroid/view/View;)V
    .locals 2

    .line 42
    sget-object v0, Lru/okei/timetable/ui/Accordion;->RUNNING:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 46
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static mine(Landroid/view/View;I)Z
    .locals 1

    .line 37
    sget-object v0, Lru/okei/timetable/ui/Accordion;->TOKENS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static naturalHeight(Landroid/view/View;)I
    .locals 3

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_1
    :goto_0
    if-gtz v0, :cond_2

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    .line 58
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 60
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 58
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->measure(II)V

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static nextToken(Landroid/view/View;)I
    .locals 3

    .line 30
    sget-object v0, Lru/okei/timetable/ui/Accordion;->TOKENS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    .line 32
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method private static resetHeights(Landroid/widget/LinearLayout;)V
    .locals 4

    const/4 v0, 0x0

    .line 78
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 83
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, -0x2

    .line 85
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 86
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 88
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x0

    .line 89
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static setHeight(Landroid/view/View;I)V
    .locals 2

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, p1, :cond_1

    return-void

    .line 73
    :cond_1
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static toggle(Landroid/widget/LinearLayout;ZII)V
    .locals 10

    if-nez p0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-static {p0}, Lru/okei/timetable/ui/Accordion;->nextToken(Landroid/view/View;)I

    move-result v6

    .line 104
    invoke-static {p0}, Lru/okei/timetable/ui/Accordion;->cancel(Landroid/view/View;)V

    .line 105
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 107
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v0, :cond_3

    .line 109
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 114
    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 115
    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 116
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, -0x2

    .line 118
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 119
    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    .line 124
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-gtz v2, :cond_7

    if-eqz p1, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    .line 126
    :cond_6
    invoke-static {p0}, Lru/okei/timetable/ui/Accordion;->naturalHeight(Landroid/view/View;)I

    move-result v2

    :cond_7
    :goto_4
    move v7, v2

    if-eqz p1, :cond_8

    .line 129
    invoke-static {p0}, Lru/okei/timetable/ui/Accordion;->naturalHeight(Landroid/view/View;)I

    move-result v2

    move v8, v2

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    .line 131
    :goto_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 133
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    :cond_9
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_a

    if-lez v7, :cond_b

    :cond_a
    const/high16 v3, 0x3f800000    # 1.0f

    .line 137
    :cond_b
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    int-to-long v2, p3

    int-to-long p2, p2

    sub-int/2addr v0, v5

    .line 139
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    mul-long p2, p2, v0

    const-wide/16 v0, 0x2

    div-long/2addr p2, v0

    add-long/2addr v2, p2

    const-wide/16 p2, 0x96

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 141
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 142
    invoke-virtual {v9, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    sget-object p2, Lru/okei/timetable/ui/Accordion;->EASE:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v9, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 144
    new-instance p2, Lru/okei/timetable/ui/Accordion$1;

    move-object v0, p2

    move-object v1, p0

    move v2, v6

    move v3, p1

    move v4, v7

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lru/okei/timetable/ui/Accordion$1;-><init>(Landroid/widget/LinearLayout;IZII)V

    invoke-virtual {v9, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 162
    new-instance p2, Lru/okei/timetable/ui/Accordion$2;

    invoke-direct {p2, p0, v6, p1}, Lru/okei/timetable/ui/Accordion$2;-><init>(Landroid/widget/LinearLayout;IZ)V

    invoke-virtual {v9, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 186
    sget-object p1, Lru/okei/timetable/ui/Accordion;->RUNNING:Ljava/util/Map;

    invoke-interface {p1, p0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
