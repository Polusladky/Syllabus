.class public final Lru/okei/timetable/OnboardActivity;
.super Landroid/app/Activity;
.source "OnboardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/OnboardActivity$ScrambleWatcher;
    }
.end annotation


# static fields
.field public static final KEY_DONE:Ljava/lang/String; = "done"

.field private static final PAGES:I = 0x4

.field public static final PREFS:Ljava/lang/String; = "onboard"

.field public static final REPO_NAME:Ljava/lang/String; = "POLUSLADKY/TABEL"

.field public static final REPO_URL:Ljava/lang/String; = "https://github.com/Polusladky/Tabel"

.field private static final REQ_PERMISSION:I = 0x47

.field private static final SCRAMBLE:Ljava/lang/String; = "@#%&$?!/\\|<>*+=-~"


# instance fields
.field private animating:Z

.field private bar:Lru/okei/timetable/ui/SplitBar;

.field private final blinkError:Ljava/lang/Runnable;

.field private dots:Lru/okei/timetable/ui/OnboardDots;

.field private errorView:Landroid/widget/TextView;

.field private exampleView:Landroid/widget/TextView;

.field private final flash:Ljava/lang/StringBuilder;

.field private generation:I

.field private groupInput:Landroid/widget/EditText;

.field private holder:Landroid/widget/FrameLayout;

.field private introPlayed:Z

.field private final main:Landroid/os/Handler;

.field private nav:Landroid/widget/FrameLayout;

.field private page:I

.field private final permissionActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final permissionRows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final permissionTitles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private pixelFont:Landroid/graphics/Typeface;

.field private final random:Ljava/util/Random;


