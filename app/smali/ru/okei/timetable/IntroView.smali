.class public final Lru/okei/timetable/IntroView;
.super Ljava/lang/Object;
.source "IntroView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/IntroView$Host;
    }
.end annotation


# static fields
.field private static final ALARMTYPE_MS:J = 0x12L

.field private static final CURSOR_MS:J = 0x208L

.field private static final DROP_MS:J = 0x140L

.field private static final ERASE_MS:J = 0x1eL

.field private static final HOLD_MS:J = 0x2bcL

.field private static final INTRO_CURSOR_MS:J = 0x140L

.field private static final SUBTYPE_MS:J = 0x18L

.field private static final TITLE_RES:I = 0x7f060003

.field private static final TYPE_MS:J = 0x34L

.field private static final VEIL_MS:J = 0x104L


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final host:Lru/okei/timetable/IntroView$Host;

.field private final main:Landroid/os/Handler;

.field private overlay:Landroid/widget/FrameLayout;

.field private running:Z

.field private text:Lru/okei/timetable/IntroOutlineView;


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lru/okei/timetable/IntroView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/IntroView;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoverlay(Lru/okei/timetable/IntroView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/IntroView;->overlay:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettext(Lru/okei/timetable/IntroView;)Lru/okei/timetable/IntroOutlineView;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/IntroView;->text:Lru/okei/timetable/IntroOutlineView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdropVeil(Lru/okei/timetable/IntroView;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/IntroView;->dropVeil()V

    return-void
.end method

.method static bridge synthetic -$$Nest$merase(Lru/okei/timetable/IntroView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/IntroView;->erase(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtype(Lru/okei/timetable/IntroView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/IntroView;->type(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtypeAlarmRow(Lru/okei/timetable/IntroView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/IntroView;->typeAlarmRow(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtypeSubtitle(Lru/okei/timetable/IntroView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/IntroView;->typeSubtitle(I)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lru/okei/timetable/IntroView$Host;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lru/okei/timetable/IntroView;->main:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lru/okei/timetable/IntroView;->running:Z

    .line 56
    iput-object p1, p0, Lru/okei/timetable/IntroView;->activity:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lru/okei/timetable/IntroView;->host:Lru/okei/timetable/IntroView$Host;

    return-void
.end method

.method private dropVeil()V
    .locals 3

    .line 198
    iget-object v0, p0, Lru/okei/timetable/IntroView;->overlay:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, v0}, Lru/okei/timetable/IntroView;->typeSubtitle(I)V

    return-void

    .line 202
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/IntroView$8;

    invoke-direct {v1, p0}, Lru/okei/timetable/IntroView$8;-><init>(Lru/okei/timetable/IntroView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private erase(I)V
    .locals 4

    .line 174
    iget-boolean v0, p0, Lru/okei/timetable/IntroView;->running:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/okei/timetable/IntroView;->text:Lru/okei/timetable/IntroOutlineView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/IntroView;->activity:Landroid/app/Activity;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 179
    iget-object v2, p0, Lru/okei/timetable/IntroView;->text:Lru/okei/timetable/IntroOutlineView;

    if-nez p1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lru/okei/timetable/IntroOutlineView;->setLabel(Ljava/lang/String;)V

    if-lez p1, :cond_2

    .line 181
    iget-object v0, p0, Lru/okei/timetable/IntroView;->main:Landroid/os/Handler;

    new-instance v1, Lru/okei/timetable/IntroView$6;

    invoke-direct {v1, p0, p1}, Lru/okei/timetable/IntroView$6;-><init>(Lru/okei/timetable/IntroView;I)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 188
    :cond_2
    iget-object p1, p0, Lru/okei/timetable/IntroView;->main:Landroid/os/Handler;

    new-instance v0, Lru/okei/timetable/IntroView$7;

    invoke-direct {v0, p0}, Lru/okei/timetable/IntroView$7;-><init>(Lru/okei/timetable/IntroView;)V

    const-wide/16 v1, 0x8c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private fitText()V
    .locals 2

    .line 88
    iget-object v0, p0, Lru/okei/timetable/IntroView;->text:Lru/okei/timetable/IntroOutlineView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/okei/timetable/IntroOutlineView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/IntroView;->text:Lru/okei/timetable/IntroOutlineView;

    new-instance v1, Lru/okei/timetable/IntroView$2;

    invoke-direct {v1, p0}, Lru/okei/timetable/IntroView$2;-><init>(Lru/okei/timetable/IntroView;)V

    invoke-virtual {v0, v1}, Lru/okei/timetable/IntroOutlineView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private type(I)V
    .locals 4

    .line 151
    iget-boolean v0, p0, Lru/okei/timetable/IntroView;->running:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/okei/timetable/IntroView;->text:Lru/okei/timetable/IntroOutlineView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/IntroView;->activity:Landroid/app/Activity;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lru/okei/timetable/IntroView;->text:Lru/okei/timetable/IntroOutlineView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/okei/timetable/IntroOutlineView;->setLabel(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 157
    iget-object v0, p0, Lru/okei/timetable/IntroView;->main:Landroid/os/Handler;

    new-instance v1, Lru/okei/timetable/IntroView$4;

    invoke-direct {v1, p0, p1}, Lru/okei/timetable/IntroView$4;-><init>(Lru/okei/timetable/IntroView;I)V

    const-wide/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 164
    :cond_1
    iget-object p1, p0, Lru/okei/timetable/IntroView;->main:Landroid/os/Handler;

    new-instance v1, Lru/okei/timetable/IntroView$5;

    invoke-direct {v1, p0, v0}, Lru/okei/timetable/IntroView$5;-><init>(Lru/okei/timetable/IntroView;Ljava/lang/String;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private typeAlarmRow(I)V
    .locals 4

    .line 232
    iget-boolean v0, p0, Lru/okei/timetable/IntroView;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/IntroView;->host:Lru/okei/timetable/IntroView$Host;

    invoke-interface {v0}, Lru/okei/timetable/IntroView$Host;->alarmStateText()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 237
    iget-object v1, p0, Lru/okei/timetable/IntroView;->host:Lru/okei/timetable/IntroView$Host;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lru/okei/timetable/IntroView$Host;->setAlarmText(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 239
    iget-object v0, p0, Lru/okei/timetable/IntroView;->main:Landroid/os/Handler;

    new-instance v1, Lru/okei/timetable/IntroView$10;

    invoke-direct {v1, p0, p1}, Lru/okei/timetable/IntroView$10;-><init>(Lru/okei/timetable/IntroView;I)V

    const-wide/16 v2, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 246
    :cond_1
    iget-object p1, p0, Lru/okei/timetable/IntroView;->host:Lru/okei/timetable/IntroView$Host;

    invoke-interface {p1}, Lru/okei/timetable/IntroView$Host;->alarmActionText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lru/okei/timetable/IntroView$Host;->setAlarmText(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lru/okei/timetable/IntroView;->finish()V

    :goto_0
    return-void
.end method

.method private typeSubtitle(I)V
    .locals 4

    .line 212
    iget-boolean v0, p0, Lru/okei/timetable/IntroView;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/IntroView;->host:Lru/okei/timetable/IntroView$Host;

    invoke-interface {v0}, Lru/okei/timetable/IntroView$Host;->subtitleText()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 217
    iget-object v1, p0, Lru/okei/timetable/IntroView;->host:Lru/okei/timetable/IntroView$Host;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lru/okei/timetable/IntroView$Host;->setSubtitle(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 219
    iget-object v0, p0, Lru/okei/timetable/IntroView;->main:Landroid/os/Handler;

    new-instance v1, Lru/okei/timetable/IntroView$9;

    invoke-direct {v1, p0, p1}, Lru/okei/timetable/IntroView$9;-><init>(Lru/okei/timetable/IntroView;I)V

    const-wide/16 v2, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 226
    :cond_1
    iget-object p1, p0, Lru/okei/timetable/IntroView;->host:Lru/okei/timetable/IntroView$Host;

    invoke-interface {p1}, Lru/okei/timetable/IntroView$Host;->iconsAppear()V

    .line 227
    invoke-direct {p0, v2}, Lru/okei/timetable/IntroView;->typeAlarmRow(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 2

    .line 71
    iget-object v0, p0, Lru/okei/timetable/IntroView;->activity:Landroid/app/Activity;

    const v1, 0x7f030018

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lru/okei/timetable/IntroView;->overlay:Landroid/widget/FrameLayout;

    .line 72
    iget-object v0, p0, Lru/okei/timetable/IntroView;->activity:Landroid/app/Activity;

    const v1, 0x7f030019

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/okei/timetable/IntroOutlineView;

    iput-object v0, p0, Lru/okei/timetable/IntroView;->text:Lru/okei/timetable/IntroOutlineView;

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lru/okei/timetable/IntroView;->fitText()V

    .line 76
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/IntroView;->overlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 77
    new-instance v1, Lru/okei/timetable/IntroView$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/IntroView$1;-><init>(Lru/okei/timetable/IntroView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 2

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lru/okei/timetable/IntroView;->running:Z

    .line 144
    iget-object v0, p0, Lru/okei/timetable/IntroView;->overlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 147
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/IntroView;->host:Lru/okei/timetable/IntroView$Host;

    invoke-interface {v0}, Lru/okei/timetable/IntroView$Host;->onFinished()V

    return-void
.end method

.method public hideOverlay()V
    .locals 2

    .line 61
    iget-object v0, p0, Lru/okei/timetable/IntroView;->overlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public iconsFinal()V
    .locals 1

    .line 67
    iget-object v0, p0, Lru/okei/timetable/IntroView;->host:Lru/okei/timetable/IntroView$Host;

    invoke-interface {v0}, Lru/okei/timetable/IntroView$Host;->iconsFinal()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lru/okei/timetable/IntroView;->running:Z

    return v0
.end method

.method public skip()V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lru/okei/timetable/IntroView;->finish()V

    return-void
.end method

.method public start()V
    .locals 4

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lru/okei/timetable/IntroView;->running:Z

    .line 120
    iget-object v0, p0, Lru/okei/timetable/IntroView;->overlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lru/okei/timetable/IntroView;->overlay:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 124
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/IntroView;->text:Lru/okei/timetable/IntroOutlineView;

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0, v1}, Lru/okei/timetable/IntroOutlineView;->setLabel(Ljava/lang/String;)V

    .line 127
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/IntroView;->host:Lru/okei/timetable/IntroView$Host;

    invoke-interface {v0, v1}, Lru/okei/timetable/IntroView$Host;->setSubtitle(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lru/okei/timetable/IntroView;->host:Lru/okei/timetable/IntroView$Host;

    invoke-interface {v0, v1, v1}, Lru/okei/timetable/IntroView$Host;->setAlarmText(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lru/okei/timetable/IntroView;->host:Lru/okei/timetable/IntroView$Host;

    invoke-interface {v0}, Lru/okei/timetable/IntroView$Host;->iconsHidden()V

    .line 130
    iget-object v0, p0, Lru/okei/timetable/IntroView;->main:Landroid/os/Handler;

    new-instance v1, Lru/okei/timetable/IntroView$3;

    invoke-direct {v1, p0}, Lru/okei/timetable/IntroView$3;-><init>(Lru/okei/timetable/IntroView;)V

    const-wide/16 v2, 0x244

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
