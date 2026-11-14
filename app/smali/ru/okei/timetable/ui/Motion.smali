.class public final Lru/okei/timetable/ui/Motion;
.super Ljava/lang/Object;
.source "Motion.java"


# static fields
.field private static final EASE:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3fe66666    # 1.8f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lru/okei/timetable/ui/Motion;->EASE:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appear(Landroid/view/View;JF)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 78
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 81
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 82
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 83
    invoke-static {p0}, Lru/okei/timetable/ui/Motion;->density(Landroid/view/View;)F

    move-result v0

    mul-float p3, p3, v0

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 85
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xf0

    .line 86
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 87
    invoke-static {}, Lru/okei/timetable/ui/Motion;->ease()Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static cancel(Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public static crossFade(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lru/okei/timetable/ui/Motion;->ease()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/ui/Motion$3;

    invoke-direct {v1, p1, p0}, Lru/okei/timetable/ui/Motion$3;-><init>(Ljava/lang/Runnable;Landroid/view/View;)V

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 146
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static delay(Landroid/content/Context;J)J
    .locals 0

    .line 36
    invoke-static {p0}, Lru/okei/timetable/ui/Motion;->reduced(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    return-wide p1
.end method

.method public static density(Landroid/view/View;)F
    .locals 0

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method public static duration(Landroid/content/Context;J)J
    .locals 0

    .line 32
    invoke-static {p0}, Lru/okei/timetable/ui/Motion;->reduced(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    return-wide p1
.end method

.method public static ease()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 43
    sget-object v0, Lru/okei/timetable/ui/Motion;->EASE:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public static fadeIn(Landroid/view/View;J)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 125
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xdc

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 128
    invoke-static {}, Lru/okei/timetable/ui/Motion;->ease()Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static flash(Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const v0, 0x3eb33333    # 0.35f

    .line 140
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-static {}, Lru/okei/timetable/ui/Motion;->ease()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static press(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f7851ec    # 0.97f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 62
    invoke-static {}, Lru/okei/timetable/ui/Motion;->ease()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/ui/Motion$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/ui/Motion$1;-><init>(Landroid/view/View;)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static reduced(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception p0

    const-string v1, "Motion"

    .line 26
    invoke-static {v1, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static stagger(Landroid/view/ViewGroup;JF)V
    .locals 1

    const/16 v0, 0xc

    .line 92
    invoke-static {p0, p1, p2, p3, v0}, Lru/okei/timetable/ui/Motion;->stagger(Landroid/view/ViewGroup;JFI)V

    return-void
.end method

.method public static stagger(Landroid/view/ViewGroup;JFI)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance v6, Lru/okei/timetable/ui/Motion$2;

    move-object v0, v6

    move-object v1, p0

    move v2, p4

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lru/okei/timetable/ui/Motion$2;-><init>(Landroid/view/ViewGroup;IJF)V

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