# direct methods
.method static bridge synthetic -$$Nest$fgetanimating(Lru/okei/timetable/OnboardActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lru/okei/timetable/OnboardActivity;->animating:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbar(Lru/okei/timetable/OnboardActivity;)Lru/okei/timetable/ui/SplitBar;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdots(Lru/okei/timetable/OnboardActivity;)Lru/okei/timetable/ui/OnboardDots;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/OnboardActivity;->dots:Lru/okei/timetable/ui/OnboardDots;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeterrorView(Lru/okei/timetable/OnboardActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/OnboardActivity;->errorView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexampleView(Lru/okei/timetable/OnboardActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/OnboardActivity;->exampleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgeneration(Lru/okei/timetable/OnboardActivity;)I
    .locals 0

    iget p0, p0, Lru/okei/timetable/OnboardActivity;->generation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupInput(Lru/okei/timetable/OnboardActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetholder(Lru/okei/timetable/OnboardActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/OnboardActivity;->holder:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmain(Lru/okei/timetable/OnboardActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpage(Lru/okei/timetable/OnboardActivity;)I
    .locals 0

    iget p0, p0, Lru/okei/timetable/OnboardActivity;->page:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrandom(Lru/okei/timetable/OnboardActivity;)Ljava/util/Random;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/OnboardActivity;->random:Ljava/util/Random;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputanimating(Lru/okei/timetable/OnboardActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/OnboardActivity;->animating:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputintroPlayed(Lru/okei/timetable/OnboardActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/OnboardActivity;->introPlayed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpage(Lru/okei/timetable/OnboardActivity;I)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/OnboardActivity;->page:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildContent(Lru/okei/timetable/OnboardActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/OnboardActivity;->buildContent(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdp(Lru/okei/timetable/OnboardActivity;F)I
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mfadeIn(Lru/okei/timetable/OnboardActivity;Landroid/view/View;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lru/okei/timetable/OnboardActivity;->fadeIn(Landroid/view/View;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgoTo(Lru/okei/timetable/OnboardActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/OnboardActivity;->goTo(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlamp(Lru/okei/timetable/OnboardActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/OnboardActivity;->lamp(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNext(Lru/okei/timetable/OnboardActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/OnboardActivity;->onNext()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtypeBackLabel(Lru/okei/timetable/OnboardActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/OnboardActivity;->typeBackLabel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtypeBarText(Lru/okei/timetable/OnboardActivity;Ljava/lang/String;JJLjava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lru/okei/timetable/OnboardActivity;->typeBarText(Ljava/lang/String;JJLjava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtypeText(Lru/okei/timetable/OnboardActivity;Landroid/widget/TextView;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lru/okei/timetable/OnboardActivity;->typeText(Landroid/widget/TextView;Ljava/lang/String;JJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtypeText(Lru/okei/timetable/OnboardActivity;Landroid/widget/TextView;Ljava/lang/String;JJLjava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lru/okei/timetable/OnboardActivity;->typeText(Landroid/widget/TextView;Ljava/lang/String;JJLjava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtypeTextScramble(Lru/okei/timetable/OnboardActivity;Landroid/widget/TextView;Ljava/lang/String;JJLjava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lru/okei/timetable/OnboardActivity;->typeTextScramble(Landroid/widget/TextView;Ljava/lang/String;JJLjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/OnboardActivity;->flash:Ljava/lang/StringBuilder;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    .line 48
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/OnboardActivity;->random:Ljava/util/Random;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/OnboardActivity;->permissionActions:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/OnboardActivity;->permissionTitles:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/OnboardActivity;->permissionRows:Ljava/util/Map;

    .line 179
    new-instance v0, Lru/okei/timetable/OnboardActivity$3;

    invoke-direct {v0, p0}, Lru/okei/timetable/OnboardActivity$3;-><init>(Lru/okei/timetable/OnboardActivity;)V

    iput-object v0, p0, Lru/okei/timetable/OnboardActivity;->blinkError:Ljava/lang/Runnable;

    return-void
.end method

.method private buildContent(Z)V
    .locals 5

    .line 276
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 277
    iget v0, p0, Lru/okei/timetable/OnboardActivity;->generation:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lru/okei/timetable/OnboardActivity;->generation:I

    .line 280
    iget v0, p0, Lru/okei/timetable/OnboardActivity;->page:I

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 291
    invoke-direct {p0, p1}, Lru/okei/timetable/OnboardActivity;->pageThanks(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 288
    :cond_0
    invoke-direct {p0, p1}, Lru/okei/timetable/OnboardActivity;->pagePermissions(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 285
    :cond_1
    invoke-direct {p0, p1}, Lru/okei/timetable/OnboardActivity;->pageGroup(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 282
    iget-boolean v0, p0, Lru/okei/timetable/OnboardActivity;->introPlayed:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lru/okei/timetable/OnboardActivity;->pageName(Z)Landroid/view/View;

    move-result-object v0

    .line 301
    :goto_1
    iput-boolean v1, p0, Lru/okei/timetable/OnboardActivity;->animating:Z

    .line 302
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity;->holder:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_4

    const/high16 v2, -0x3e800000    # -16.0f

    goto :goto_2

    :cond_4
    const/high16 v2, 0x41a00000    # 20.0f

    .line 303
    :goto_2
    invoke-direct {p0, v2}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v2

    int-to-float v2, v2

    if-eqz p1, :cond_5

    const/high16 p1, 0x41800000    # 16.0f

    goto :goto_3

    :cond_5
    const/high16 p1, -0x3e600000    # -20.0f

    .line 304
    :goto_3
    invoke-direct {p0, p1}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result p1

    int-to-float p1, p1

    .line 305
    iget-object v3, p0, Lru/okei/timetable/OnboardActivity;->holder:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x78

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lru/okei/timetable/OnboardActivity$6;

    invoke-direct {v3, p0, v0, p1}, Lru/okei/timetable/OnboardActivity$6;-><init>(Lru/okei/timetable/OnboardActivity;Landroid/view/View;F)V

    .line 306
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 320
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 322
    iget-object p1, p0, Lru/okei/timetable/OnboardActivity;->dots:Lru/okei/timetable/ui/OnboardDots;

    iget v0, p0, Lru/okei/timetable/OnboardActivity;->page:I

    invoke-virtual {p1, v0, v1}, Lru/okei/timetable/ui/OnboardDots;->setPage(IZ)V

    return-void
.end method

.method private buttonLabel()I
    .locals 2

    .line 148
    iget v0, p0, Lru/okei/timetable/OnboardActivity;->page:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f0600d9

    goto :goto_0

    :cond_0
    const v0, 0x7f0600cf

    :goto_0
    return v0
.end method

.method public static done(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "onboard"

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "done"

    .line 71
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private dp(F)I
    .locals 1

    .line 1035
    invoke-virtual {p0}, Lru/okei/timetable/OnboardActivity;->getResources()Landroid/content/res/Resources;

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

.method private fadeIn(Landroid/view/View;J)V
    .locals 2

    .line 995
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 996
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 997
    invoke-direct {p0, v1}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 998
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private flashError()V
    .locals 4

    .line 168
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->errorView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity;->blinkError:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->errorView:Landroid/widget/TextView;

    const v1, 0x7f0600c9

    invoke-virtual {p0, v1}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->errorView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->errorView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 176
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity;->blinkError:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private goTo(I)V
    .locals 3

    .line 220
    iget v0, p0, Lru/okei/timetable/OnboardActivity;->page:I

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p1, :cond_1

    if-ne v0, v1, :cond_1

    .line 222
    new-instance p1, Lru/okei/timetable/OnboardActivity$4;

    invoke-direct {p1, p0}, Lru/okei/timetable/OnboardActivity$4;-><init>(Lru/okei/timetable/OnboardActivity;)V

    invoke-direct {p0, p1}, Lru/okei/timetable/OnboardActivity;->playReverseSplit(Ljava/lang/Runnable;)V

    return-void

    .line 234
    :cond_1
    iput p1, p0, Lru/okei/timetable/OnboardActivity;->page:I

    .line 235
    invoke-direct {p0, v2}, Lru/okei/timetable/OnboardActivity;->buildContent(Z)V

    .line 236
    iget p1, p0, Lru/okei/timetable/OnboardActivity;->page:I

    if-nez p1, :cond_2

    .line 237
    iget-object p1, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    invoke-virtual {p1}, Lru/okei/timetable/ui/SplitBar;->showSingle()V

    .line 238
    iget-object p1, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    invoke-direct {p0}, Lru/okei/timetable/OnboardActivity;->buttonLabel()I

    move-result v0

    invoke-virtual {p0, v0}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/okei/timetable/ui/SplitBar;->setNextText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-ne p1, v1, :cond_3

    if-eqz v2, :cond_3

    .line 240
    invoke-direct {p0}, Lru/okei/timetable/OnboardActivity;->playSplit()V

    goto :goto_1

    .line 242
    :cond_3
    invoke-direct {p0}, Lru/okei/timetable/OnboardActivity;->showBarForPage()V

    :goto_1
    return-void
.end method

.method private lamp(Landroid/view/View;)V
    .locals 10

    const/4 v0, 0x0

    .line 931
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x5

    new-array v1, v0, [F

    .line 932
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 934
    aget v3, v1, v2

    .line 935
    iget-object v4, p0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v5, Lru/okei/timetable/OnboardActivity$23;

    invoke-direct {v5, p0, p1, v3}, Lru/okei/timetable/OnboardActivity$23;-><init>(Lru/okei/timetable/OnboardActivity;Landroid/view/View;F)V

    int-to-long v6, v2

    const-wide/16 v8, 0xaa

    mul-long v6, v6, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3eb33333    # 0.35f
        0x3da3d70a    # 0.08f
        0x3f333333    # 0.7f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private onNext()V
    .locals 3

    .line 152
    iget v0, p0, Lru/okei/timetable/OnboardActivity;->page:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lru/okei/timetable/OnboardActivity;->saveGroup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lru/okei/timetable/OnboardActivity;->flashError()V

    return-void

    .line 156
    :cond_0
    iget v0, p0, Lru/okei/timetable/OnboardActivity;->page:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const-string v0, "onboard"

    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0, v0, v2}, Lru/okei/timetable/OnboardActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "done"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/okei/timetable/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lru/okei/timetable/OnboardActivity;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 159
    invoke-virtual {p0, v0, v1}, Lru/okei/timetable/OnboardActivity;->overridePendingTransition(II)V

    .line 160
    invoke-virtual {p0}, Lru/okei/timetable/OnboardActivity;->finish()V

    return-void

    :cond_1
    add-int/2addr v0, v1

    .line 163
    invoke-direct {p0, v0}, Lru/okei/timetable/OnboardActivity;->goTo(I)V

    return-void
.end method

.method private pageGroup(Z)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    .line 487
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 488
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    .line 489
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 491
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 492
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 493
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 494
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v5, 0x7f0600cd

    .line 496
    invoke-virtual {v0, v5}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v6

    const/high16 v7, 0x41900000    # 18.0f

    invoke-direct {v0, v5, v7, v6}, Lru/okei/timetable/OnboardActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v5

    .line 497
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 498
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v6, 0x7f0600cb

    .line 500
    invoke-virtual {v0, v6}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v8, 0x41500000    # 13.0f

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->muted(Landroid/content/Context;)I

    move-result v9

    invoke-direct {v0, v6, v8, v9}, Lru/okei/timetable/OnboardActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v6

    .line 501
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v8, 0x41200000    # 10.0f

    .line 502
    invoke-direct {v0, v8}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v8

    const/high16 v9, 0x41d00000    # 26.0f

    invoke-direct {v0, v9}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v8, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 503
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 505
    new-instance v8, Landroid/widget/EditText;

    invoke-direct {v8, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    .line 506
    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 507
    iget-object v8, v0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Lru/okei/timetable/OnboardActivity;->pixel()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 508
    iget-object v8, v0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    const/4 v9, 0x2

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v8, v9, v11}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 509
    iget-object v8, v0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTextColor(I)V

    .line 510
    iget-object v8, v0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->dim(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 511
    iget-object v8, v0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 512
    iget-object v8, v0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    const/high16 v9, 0x41000000    # 8.0f

    invoke-direct {v0, v9}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v12

    invoke-direct {v0, v9}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v13

    invoke-direct {v0, v9}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v14

    invoke-virtual {v8, v12, v10, v13, v14}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 513
    iget-object v8, v0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 514
    iget-object v8, v0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    invoke-direct {v0, v9}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v13

    invoke-direct {v0, v9}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v9

    const/high16 v14, 0x41400000    # 12.0f

    invoke-direct {v0, v14}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v15

    invoke-virtual {v8, v13, v10, v9, v15}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 515
    iget-object v8, v0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 516
    iget-object v8, v0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/data/Groups;->current(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v8, v0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    const-string v8, ""

    .line 519
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->dim(Landroid/content/Context;)I

    move-result v9

    invoke-direct {v0, v8, v11, v9}, Lru/okei/timetable/OnboardActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v8

    .line 520
    iput-object v8, v0, Lru/okei/timetable/OnboardActivity;->exampleView:Landroid/widget/TextView;

    .line 521
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 523
    new-instance v9, Lru/okei/timetable/ui/Shelf;

    invoke-direct {v9, v0}, Lru/okei/timetable/ui/Shelf;-><init>(Landroid/content/Context;)V

    .line 524
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v9, v11}, Lru/okei/timetable/ui/Shelf;->setColor(I)V

    .line 525
    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 526
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x1

    invoke-direct {v13, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v9, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    iget-object v13, v0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v13, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v12, v13, v13, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v8, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x43660000    # 230.0f

    invoke-direct {v0, v13}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v13

    const/high16 v15, 0x42600000    # 56.0f

    invoke-direct {v0, v15}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v15

    invoke-direct {v12, v13, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 534
    iput v2, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 535
    invoke-virtual {v4, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v12, 0x7f0600cc

    .line 537
    invoke-virtual {v0, v12}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/high16 v13, 0x41300000    # 11.0f

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->dim(Landroid/content/Context;)I

    move-result v15

    invoke-direct {v0, v12, v13, v15}, Lru/okei/timetable/OnboardActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v12

    .line 538
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 539
    invoke-direct {v0, v7}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v7

    invoke-virtual {v12, v10, v7, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v7, 0x0

    .line 540
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 541
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v13, 0x7f0600c9

    .line 543
    invoke-virtual {v0, v13}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v15

    invoke-direct {v0, v13, v14, v15}, Lru/okei/timetable/OnboardActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v13

    iput-object v13, v0, Lru/okei/timetable/OnboardActivity;->errorView:Landroid/widget/TextView;

    .line 544
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 545
    iget-object v3, v0, Lru/okei/timetable/OnboardActivity;->errorView:Landroid/widget/TextView;

    invoke-direct {v0, v14}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v13

    invoke-virtual {v3, v10, v13, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 546
    iget-object v3, v0, Lru/okei/timetable/OnboardActivity;->errorView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 547
    iget-object v3, v0, Lru/okei/timetable/OnboardActivity;->errorView:Landroid/widget/TextView;

    const/4 v13, 0x4

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    iget-object v3, v0, Lru/okei/timetable/OnboardActivity;->errorView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v3, 0x8

    const-wide/16 v13, 0x78

    if-nez p1, :cond_0

    .line 552
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 553
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 554
    invoke-virtual {v11, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 555
    iget-object v2, v0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setAlpha(F)V

    .line 556
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 557
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    iget-object v2, v0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v3, Lru/okei/timetable/OnboardActivity$12;

    invoke-direct {v3, v0, v11, v9, v12}, Lru/okei/timetable/OnboardActivity$12;-><init>(Lru/okei/timetable/OnboardActivity;Landroid/widget/FrameLayout;Lru/okei/timetable/ui/Shelf;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 566
    iget-object v2, v0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v3, Lru/okei/timetable/OnboardActivity$13;

    invoke-direct {v3, v0, v5, v6}, Lru/okei/timetable/OnboardActivity$13;-><init>(Lru/okei/timetable/OnboardActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v4, 0x208

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v1

    .line 578
    :cond_0
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 579
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 580
    invoke-virtual {v11, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 581
    invoke-direct {v0, v5, v13, v14}, Lru/okei/timetable/OnboardActivity;->fadeIn(Landroid/view/View;J)V

    .line 582
    invoke-direct {v0, v6, v13, v14}, Lru/okei/timetable/OnboardActivity;->fadeIn(Landroid/view/View;J)V

    .line 584
    iget-object v4, v0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    new-instance v5, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;-><init>(Lru/okei/timetable/OnboardActivity;Lru/okei/timetable/OnboardActivity$ScrambleWatcher-IA;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 586
    iget-object v4, v0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 588
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    :cond_2
    iget-object v3, v0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v4, Lru/okei/timetable/OnboardActivity$14;

    invoke-direct {v4, v0, v11, v9}, Lru/okei/timetable/OnboardActivity$14;-><init>(Lru/okei/timetable/OnboardActivity;Landroid/widget/FrameLayout;Lru/okei/timetable/ui/Shelf;)V

    const-wide/16 v5, 0x280

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 602
    iget-object v3, v0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v4, Lru/okei/timetable/OnboardActivity$15;

    invoke-direct {v4, v0, v2, v8}, Lru/okei/timetable/OnboardActivity$15;-><init>(Lru/okei/timetable/OnboardActivity;ZLandroid/widget/TextView;)V

    const-wide/16 v5, 0x578

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 619
    iget-object v3, v0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v4, Lru/okei/timetable/OnboardActivity$16;

    invoke-direct {v4, v0, v12}, Lru/okei/timetable/OnboardActivity$16;-><init>(Lru/okei/timetable/OnboardActivity;Landroid/widget/TextView;)V

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0xa28

    :goto_1
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v1
.end method

.method private pageName(Z)Landroid/view/View;
    .locals 12

    .line 442
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 443
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 444
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 446
    new-instance v3, Lru/okei/timetable/ui/PixelRevealText;

    invoke-direct {v3, p0}, Lru/okei/timetable/ui/PixelRevealText;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 448
    invoke-virtual {p0}, Lru/okei/timetable/OnboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v6, 0x42300000    # 44.0f

    mul-float v7, v5, v6

    const-string v5, "SYLLABUS"

    .line 449
    invoke-direct {p0}, Lru/okei/timetable/OnboardActivity;->pixel()Landroid/graphics/Typeface;

    move-result-object v6

    const/high16 v11, 0x41b00000    # 22.0f

    div-float v8, v7, v11

    const/4 v10, 0x0

    move-object v9, v4

    invoke-static/range {v5 .. v10}, Lru/okei/timetable/ui/PixelRevealText;->rasterize(Ljava/lang/String;Landroid/graphics/Typeface;FF[IZ)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v7, v4, v6

    aget v1, v4, v1

    .line 451
    invoke-virtual {v3, v5, v7, v1}, Lru/okei/timetable/ui/PixelRevealText;->setPixels([III)V

    .line 452
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, v1}, Lru/okei/timetable/ui/PixelRevealText;->setColor(I)V

    .line 453
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42a00000    # 80.0f

    .line 454
    invoke-direct {p0, v4}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 453
    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41500000    # 13.0f

    .line 456
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->muted(Landroid/content/Context;)I

    move-result v4

    const-string v5, ""

    invoke-direct {p0, v5, v1, v4}, Lru/okei/timetable/OnboardActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v1

    const/4 v4, 0x0

    .line 457
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 458
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 459
    invoke-direct {p0, v11}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v2

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 460
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    const-wide/16 v4, 0xe10

    .line 463
    invoke-virtual {v3, v4, v5}, Lru/okei/timetable/ui/PixelRevealText;->reveal(J)V

    .line 464
    iget-object p1, p0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v2, Lru/okei/timetable/OnboardActivity$11;

    invoke-direct {v2, p0, v1}, Lru/okei/timetable/OnboardActivity$11;-><init>(Lru/okei/timetable/OnboardActivity;Landroid/widget/TextView;)V

    const-wide/16 v3, 0xfa0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 477
    :cond_0
    invoke-virtual {v3}, Lru/okei/timetable/ui/PixelRevealText;->showAll()V

    const p1, 0x7f0600da

    .line 478
    invoke-virtual {p0, p1}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 479
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-object v0
.end method

.method private pagePermissions(Z)Landroid/view/View;
    .locals 12

    .line 675
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->permissionActions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 676
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->permissionTitles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 677
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->permissionRows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 678
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 679
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v2, 0x7f0600d7

    .line 681
    invoke-virtual {p0, v2}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41500000    # 13.0f

    .line 682
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v4

    .line 681
    invoke-direct {p0, v2, v3, v4}, Lru/okei/timetable/OnboardActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x11

    .line 683
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 684
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 685
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 686
    new-instance v3, Lru/okei/timetable/OnboardActivity$17;

    invoke-direct {v3, p0, v2}, Lru/okei/timetable/OnboardActivity$17;-><init>(Lru/okei/timetable/OnboardActivity;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 701
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 702
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 703
    invoke-direct {p0, v3}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 704
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x6

    new-array v5, v3, [I

    .line 706
    fill-array-data v5, :array_0

    .line 708
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 709
    invoke-static {p0}, Lru/okei/timetable/Permissions;->all(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_4

    const/4 v9, 0x0

    .line 711
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 712
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lru/okei/timetable/Permissions$Item;

    iget v10, v10, Lru/okei/timetable/Permissions$Item;->kind:I

    aget v11, v5, v8

    if-ne v10, v11, :cond_2

    if-eq v11, v3, :cond_1

    const/4 v10, 0x5

    if-ne v11, v10, :cond_0

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v10, 0x1

    .line 715
    :goto_3
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lru/okei/timetable/Permissions$Item;

    invoke-direct {p0, v9, v10}, Lru/okei/timetable/OnboardActivity;->permissionRow(Lru/okei/timetable/Permissions$Item;Z)Landroid/view/View;

    move-result-object v9

    .line 716
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 717
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    new-array p1, v4, [Landroid/view/View;

    .line 723
    invoke-interface {v6, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [Landroid/view/View;

    const-wide/16 v3, 0x3c

    const-wide/16 v5, 0xf0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lru/okei/timetable/OnboardActivity;->stepped([Landroid/view/View;JJ)V

    goto :goto_6

    .line 725
    :cond_5
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_6

    .line 726
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v2, 0x0

    .line 727
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    const/high16 v2, 0x41000000    # 8.0f

    .line 728
    invoke-direct {p0, v2}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 730
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v3, Lru/okei/timetable/OnboardActivity$18;

    invoke-direct {v3, p0, p1}, Lru/okei/timetable/OnboardActivity$18;-><init>(Lru/okei/timetable/OnboardActivity;Landroid/view/View;)V

    .line 735
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    sub-int/2addr p1, v4

    int-to-long v7, p1

    const-wide/16 v9, 0x2d

    mul-long v7, v7, v9

    const-wide/16 v9, 0x50

    add-long/2addr v7, v9

    .line 730
    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    return-object v0

    :array_0
    .array-data 4
        0x1
        0x0
        0x2
        0x3
        0x6
        0x5
    .end array-data
.end method

.method private pageThanks(Z)Landroid/view/View;
    .locals 12

    .line 852
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 853
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 854
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 856
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 857
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41a80000    # 21.0f

    .line 860
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v6

    const-string v7, ""

    invoke-direct {p0, v7, v2, v6}, Lru/okei/timetable/OnboardActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v2

    const/16 v6, 0x11

    .line 861
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 862
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v9, 0x3

    .line 863
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    const/high16 v9, 0x40800000    # 4.0f

    .line 864
    invoke-direct {p0, v9}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v9, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 865
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v5, v3, v9, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 869
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 870
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 871
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 873
    new-instance v3, Lru/okei/timetable/ui/PixelGithubView;

    invoke-direct {v3, p0}, Lru/okei/timetable/ui/PixelGithubView;-><init>(Landroid/content/Context;)V

    .line 874
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42580000    # 54.0f

    invoke-direct {p0, v10}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v11

    invoke-direct {p0, v10}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v10

    invoke-direct {v5, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 875
    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 876
    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x41500000    # 13.0f

    .line 878
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v5

    invoke-direct {p0, v7, v0, v5}, Lru/okei/timetable/OnboardActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v0

    .line 879
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v5, 0x41600000    # 14.0f

    .line 880
    invoke-direct {p0, v5}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v5

    invoke-virtual {v0, v4, v5, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 881
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 884
    new-instance v4, Lru/okei/timetable/OnboardActivity$21;

    invoke-direct {v4, p0}, Lru/okei/timetable/OnboardActivity$21;-><init>(Lru/okei/timetable/OnboardActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 894
    invoke-static {v1}, Lru/okei/timetable/ui/Pressable;->attach(Landroid/view/View;)V

    .line 896
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41000000    # 8.0f

    .line 898
    invoke-direct {p0, v5}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 899
    invoke-virtual {v8, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0600db

    if-nez p1, :cond_0

    .line 902
    invoke-virtual {p0, v1}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    invoke-virtual {v3}, Lru/okei/timetable/ui/PixelGithubView;->showAll()V

    const-string v1, "POLUSLADKY/TABEL"

    .line 904
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v8

    .line 908
    :cond_0
    invoke-virtual {p0, v1}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0xb4

    const-wide/16 v9, 0x37

    new-instance v7, Lru/okei/timetable/OnboardActivity$22;

    invoke-direct {v7, p0, v3, v0}, Lru/okei/timetable/OnboardActivity$22;-><init>(Lru/okei/timetable/OnboardActivity;Lru/okei/timetable/ui/PixelGithubView;Landroid/widget/TextView;)V

    move-object v0, p0

    move-object v1, v2

    move-object v2, v4

    move-wide v3, v5

    move-wide v5, v9

    invoke-direct/range {v0 .. v7}, Lru/okei/timetable/OnboardActivity;->typeText(Landroid/widget/TextView;Ljava/lang/String;JJLjava/lang/Runnable;)V

    return-object v8
.end method

.method private permissionRow(Lru/okei/timetable/Permissions$Item;Z)Landroid/view/View;
    .locals 9

    .line 742
    iget v0, p1, Lru/okei/timetable/Permissions$Item;->kind:I

    invoke-static {p0, v0}, Lru/okei/timetable/Permissions;->granted(Landroid/content/Context;I)Z

    move-result v0

    .line 744
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 745
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 746
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v4, 0x40c00000    # 6.0f

    .line 747
    invoke-direct {p0, v4}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v5

    invoke-direct {p0, v4}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v4

    invoke-virtual {v1, v2, v5, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 749
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 750
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 752
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 753
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 754
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 755
    iget-object v3, p1, Lru/okei/timetable/Permissions$Item;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->muted(Landroid/content/Context;)I

    move-result v6

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v6

    :goto_0
    const/high16 v7, 0x41500000    # 13.0f

    invoke-direct {p0, v3, v7, v6}, Lru/okei/timetable/OnboardActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v3

    .line 756
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/high16 v6, 0x41000000    # 8.0f

    if-eqz p2, :cond_1

    const p2, 0x7f0600d1

    .line 758
    invoke-virtual {p0, p2}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->dim(Landroid/content/Context;)I

    move-result v7

    invoke-direct {p0, p2, v6, v7}, Lru/okei/timetable/OnboardActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object p2

    .line 759
    invoke-direct {p0, v6}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v7

    invoke-virtual {p2, v7, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 760
    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 762
    :cond_1
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 764
    iget-object p2, p1, Lru/okei/timetable/Permissions$Item;->why:Ljava/lang/String;

    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->dim(Landroid/content/Context;)I

    move-result v5

    const/high16 v7, 0x41300000    # 11.0f

    invoke-direct {p0, p2, v7, v5}, Lru/okei/timetable/OnboardActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object p2

    const/high16 v5, 0x40400000    # 3.0f

    .line 765
    invoke-direct {p0, v5}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v5

    invoke-virtual {p2, v2, v5, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 766
    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 768
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {p2, v2, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_2

    const p2, 0x7f0600d4

    .line 771
    invoke-virtual {p0, p2}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const p2, 0x7f0600d2

    .line 772
    invoke-virtual {p0, p2}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz v0, :cond_3

    .line 773
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->muted(Landroid/content/Context;)I

    move-result v4

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v4

    .line 771
    :goto_2
    invoke-direct {p0, p2, v7, v4}, Lru/okei/timetable/OnboardActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object p2

    .line 774
    invoke-direct {p0, v6}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct {p0, v5}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v6

    invoke-direct {p0, v5}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v5

    invoke-virtual {p2, v4, v6, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 775
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 777
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity;->permissionActions:Ljava/util/Map;

    iget v4, p1, Lru/okei/timetable/Permissions$Item;->kind:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object p2, p0, Lru/okei/timetable/OnboardActivity;->permissionTitles:Ljava/util/Map;

    iget v2, p1, Lru/okei/timetable/Permissions$Item;->kind:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    iget-object p2, p0, Lru/okei/timetable/OnboardActivity;->permissionRows:Ljava/util/Map;

    iget v2, p1, Lru/okei/timetable/Permissions$Item;->kind:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 781
    new-instance p2, Lru/okei/timetable/OnboardActivity$19;

    invoke-direct {p2, p0, p1}, Lru/okei/timetable/OnboardActivity$19;-><init>(Lru/okei/timetable/OnboardActivity;Lru/okei/timetable/Permissions$Item;)V

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-object v1
.end method

.method private pixel()Landroid/graphics/Typeface;
    .locals 2

    .line 1028
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->pixelFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 1029
    invoke-virtual {p0}, Lru/okei/timetable/OnboardActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Tiny5-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/OnboardActivity;->pixelFont:Landroid/graphics/Typeface;

    .line 1031
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->pixelFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private playIntro()V
    .locals 4

    .line 248
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    invoke-virtual {v0}, Lru/okei/timetable/ui/SplitBar;->showSingle()V

    .line 249
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/SplitBar;->setNextText(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    invoke-virtual {v0}, Lru/okei/timetable/ui/SplitBar;->resetBorder()V

    .line 253
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v1, Lru/okei/timetable/OnboardActivity$5;

    invoke-direct {v1, p0}, Lru/okei/timetable/OnboardActivity$5;-><init>(Lru/okei/timetable/OnboardActivity;)V

    const-wide/16 v2, 0x15e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private playReverseSplit(Ljava/lang/Runnable;)V
    .locals 4

    .line 407
    iget v0, p0, Lru/okei/timetable/OnboardActivity;->generation:I

    const v1, 0x7f0600c8

    .line 408
    invoke-virtual {p0, v1}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 409
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v3, Lru/okei/timetable/OnboardActivity$10;

    invoke-direct {v3, p0, v1, v0, p1}, Lru/okei/timetable/OnboardActivity$10;-><init>(Lru/okei/timetable/OnboardActivity;Ljava/lang/String;ILjava/lang/Runnable;)V

    const-wide/16 v0, 0x28

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private playSplit()V
    .locals 5

    .line 358
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    invoke-virtual {v0}, Lru/okei/timetable/ui/SplitBar;->showSingle()V

    .line 359
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    const v1, 0x7f0600cf

    invoke-virtual {p0, v1}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/SplitBar;->setNextText(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/SplitBar;->setBackText(Ljava/lang/String;)V

    .line 361
    iget v0, p0, Lru/okei/timetable/OnboardActivity;->generation:I

    .line 362
    iget-object v1, p0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v2, Lru/okei/timetable/OnboardActivity$8;

    invoke-direct {v2, p0, v0}, Lru/okei/timetable/OnboardActivity$8;-><init>(Lru/okei/timetable/OnboardActivity;I)V

    const-wide/16 v3, 0xce4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private refreshPermissions()V
    .locals 7

    .line 802
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->permissionActions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 803
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3}, Lru/okei/timetable/Permissions;->granted(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const v4, 0x7f0600d4

    goto :goto_1

    :cond_1
    const v4, 0x7f0600d2

    .line 808
    :goto_1
    invoke-virtual {p0, v4}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 809
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    .line 813
    iget-object v5, p0, Lru/okei/timetable/OnboardActivity;->permissionRows:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_3

    const/4 v6, 0x0

    .line 815
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 817
    :cond_3
    iget-object v5, p0, Lru/okei/timetable/OnboardActivity;->permissionTitles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 819
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->muted(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    if-eqz v3, :cond_5

    .line 822
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->muted(Landroid/content/Context;)I

    move-result v1

    goto :goto_2

    :cond_5
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v1

    :goto_2
    invoke-direct {p0, v2, v4, v1}, Lru/okei/timetable/OnboardActivity;->scrambleTo(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private saveGroup()Z
    .locals 4

    .line 205
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->groupInput:Landroid/widget/EditText;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 208
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Lru/okei/timetable/data/Groups;->isValid(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 210
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->flash:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 211
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->flash:Ljava/lang/StringBuilder;

    const v1, 0x7f0600c9

    invoke-virtual {p0, v1}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3

    .line 214
    :cond_1
    invoke-static {p0, v0}, Lru/okei/timetable/data/Groups;->set(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->flash:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    return v1
.end method

.method private scrambleTo(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 831
    iget-object v7, p0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v8, Lru/okei/timetable/OnboardActivity$20;

    move-object v1, v8

    move-object v2, p0

    move v3, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lru/okei/timetable/OnboardActivity$20;-><init>(Lru/okei/timetable/OnboardActivity;ILandroid/widget/TextView;Ljava/lang/String;I)V

    int-to-long v1, v0

    const-wide/16 v3, 0x2d

    mul-long v1, v1, v3

    invoke-virtual {v7, v8, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showBarForPage()V
    .locals 2

    .line 346
    iget v0, p0, Lru/okei/timetable/OnboardActivity;->page:I

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    invoke-virtual {v0}, Lru/okei/timetable/ui/SplitBar;->showSingle()V

    .line 348
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    const v1, 0x7f0600cf

    invoke-virtual {p0, v1}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/SplitBar;->setNextText(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    invoke-virtual {v0}, Lru/okei/timetable/ui/SplitBar;->showSplitInstant()V

    .line 351
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    invoke-direct {p0}, Lru/okei/timetable/OnboardActivity;->buttonLabel()I

    move-result v1

    invoke-virtual {p0, v1}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/SplitBar;->setNextText(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    const v1, 0x7f0600c8

    invoke-virtual {p0, v1}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/SplitBar;->setBackText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private stepped([Landroid/view/View;JJ)V
    .locals 8

    const/4 v0, 0x0

    .line 1002
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1003
    aget-object v1, p1, v0

    const/4 v2, 0x0

    .line 1004
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 1005
    invoke-direct {p0, v2}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1006
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v3, Lru/okei/timetable/OnboardActivity$26;

    invoke-direct {v3, p0, v1, p4, p5}, Lru/okei/timetable/OnboardActivity$26;-><init>(Lru/okei/timetable/OnboardActivity;Landroid/view/View;J)V

    int-to-long v4, v0

    mul-long v4, v4, p2

    const-wide/16 v6, 0x8c

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private text(Ljava/lang/String;FI)Landroid/widget/TextView;
    .locals 1

    .line 1018
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1019
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    .line 1020
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1021
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    .line 1022
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1023
    invoke-direct {p0}, Lru/okei/timetable/OnboardActivity;->pixel()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object v0
.end method

.method private typeBackLabel()V
    .locals 4

    .line 386
    iget v0, p0, Lru/okei/timetable/OnboardActivity;->generation:I

    const v1, 0x7f0600c8

    .line 387
    invoke-virtual {p0, v1}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 388
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v3, Lru/okei/timetable/OnboardActivity$9;

    invoke-direct {v3, p0, v0, v1}, Lru/okei/timetable/OnboardActivity$9;-><init>(Lru/okei/timetable/OnboardActivity;ILjava/lang/String;)V

    const-wide/16 v0, 0x3c

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private typeBarText(Ljava/lang/String;JJLjava/lang/Runnable;)V
    .locals 8

    .line 329
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v7, Lru/okei/timetable/OnboardActivity$7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lru/okei/timetable/OnboardActivity$7;-><init>(Lru/okei/timetable/OnboardActivity;Ljava/lang/String;JLjava/lang/Runnable;)V

    invoke-virtual {v0, v7, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private typeText(Landroid/widget/TextView;Ljava/lang/String;JJ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 945
    invoke-direct/range {v0 .. v7}, Lru/okei/timetable/OnboardActivity;->typeText(Landroid/widget/TextView;Ljava/lang/String;JJLjava/lang/Runnable;)V

    return-void
.end method

.method private typeText(Landroid/widget/TextView;Ljava/lang/String;JJLjava/lang/Runnable;)V
    .locals 10

    const-string v0, ""

    move-object v3, p1

    .line 950
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p0

    .line 951
    iget-object v8, v0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v9, Lru/okei/timetable/OnboardActivity$24;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p2

    move-wide v5, p5

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lru/okei/timetable/OnboardActivity$24;-><init>(Lru/okei/timetable/OnboardActivity;Landroid/widget/TextView;Ljava/lang/String;JLjava/lang/Runnable;)V

    move-wide v1, p3

    invoke-virtual {v8, v9, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private typeTextScramble(Landroid/widget/TextView;Ljava/lang/String;JJLjava/lang/Runnable;)V
    .locals 10

    const-string v0, ""

    move-object v4, p1

    .line 969
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p0

    .line 970
    iget-object v8, v0, Lru/okei/timetable/OnboardActivity;->main:Landroid/os/Handler;

    new-instance v9, Lru/okei/timetable/OnboardActivity$25;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-wide v5, p5

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lru/okei/timetable/OnboardActivity$25;-><init>(Lru/okei/timetable/OnboardActivity;Ljava/lang/String;Landroid/widget/TextView;JLjava/lang/Runnable;)V

    move-wide v1, p3

    invoke-virtual {v8, v9, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->apply(Landroid/app/Activity;)V

    .line 79
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->bg(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 82
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x42300000    # 44.0f

    .line 84
    invoke-direct {p0, v2}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-direct {p0, v3}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 86
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lru/okei/timetable/OnboardActivity;->holder:Landroid/widget/FrameLayout;

    .line 87
    invoke-direct {p0, v3}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v4

    invoke-direct {p0, v3}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v3

    invoke-virtual {v2, v4, v5, v3, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 88
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity;->holder:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    invoke-direct {v3, v6, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance v2, Lru/okei/timetable/ui/OnboardDots;

    invoke-direct {v2, p0}, Lru/okei/timetable/ui/OnboardDots;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lru/okei/timetable/OnboardActivity;->dots:Lru/okei/timetable/ui/OnboardDots;

    const/4 v3, 0x4

    .line 92
    invoke-virtual {v2, v3}, Lru/okei/timetable/ui/OnboardDots;->setPages(I)V

    .line 93
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41d00000    # 26.0f

    .line 94
    invoke-direct {p0, v3}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v3

    invoke-direct {v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 95
    invoke-direct {p0, v3}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 96
    iget-object v4, p0, Lru/okei/timetable/OnboardActivity;->dots:Lru/okei/timetable/ui/OnboardDots;

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lru/okei/timetable/OnboardActivity;->nav:Landroid/widget/FrameLayout;

    .line 99
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 101
    new-instance v2, Lru/okei/timetable/ui/SplitBar;

    invoke-direct {v2, p0}, Lru/okei/timetable/ui/SplitBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    .line 102
    invoke-direct {p0}, Lru/okei/timetable/OnboardActivity;->pixel()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p0}, Lru/okei/timetable/OnboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v7, v7, v3

    invoke-virtual {v2, v4, v7}, Lru/okei/timetable/ui/SplitBar;->setTypeface(Landroid/graphics/Typeface;F)V

    .line 103
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lru/okei/timetable/ui/SplitBar;->setColors(II)V

    .line 104
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    new-instance v3, Lru/okei/timetable/OnboardActivity$1;

    invoke-direct {v3, p0}, Lru/okei/timetable/OnboardActivity$1;-><init>(Lru/okei/timetable/OnboardActivity;)V

    invoke-virtual {v2, v3}, Lru/okei/timetable/ui/SplitBar;->setListener(Lru/okei/timetable/ui/SplitBar$Listener;)V

    .line 119
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity;->nav:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lru/okei/timetable/OnboardActivity;->bar:Lru/okei/timetable/ui/SplitBar;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v7, 0x42600000    # 56.0f

    .line 120
    invoke-direct {p0, v7}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v8

    invoke-direct {v4, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 119
    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity;->nav:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 122
    invoke-direct {p0, v7}, Lru/okei/timetable/OnboardActivity;->dp(F)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-virtual {p0, p1}, Lru/okei/timetable/OnboardActivity;->setContentView(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0}, Lru/okei/timetable/OnboardActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lru/okei/timetable/OnboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {p0}, Lru/okei/timetable/OnboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "onboard_page"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x3

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lru/okei/timetable/OnboardActivity;->page:I

    .line 132
    :cond_1
    invoke-direct {p0, v5}, Lru/okei/timetable/OnboardActivity;->buildContent(Z)V

    .line 133
    iget-object p1, p0, Lru/okei/timetable/OnboardActivity;->dots:Lru/okei/timetable/ui/OnboardDots;

    iget v0, p0, Lru/okei/timetable/OnboardActivity;->page:I

    invoke-virtual {p1, v0}, Lru/okei/timetable/ui/OnboardDots;->showInstant(I)V

    .line 134
    iget-object p1, p0, Lru/okei/timetable/OnboardActivity;->dots:Lru/okei/timetable/ui/OnboardDots;

    new-instance v0, Lru/okei/timetable/OnboardActivity$2;

    invoke-direct {v0, p0}, Lru/okei/timetable/OnboardActivity$2;-><init>(Lru/okei/timetable/OnboardActivity;)V

    invoke-virtual {p1, v0}, Lru/okei/timetable/ui/OnboardDots;->post(Ljava/lang/Runnable;)Z

    .line 140
    iget p1, p0, Lru/okei/timetable/OnboardActivity;->page:I

    if-nez p1, :cond_2

    .line 141
    invoke-direct {p0}, Lru/okei/timetable/OnboardActivity;->playIntro()V

    goto :goto_1

    .line 143
    :cond_2
    invoke-direct {p0}, Lru/okei/timetable/OnboardActivity;->showBarForPage()V

    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 794
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x47

    if-ne p1, p2, :cond_0

    .line 796
    invoke-direct {p0}, Lru/okei/timetable/OnboardActivity;->refreshPermissions()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1039
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1040
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->themeChanged(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    invoke-virtual {p0}, Lru/okei/timetable/OnboardActivity;->recreate()V

    :cond_0
    return-void
.end method
