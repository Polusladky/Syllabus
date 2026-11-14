.class public final Lru/okei/timetable/PagePager;
.super Ljava/lang/Object;
.source "PagePager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/PagePager$Host;
    }
.end annotation


# static fields
.field private static final SLIDE_MS:J = 0x8cL


# instance fields
.field private final activity:Landroid/app/Activity;

.field private dragging:Z

.field private final host:Lru/okei/timetable/PagePager$Host;

.field private left:Lru/okei/timetable/InfoPage;

.field private final main:Landroid/os/Handler;

.field private right:Lru/okei/timetable/InfoPage;

.field private shown:I

.field private startX:F

.field private startY:F

.field private final tick:Ljava/lang/Runnable;

.field private wasOpen:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmain(Lru/okei/timetable/PagePager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/PagePager;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshown(Lru/okei/timetable/PagePager;)I
    .locals 0

    iget p0, p0, Lru/okei/timetable/PagePager;->shown:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mcurrent(Lru/okei/timetable/PagePager;)Lru/okei/timetable/InfoPage;
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/PagePager;->current()Lru/okei/timetable/InfoPage;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdate(Lru/okei/timetable/PagePager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/PagePager;->update(I)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lru/okei/timetable/PagePager$Host;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lru/okei/timetable/PagePager;->main:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lru/okei/timetable/PagePager;->shown:I

    .line 37
    new-instance v0, Lru/okei/timetable/PagePager$1;

    invoke-direct {v0, p0}, Lru/okei/timetable/PagePager$1;-><init>(Lru/okei/timetable/PagePager;)V

    iput-object v0, p0, Lru/okei/timetable/PagePager;->tick:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lru/okei/timetable/PagePager;->activity:Landroid/app/Activity;

    .line 54
    iput-object p2, p0, Lru/okei/timetable/PagePager;->host:Lru/okei/timetable/PagePager$Host;

    return-void
.end method

.method private current()Lru/okei/timetable/InfoPage;
    .locals 1

    .line 189
    iget v0, p0, Lru/okei/timetable/PagePager;->shown:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/okei/timetable/PagePager;->left:Lru/okei/timetable/InfoPage;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lru/okei/timetable/PagePager;->right:Lru/okei/timetable/InfoPage;

    :goto_0
    return-object v0
.end method

.method private dp(F)F
    .locals 1

    .line 221
    iget-object v0, p0, Lru/okei/timetable/PagePager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    return p1
.end method

.method private shift(F)V
    .locals 2

    .line 207
    iget-object v0, p0, Lru/okei/timetable/PagePager;->activity:Landroid/app/Activity;

    const v1, 0x7f03001a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method private shiftAnimated(F)V
    .locals 2

    .line 214
    iget-object v0, p0, Lru/okei/timetable/PagePager;->activity:Landroid/app/Activity;

    const v1, 0x7f03001a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x8c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private update(I)V
    .locals 8

    if-nez p1, :cond_0

    .line 193
    iget-object v0, p0, Lru/okei/timetable/PagePager;->left:Lru/okei/timetable/InfoPage;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lru/okei/timetable/PagePager;->right:Lru/okei/timetable/InfoPage;

    :goto_0
    move-object v1, v0

    if-nez v1, :cond_1

    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/PagePager;->host:Lru/okei/timetable/PagePager$Host;

    invoke-interface {v0}, Lru/okei/timetable/PagePager$Host;->week()Lru/okei/timetable/data/WeekSchedule;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v0, v2}, Lru/okei/timetable/InfoPages;->of(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;)Lru/okei/timetable/InfoPages$State;

    move-result-object v0

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 199
    :goto_1
    :try_start_0
    invoke-static {v1, v0, p1}, Lru/okei/timetable/PageContent;->fill(Lru/okei/timetable/InfoPage;Lru/okei/timetable/InfoPages$State;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "PagePager"

    .line 201
    invoke-static {v0, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "\u0421\u0415\u0419\u0427\u0410\u0421"

    const-string v3, ""

    const-string v4, ""

    const-string v5, "\u041d\u0415\u0422 \u0414\u0410\u041d\u041d\u042b\u0425"

    const-string v6, ""

    const-string v7, ""

    .line 202
    invoke-virtual/range {v1 .. v7}, Lru/okei/timetable/InfoPage;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public attach(Landroid/widget/FrameLayout;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    new-instance v0, Lru/okei/timetable/InfoPage;

    iget-object v1, p0, Lru/okei/timetable/PagePager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lru/okei/timetable/InfoPage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/okei/timetable/PagePager;->left:Lru/okei/timetable/InfoPage;

    .line 62
    new-instance v0, Lru/okei/timetable/InfoPage;

    iget-object v1, p0, Lru/okei/timetable/PagePager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lru/okei/timetable/InfoPage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/okei/timetable/PagePager;->right:Lru/okei/timetable/InfoPage;

    .line 63
    iget-object v0, p0, Lru/okei/timetable/PagePager;->left:Lru/okei/timetable/InfoPage;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v0, p0, Lru/okei/timetable/PagePager;->right:Lru/okei/timetable/InfoPage;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public close()V
    .locals 3

    .line 168
    invoke-direct {p0}, Lru/okei/timetable/PagePager;->current()Lru/okei/timetable/InfoPage;

    move-result-object v0

    const/4 v1, -0x1

    .line 169
    iput v1, p0, Lru/okei/timetable/PagePager;->shown:I

    .line 170
    iget-object v1, p0, Lru/okei/timetable/PagePager;->main:Landroid/os/Handler;

    iget-object v2, p0, Lru/okei/timetable/PagePager;->tick:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 172
    invoke-virtual {v0, v1}, Lru/okei/timetable/InfoPage;->playOut(I)V

    :cond_0
    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, v0}, Lru/okei/timetable/PagePager;->shiftAnimated(F)V

    return-void
.end method

.method public dispatch(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 74
    iget-object v0, p0, Lru/okei/timetable/PagePager;->activity:Landroid/app/Activity;

    const v1, 0x7f03001c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 75
    iget-object v2, p0, Lru/okei/timetable/PagePager;->left:Lru/okei/timetable/InfoPage;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lru/okei/timetable/PagePager;->right:Lru/okei/timetable/InfoPage;

    if-nez v2, :cond_0

    goto/16 :goto_b

    .line 78
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    return v1

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    const/4 v4, 0x0

    if-eq v2, v3, :cond_d

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_d

    return v1

    .line 90
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v5, p0, Lru/okei/timetable/PagePager;->startX:F

    sub-float/2addr v2, v5

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v5, p0, Lru/okei/timetable/PagePager;->startY:F

    sub-float/2addr p1, v5

    .line 92
    iget-boolean v5, p0, Lru/okei/timetable/PagePager;->dragging:Z

    if-nez v5, :cond_7

    .line 93
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-direct {p0, v6}, Lru/okei/timetable/PagePager;->dp(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v6, 0x3fb33333    # 1.4f

    mul-float p1, p1, v6

    cmpg-float p1, v5, p1

    if-gez p1, :cond_3

    goto :goto_1

    .line 96
    :cond_3
    iget-boolean p1, p0, Lru/okei/timetable/PagePager;->wasOpen:Z

    if-nez p1, :cond_5

    cmpl-float p1, v2, v4

    if-lez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    .line 97
    :goto_0
    iput p1, p0, Lru/okei/timetable/PagePager;->shown:I

    .line 98
    invoke-direct {p0}, Lru/okei/timetable/PagePager;->current()Lru/okei/timetable/InfoPage;

    move-result-object p1

    .line 99
    invoke-virtual {p1, v1}, Lru/okei/timetable/InfoPage;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 100
    invoke-virtual {p1, v1}, Lru/okei/timetable/InfoPage;->setAlpha(F)V

    .line 101
    iget p1, p0, Lru/okei/timetable/PagePager;->shown:I

    invoke-direct {p0, p1}, Lru/okei/timetable/PagePager;->update(I)V

    .line 103
    :cond_5
    iput-boolean v3, p0, Lru/okei/timetable/PagePager;->dragging:Z

    goto :goto_2

    :cond_6
    :goto_1
    return v1

    .line 105
    :cond_7
    :goto_2
    invoke-direct {p0}, Lru/okei/timetable/PagePager;->current()Lru/okei/timetable/InfoPage;

    move-result-object p1

    if-nez p1, :cond_8

    return v3

    .line 110
    :cond_8
    iget-boolean v1, p0, Lru/okei/timetable/PagePager;->wasOpen:Z

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_4

    .line 113
    :cond_9
    iget v1, p0, Lru/okei/timetable/PagePager;->shown:I

    if-nez v1, :cond_a

    neg-int v1, v0

    goto :goto_3

    :cond_a
    move v1, v0

    :goto_3
    int-to-float v1, v1

    add-float/2addr v1, v2

    :goto_4
    neg-int v5, v0

    int-to-float v6, v5

    int-to-float v7, v0

    .line 115
    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 116
    invoke-virtual {p1, v1}, Lru/okei/timetable/InfoPage;->setTranslationX(F)V

    .line 117
    iget-boolean p1, p0, Lru/okei/timetable/PagePager;->wasOpen:Z

    if-eqz p1, :cond_c

    iget p1, p0, Lru/okei/timetable/PagePager;->shown:I

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    move v0, v5

    :goto_5
    int-to-float v4, v0

    :cond_c
    add-float/2addr v4, v2

    .line 118
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 119
    invoke-direct {p0, p1}, Lru/okei/timetable/PagePager;->shift(F)V

    return v3

    .line 124
    :cond_d
    iget-boolean v2, p0, Lru/okei/timetable/PagePager;->dragging:Z

    if-nez v2, :cond_e

    return v1

    .line 127
    :cond_e
    iput-boolean v1, p0, Lru/okei/timetable/PagePager;->dragging:Z

    .line 128
    invoke-direct {p0}, Lru/okei/timetable/PagePager;->current()Lru/okei/timetable/InfoPage;

    move-result-object v2

    if-nez v2, :cond_f

    return v3

    .line 132
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v5, p0, Lru/okei/timetable/PagePager;->startX:F

    sub-float/2addr p1, v5

    .line 134
    iget-boolean v5, p0, Lru/okei/timetable/PagePager;->wasOpen:Z

    const/high16 v6, 0x40400000    # 3.0f

    if-eqz v5, :cond_11

    .line 135
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float v5, v0

    div-float/2addr v5, v6

    cmpg-float p1, p1, v5

    if-gtz p1, :cond_10

    :goto_6
    const/4 p1, 0x1

    goto :goto_7

    :cond_10
    const/4 p1, 0x0

    goto :goto_7

    .line 137
    :cond_11
    iget v5, p0, Lru/okei/timetable/PagePager;->shown:I

    if-nez v5, :cond_12

    int-to-float v5, v0

    div-float/2addr v5, v6

    cmpl-float p1, p1, v5

    if-lez p1, :cond_10

    goto :goto_6

    :cond_12
    neg-float p1, p1

    int-to-float v5, v0

    div-float/2addr v5, v6

    cmpl-float p1, p1, v5

    if-lez p1, :cond_10

    goto :goto_6

    .line 139
    :goto_7
    iput-boolean v1, p0, Lru/okei/timetable/PagePager;->wasOpen:Z

    const-wide/16 v5, 0x8c

    if-eqz p1, :cond_14

    .line 141
    invoke-virtual {v2}, Lru/okei/timetable/InfoPage;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 142
    iget p1, p0, Lru/okei/timetable/PagePager;->shown:I

    if-nez p1, :cond_13

    int-to-float p1, v0

    goto :goto_8

    :cond_13
    neg-int p1, v0

    int-to-float p1, p1

    :goto_8
    invoke-direct {p0, p1}, Lru/okei/timetable/PagePager;->shiftAnimated(F)V

    .line 143
    iget-object p1, p0, Lru/okei/timetable/PagePager;->main:Landroid/os/Handler;

    iget-object v0, p0, Lru/okei/timetable/PagePager;->tick:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 144
    iget-object p1, p0, Lru/okei/timetable/PagePager;->main:Landroid/os/Handler;

    iget-object v0, p0, Lru/okei/timetable/PagePager;->tick:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 147
    :cond_14
    invoke-virtual {v2}, Lru/okei/timetable/InfoPage;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v1, p0, Lru/okei/timetable/PagePager;->shown:I

    if-nez v1, :cond_15

    neg-int v0, v0

    :cond_15
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 148
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lru/okei/timetable/PagePager$2;

    invoke-direct {v0, p0, v2}, Lru/okei/timetable/PagePager$2;-><init>(Lru/okei/timetable/PagePager;Lru/okei/timetable/InfoPage;)V

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, -0x1

    .line 156
    iput p1, p0, Lru/okei/timetable/PagePager;->shown:I

    .line 157
    invoke-direct {p0, v4}, Lru/okei/timetable/PagePager;->shiftAnimated(F)V

    .line 158
    iget-object p1, p0, Lru/okei/timetable/PagePager;->main:Landroid/os/Handler;

    iget-object v0, p0, Lru/okei/timetable/PagePager;->tick:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_9
    return v3

    .line 84
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lru/okei/timetable/PagePager;->startX:F

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lru/okei/timetable/PagePager;->startY:F

    .line 86
    iput-boolean v1, p0, Lru/okei/timetable/PagePager;->dragging:Z

    .line 87
    iget p1, p0, Lru/okei/timetable/PagePager;->shown:I

    if-ltz p1, :cond_17

    goto :goto_a

    :cond_17
    const/4 v3, 0x0

    :goto_a
    iput-boolean v3, p0, Lru/okei/timetable/PagePager;->wasOpen:Z

    :cond_18
    :goto_b
    return v1
.end method

.method public isOpen()Z
    .locals 1

    .line 70
    iget v0, p0, Lru/okei/timetable/PagePager;->shown:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 2

    .line 178
    iget-object v0, p0, Lru/okei/timetable/PagePager;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/PagePager;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .locals 4

    .line 182
    iget v0, p0, Lru/okei/timetable/PagePager;->shown:I

    if-ltz v0, :cond_0

    .line 183
    iget-object v0, p0, Lru/okei/timetable/PagePager;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/PagePager;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    iget-object v0, p0, Lru/okei/timetable/PagePager;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/PagePager;->tick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
