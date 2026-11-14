.class public Lru/okei/timetable/DiagnosticsActivity;
.super Landroid/app/Activity;
.source "DiagnosticsActivity.java"


# static fields
.field private static final EASE:Landroid/animation/TimeInterpolator;


# instance fields
.field private FG:I

.field private LINE:I

.field private MUTED:I

.field private content:Landroid/widget/LinearLayout;

.field private countdown:Landroid/widget/TextView;

.field private firstSection:Z

.field private flash:Ljava/lang/String;

.field private final openSections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pixel:Landroid/graphics/Typeface;

.field private pixelBold:Landroid/graphics/Typeface;

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private sectionBody:Landroid/widget/LinearLayout;

.field private testAt:J

.field private final tick:Ljava/lang/Runnable;

.field private final ticker:Landroid/os/Handler;

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic -$$Nest$fgetcountdown(Lru/okei/timetable/DiagnosticsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/DiagnosticsActivity;->countdown:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetopenSections(Lru/okei/timetable/DiagnosticsActivity;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/DiagnosticsActivity;->openSections:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettestAt(Lru/okei/timetable/DiagnosticsActivity;)J
    .locals 2

    iget-wide v0, p0, Lru/okei/timetable/DiagnosticsActivity;->testAt:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetticker(Lru/okei/timetable/DiagnosticsActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/DiagnosticsActivity;->ticker:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcopy(Lru/okei/timetable/DiagnosticsActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->copy(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenFullScreenSetting(Lru/okei/timetable/DiagnosticsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/DiagnosticsActivity;->openFullScreenSetting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreload(Lru/okei/timetable/DiagnosticsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/DiagnosticsActivity;->reload()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshare(Lru/okei/timetable/DiagnosticsActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->share(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshow(Lru/okei/timetable/DiagnosticsActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->show(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTest(Lru/okei/timetable/DiagnosticsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/DiagnosticsActivity;->startTest()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTestLead(Lru/okei/timetable/DiagnosticsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/DiagnosticsActivity;->startTestLead()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTestRepeat(Lru/okei/timetable/DiagnosticsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/DiagnosticsActivity;->startTestRepeat()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Lru/okei/timetable/ui/Motion;->ease()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/DiagnosticsActivity;->EASE:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lru/okei/timetable/DiagnosticsActivity;->FG:I

    const v0, -0x656566

    .line 37
    iput v0, p0, Lru/okei/timetable/DiagnosticsActivity;->MUTED:I

    const v0, -0xd5d5d6

    .line 38
    iput v0, p0, Lru/okei/timetable/DiagnosticsActivity;->LINE:I

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->worker:Ljava/util/concurrent/ExecutorService;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->rows:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->openSections:Ljava/util/Set;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lru/okei/timetable/DiagnosticsActivity;->firstSection:Z

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->ticker:Landroid/os/Handler;

    .line 56
    new-instance v0, Lru/okei/timetable/DiagnosticsActivity$1;

    invoke-direct {v0, p0}, Lru/okei/timetable/DiagnosticsActivity$1;-><init>(Lru/okei/timetable/DiagnosticsActivity;)V

    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method private actionsRow(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    .line 459
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 460
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x40c00000    # 6.0f

    .line 461
    invoke-direct {p0, v2}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v2}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 462
    invoke-direct {p0, p1, p2}, Lru/okei/timetable/DiagnosticsActivity;->boxed(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 p2, 0x41200000    # 10.0f

    .line 466
    invoke-direct {p0, p2}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 467
    invoke-direct {p0, p3, p4}, Lru/okei/timetable/DiagnosticsActivity;->boxed(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    invoke-direct {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->add(Landroid/view/View;)V

    return-void
.end method

.method private add(Landroid/view/View;)V
    .locals 1

    .line 498
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->sectionBody:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 501
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 503
    :goto_0
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAction(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    const-string v0, "["

    const-string v1, ""

    .line 435
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 436
    iget v0, p0, Lru/okei/timetable/DiagnosticsActivity;->FG:I

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-direct {p0, p1, v2, v0, v1}, Lru/okei/timetable/DiagnosticsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 437
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 438
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 439
    invoke-direct {p0, v1}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v1

    iget v2, p0, Lru/okei/timetable/DiagnosticsActivity;->FG:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 440
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x11

    .line 441
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 442
    invoke-direct {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-direct {p0, v2}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v0

    invoke-direct {p0, v2}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v2

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 443
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x40c00000    # 6.0f

    .line 445
    invoke-direct {p0, v1}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 446
    invoke-direct {p0, v1}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 447
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    new-instance v0, Lru/okei/timetable/DiagnosticsActivity$12;

    invoke-direct {v0, p0, p2}, Lru/okei/timetable/DiagnosticsActivity$12;-><init>(Lru/okei/timetable/DiagnosticsActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    invoke-direct {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->add(Landroid/view/View;)V

    return-void
.end method

.method private addDivider()V
    .locals 3

    .line 423
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 424
    invoke-direct {p0, v1}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 425
    invoke-direct {p0, v1}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v1, 0x41000000    # 8.0f

    .line 426
    invoke-direct {p0, v1}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v2

    neg-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 427
    invoke-direct {p0, v1}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 428
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 429
    iget v2, p0, Lru/okei/timetable/DiagnosticsActivity;->LINE:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 430
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    invoke-direct {p0, v1}, Lru/okei/timetable/DiagnosticsActivity;->add(Landroid/view/View;)V

    return-void
.end method

.method private addJournal()V
    .locals 7

    const-string v0, "logs"

    .line 336
    invoke-direct {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->addSection(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lru/okei/timetable/Logs;->dump()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f060042

    .line 339
    invoke-virtual {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lru/okei/timetable/DiagnosticsActivity;->MUTED:I

    invoke-direct {p0, v0, v1}, Lru/okei/timetable/DiagnosticsActivity;->addStatus(Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string v1, "\n"

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    .line 343
    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 345
    aget-object v4, v0, v3

    const/high16 v5, 0x41100000    # 9.0f

    iget v6, p0, Lru/okei/timetable/DiagnosticsActivity;->MUTED:I

    invoke-direct {p0, v4, v5, v6, v2}, Lru/okei/timetable/DiagnosticsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x3ca3d70a    # 0.02f

    .line 346
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/high16 v5, 0x40400000    # 3.0f

    .line 347
    invoke-direct {p0, v5}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v6

    invoke-direct {p0, v5}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v5

    invoke-virtual {v4, v2, v6, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 348
    invoke-direct {p0, v4}, Lru/okei/timetable/DiagnosticsActivity;->add(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addRow(Lru/okei/timetable/Diagnostics$Row;)V
    .locals 8

    .line 378
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 379
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 380
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x40e00000    # 7.0f

    .line 381
    invoke-direct {p0, v2}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v2}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 383
    iget-object v3, p1, Lru/okei/timetable/Diagnostics$Row;->label:Ljava/lang/String;

    iget v4, p0, Lru/okei/timetable/DiagnosticsActivity;->MUTED:I

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {p0, v3, v5, v4, v1}, Lru/okei/timetable/DiagnosticsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x3d23d70a    # 0.04f

    .line 384
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 385
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v3, p1, Lru/okei/timetable/Diagnostics$Row;->value:Ljava/lang/String;

    iget-boolean v4, p1, Lru/okei/timetable/Diagnostics$Row;->good:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lru/okei/timetable/DiagnosticsActivity;->MUTED:I

    goto :goto_0

    :cond_0
    iget v4, p0, Lru/okei/timetable/DiagnosticsActivity;->FG:I

    :goto_0
    const/4 v6, 0x1

    const/high16 v7, 0x41300000    # 11.0f

    invoke-direct {p0, v3, v7, v4, v6}, Lru/okei/timetable/DiagnosticsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x800005

    .line 389
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 390
    invoke-direct {p0, v5}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 391
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    iget-object v4, p1, Lru/okei/timetable/Diagnostics$Row;->action:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 394
    invoke-direct {p0, v2}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v4

    invoke-direct {p0, v2}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v4, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 395
    new-instance v1, Lru/okei/timetable/DiagnosticsActivity$11;

    invoke-direct {v1, p0}, Lru/okei/timetable/DiagnosticsActivity$11;-><init>(Lru/okei/timetable/DiagnosticsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object p1, p1, Lru/okei/timetable/Diagnostics$Row;->value:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u203a"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget p1, p0, Lru/okei/timetable/DiagnosticsActivity;->FG:I

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 404
    :cond_1
    invoke-direct {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->add(Landroid/view/View;)V

    return-void
.end method

.method private addSection(Ljava/lang/String;)V
    .locals 8

    .line 272
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 273
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 275
    invoke-direct {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->sectionTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41500000    # 13.0f

    iget v4, p0, Lru/okei/timetable/DiagnosticsActivity;->FG:I

    invoke-direct {p0, v2, v3, v4, v1}, Lru/okei/timetable/DiagnosticsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x3e23d70a    # 0.16f

    .line 276
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/16 v3, 0x11

    .line 277
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 278
    invoke-direct {p0, v3}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-direct {p0, v4}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 280
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 281
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 282
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 283
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v2, p0, Lru/okei/timetable/DiagnosticsActivity;->openSections:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lru/okei/timetable/DiagnosticsActivity;->firstSection:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lru/okei/timetable/DiagnosticsActivity;->openSections:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 288
    :cond_1
    :goto_0
    iput-boolean v5, p0, Lru/okei/timetable/DiagnosticsActivity;->firstSection:Z

    if-eqz v1, :cond_2

    .line 290
    iget-object v2, p0, Lru/okei/timetable/DiagnosticsActivity;->openSections:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v5, 0x8

    .line 292
    :goto_1
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 293
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 294
    new-instance v1, Lru/okei/timetable/DiagnosticsActivity$10;

    invoke-direct {v1, p0, p1, v0}, Lru/okei/timetable/DiagnosticsActivity$10;-><init>(Lru/okei/timetable/DiagnosticsActivity;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object p1, p0, Lru/okei/timetable/DiagnosticsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    iget-object p1, p0, Lru/okei/timetable/DiagnosticsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->sectionBody:Landroid/widget/LinearLayout;

    return-void
.end method

.method private addStatus(Ljava/lang/String;I)V
    .locals 2

    const/high16 v0, 0x41200000    # 10.0f

    const/4 v1, 0x1

    .line 491
    invoke-direct {p0, p1, v0, p2, v1}, Lru/okei/timetable/DiagnosticsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x3d75c28f    # 0.06f

    .line 492
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/high16 p2, 0x41000000    # 8.0f

    .line 493
    invoke-direct {p0, p2}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result p2

    const/high16 v0, 0x40800000    # 4.0f

    invoke-direct {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 494
    invoke-direct {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->add(Landroid/view/View;)V

    return-void
.end method

.method private addVerdict(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/okei/timetable/Diagnostics$Row;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 315
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 316
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/okei/timetable/Diagnostics$Row;

    .line 317
    iget-boolean v5, v4, Lru/okei/timetable/Diagnostics$Row;->good:Z

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 321
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 322
    iget-object v1, v4, Lru/okei/timetable/Diagnostics$Row;->label:Ljava/lang/String;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    if-nez v3, :cond_3

    const v1, 0x7f06006a

    .line 325
    invoke-virtual {p0, v1}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-array v2, p1, [Ljava/lang/Object;

    .line 326
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const v3, 0x7f060069

    invoke-virtual {p0, v3, v2}, Lru/okei/timetable/DiagnosticsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u00b7 "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const/high16 v2, 0x41600000    # 14.0f

    .line 327
    iget v3, p0, Lru/okei/timetable/DiagnosticsActivity;->FG:I

    invoke-direct {p0, v1, v2, v3, p1}, Lru/okei/timetable/DiagnosticsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x3d75c28f    # 0.06f

    .line 328
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 329
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 330
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 p1, 0x41000000    # 8.0f

    .line 331
    invoke-direct {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result p1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct {p0, v2}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v2

    invoke-virtual {v1, v0, p1, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 332
    invoke-direct {p0, v1}, Lru/okei/timetable/DiagnosticsActivity;->add(Landroid/view/View;)V

    return-void
.end method

.method private boxed(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/TextView;
    .locals 4

    const-string v0, "["

    const-string v1, ""

    .line 472
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 473
    iget v0, p0, Lru/okei/timetable/DiagnosticsActivity;->FG:I

    const/4 v1, 0x1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-direct {p0, p1, v2, v0, v1}, Lru/okei/timetable/DiagnosticsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 474
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 475
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 476
    invoke-direct {p0, v1}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v1

    iget v3, p0, Lru/okei/timetable/DiagnosticsActivity;->FG:I

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 477
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x11

    .line 478
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41000000    # 8.0f

    .line 479
    invoke-direct {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v1

    invoke-direct {p0, v2}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v0

    invoke-direct {p0, v2}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v2

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 480
    new-instance v0, Lru/okei/timetable/DiagnosticsActivity$13;

    invoke-direct {v0, p0, p2}, Lru/okei/timetable/DiagnosticsActivity$13;-><init>(Lru/okei/timetable/DiagnosticsActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private copy(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/okei/timetable/Diagnostics$Row;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "clipboard"

    .line 244
    invoke-virtual {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    const-string v1, "oksei"

    .line 246
    invoke-static {p0, p1}, Lru/okei/timetable/Diagnostics;->toText(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const p1, 0x7f060029

    .line 247
    invoke-virtual {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/okei/timetable/DiagnosticsActivity;->flash:Ljava/lang/String;

    .line 248
    invoke-direct {p0}, Lru/okei/timetable/DiagnosticsActivity;->reload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DiagnosticsActivity"

    .line 251
    invoke-static {v0, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const p1, 0x7f06002b

    .line 252
    invoke-virtual {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/okei/timetable/DiagnosticsActivity;->flash:Ljava/lang/String;

    .line 253
    invoke-direct {p0}, Lru/okei/timetable/DiagnosticsActivity;->reload()V

    :cond_0
    :goto_0
    return-void
.end method

.method private dp(F)I
    .locals 1

    .line 522
    invoke-virtual {p0}, Lru/okei/timetable/DiagnosticsActivity;->getResources()Landroid/content/res/Resources;

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

.method private label(Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .locals 0

    .line 507
    invoke-static {p0, p1, p2, p3, p4}, Lru/okei/timetable/Ui;->label(Landroid/content/Context;Ljava/lang/CharSequence;FIZ)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method private loadPixel(Z)Landroid/graphics/Typeface;
    .locals 0

    if-eqz p1, :cond_0

    .line 511
    invoke-static {p0}, Lru/okei/timetable/Ui;->bold(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lru/okei/timetable/Ui;->pixel(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private openFullScreenSetting()V
    .locals 2

    .line 408
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    return-void

    .line 412
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_USE_FULL_SCREEN_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-static {p0}, Lru/okei/timetable/Diagnostics;->packageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 414
    invoke-virtual {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DiagnosticsActivity"

    .line 416
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const v0, 0x7f06001d

    .line 417
    invoke-virtual {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->flash:Ljava/lang/String;

    .line 418
    invoke-direct {p0}, Lru/okei/timetable/DiagnosticsActivity;->reload()V

    :goto_0
    return-void
.end method

.method private reload()V
    .locals 2

    .line 121
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 122
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const v0, 0x7f06006c

    .line 123
    invoke-virtual {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lru/okei/timetable/DiagnosticsActivity;->MUTED:I

    invoke-direct {p0, v0, v1}, Lru/okei/timetable/DiagnosticsActivity;->addStatus(Ljava/lang/String;I)V

    .line 125
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lru/okei/timetable/DiagnosticsActivity$3;

    invoke-direct {v1, p0}, Lru/okei/timetable/DiagnosticsActivity$3;-><init>(Lru/okei/timetable/DiagnosticsActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sectionTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "check"

    .line 353
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f06005e

    .line 354
    invoke-virtual {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "schedule"

    .line 356
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f060061

    .line 357
    invoke-virtual {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "alarms"

    .line 359
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f06005c

    .line 360
    invoke-virtual {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "plan"

    .line 362
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x7f060060

    .line 363
    invoke-virtual {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "access"

    .line 365
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x7f06005b

    .line 366
    invoke-virtual {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "app"

    .line 368
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p1, 0x7f06005d

    .line 369
    invoke-virtual {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "logs"

    .line 371
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const p1, 0x7f06005f

    .line 372
    invoke-virtual {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method private share(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/okei/timetable/Diagnostics$Row;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\u0420\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u00b7 "

    .line 259
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    .line 260
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.SUBJECT"

    .line 261
    invoke-static {p0}, Lru/okei/timetable/data/Groups;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 262
    invoke-static {p0, p1}, Lru/okei/timetable/Diagnostics;->toText(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "\u041f\u041e\u0414\u0415\u041b\u0418\u0422\u042c\u0421\u042f \u041e\u0422\u0427\u0401\u0422\u041e\u041c"

    .line 263
    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DiagnosticsActivity"

    .line 265
    invoke-static {v0, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const p1, 0x7f06002b

    .line 266
    invoke-virtual {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/okei/timetable/DiagnosticsActivity;->flash:Ljava/lang/String;

    .line 267
    invoke-direct {p0}, Lru/okei/timetable/DiagnosticsActivity;->reload()V

    :goto_0
    return-void
.end method

.method private show(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/okei/timetable/Diagnostics$Row;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 143
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->countdown:Landroid/widget/TextView;

    .line 145
    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->sectionBody:Landroid/widget/LinearLayout;

    .line 146
    invoke-direct {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->addVerdict(Ljava/util/List;)V

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    .line 148
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 149
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/okei/timetable/Diagnostics$Row;

    .line 150
    iget-object v5, v4, Lru/okei/timetable/Diagnostics$Row;->section:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 151
    iget-object v3, v4, Lru/okei/timetable/Diagnostics$Row;->section:Ljava/lang/String;

    .line 152
    invoke-direct {p0, v3}, Lru/okei/timetable/DiagnosticsActivity;->addSection(Ljava/lang/String;)V

    .line 154
    :cond_0
    invoke-direct {p0, v4}, Lru/okei/timetable/DiagnosticsActivity;->addRow(Lru/okei/timetable/Diagnostics$Row;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_1
    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->sectionBody:Landroid/widget/LinearLayout;

    .line 157
    invoke-direct {p0}, Lru/okei/timetable/DiagnosticsActivity;->addJournal()V

    .line 158
    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->sectionBody:Landroid/widget/LinearLayout;

    .line 159
    invoke-direct {p0}, Lru/okei/timetable/DiagnosticsActivity;->addDivider()V

    const v2, 0x7f060058

    .line 160
    invoke-virtual {p0, v2}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lru/okei/timetable/DiagnosticsActivity$4;

    invoke-direct {v3, p0}, Lru/okei/timetable/DiagnosticsActivity$4;-><init>(Lru/okei/timetable/DiagnosticsActivity;)V

    const v4, 0x7f060067

    .line 165
    invoke-virtual {p0, v4}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lru/okei/timetable/DiagnosticsActivity$5;

    invoke-direct {v5, p0}, Lru/okei/timetable/DiagnosticsActivity$5;-><init>(Lru/okei/timetable/DiagnosticsActivity;)V

    .line 160
    invoke-direct {p0, v2, v3, v4, v5}, Lru/okei/timetable/DiagnosticsActivity;->actionsRow(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 171
    new-instance v2, Lru/okei/timetable/DiagnosticsActivity$6;

    invoke-direct {v2, p0}, Lru/okei/timetable/DiagnosticsActivity$6;-><init>(Lru/okei/timetable/DiagnosticsActivity;)V

    new-instance v3, Lru/okei/timetable/DiagnosticsActivity$7;

    invoke-direct {v3, p0}, Lru/okei/timetable/DiagnosticsActivity$7;-><init>(Lru/okei/timetable/DiagnosticsActivity;)V

    const-string v4, "\u0417\u0410 15 \u0421\u0415\u041a"

    const-string v5, "\u041f\u041e\u0412\u0422\u041e\u0420 30 \u0421\u0415\u041a"

    invoke-direct {p0, v4, v2, v5, v3}, Lru/okei/timetable/DiagnosticsActivity;->actionsRow(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    const v2, 0x7f06002a

    .line 182
    invoke-virtual {p0, v2}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lru/okei/timetable/DiagnosticsActivity$8;

    invoke-direct {v3, p0, p1}, Lru/okei/timetable/DiagnosticsActivity$8;-><init>(Lru/okei/timetable/DiagnosticsActivity;Ljava/util/List;)V

    new-instance v4, Lru/okei/timetable/DiagnosticsActivity$9;

    invoke-direct {v4, p0, p1}, Lru/okei/timetable/DiagnosticsActivity$9;-><init>(Lru/okei/timetable/DiagnosticsActivity;Ljava/util/List;)V

    const-string p1, "\u041f\u041e\u0414\u0415\u041b\u0418\u0422\u042c\u0421\u042f \u041e\u0422\u0427\u0401\u0422\u041e\u041c"

    invoke-direct {p0, v2, v3, p1, v4}, Lru/okei/timetable/DiagnosticsActivity;->actionsRow(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 193
    iget-object p1, p0, Lru/okei/timetable/DiagnosticsActivity;->flash:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 194
    iget v2, p0, Lru/okei/timetable/DiagnosticsActivity;->MUTED:I

    invoke-direct {p0, p1, v2}, Lru/okei/timetable/DiagnosticsActivity;->addStatus(Ljava/lang/String;I)V

    .line 196
    :cond_2
    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->flash:Ljava/lang/String;

    .line 198
    invoke-static {}, Lru/okei/timetable/ui/Theme;->consumeRecreate()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 199
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 200
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x0

    .line 201
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 202
    invoke-direct {p0, v3}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 203
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, v1

    const-wide/16 v4, 0x1c

    mul-long v2, v2, v4

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    .line 204
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xf0

    .line 205
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lru/okei/timetable/DiagnosticsActivity;->EASE:Landroid/animation/TimeInterpolator;

    .line 206
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private startCountdown()V
    .locals 4

    .line 232
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->countdown:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 233
    iget v0, p0, Lru/okei/timetable/DiagnosticsActivity;->FG:I

    const/4 v1, 0x1

    const-string v2, ""

    const/high16 v3, 0x41500000    # 13.0f

    invoke-direct {p0, v2, v3, v0, v1}, Lru/okei/timetable/DiagnosticsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->countdown:Landroid/widget/TextView;

    const v1, 0x3d75c28f    # 0.06f

    .line 234
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 235
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->countdown:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-direct {p0, v1}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, v1}, Lru/okei/timetable/DiagnosticsActivity;->dp(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 236
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->content:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/okei/timetable/DiagnosticsActivity;->countdown:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->ticker:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/DiagnosticsActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->ticker:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/DiagnosticsActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startTest()V
    .locals 4

    const/4 v0, 0x5

    .line 212
    invoke-static {p0, v0}, Lru/okei/timetable/alarm/AlarmScheduler;->test(Landroid/content/Context;I)V

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iput-wide v0, p0, Lru/okei/timetable/DiagnosticsActivity;->testAt:J

    .line 214
    invoke-direct {p0}, Lru/okei/timetable/DiagnosticsActivity;->startCountdown()V

    return-void
.end method

.method private startTestLead()V
    .locals 4

    const/16 v0, 0xf

    .line 218
    invoke-static {p0, v0}, Lru/okei/timetable/alarm/AlarmScheduler;->testLead(Landroid/content/Context;I)V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x61a8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lru/okei/timetable/DiagnosticsActivity;->testAt:J

    const-string v0, "\u041c\u0423\u0417\u042b\u041a\u0410 \u0427\u0415\u0420\u0415\u0417 15 \u0421\u0415\u041a, \u0417\u0412\u041e\u041d\u041e\u041a \u0427\u0415\u0420\u0415\u0417 25 \u0421\u0415\u041a"

    .line 220
    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->flash:Ljava/lang/String;

    .line 221
    invoke-direct {p0}, Lru/okei/timetable/DiagnosticsActivity;->startCountdown()V

    return-void
.end method

.method private startTestRepeat()V
    .locals 4

    const/16 v0, 0x1e

    .line 225
    invoke-static {p0, v0}, Lru/okei/timetable/alarm/AlarmScheduler;->testRepeat(Landroid/content/Context;I)V

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lru/okei/timetable/DiagnosticsActivity;->testAt:J

    const-string v0, "\u041f\u041e\u0412\u0422\u041e\u0420: 20 \u0421\u0415\u041a, \u0417\u0410\u0422\u0415\u041c +30 \u0421\u0415\u041a"

    .line 227
    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->flash:Ljava/lang/String;

    .line 228
    invoke-direct {p0}, Lru/okei/timetable/DiagnosticsActivity;->startCountdown()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040001

    .line 76
    invoke-virtual {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->setContentView(I)V

    .line 77
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lru/okei/timetable/DiagnosticsActivity;->FG:I

    .line 78
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->muted(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lru/okei/timetable/DiagnosticsActivity;->MUTED:I

    .line 79
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lru/okei/timetable/DiagnosticsActivity;->LINE:I

    .line 80
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->apply(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 82
    invoke-direct {p0, p1}, Lru/okei/timetable/DiagnosticsActivity;->loadPixel(Z)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->pixel:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    .line 83
    invoke-direct {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->loadPixel(Z)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->pixelBold:Landroid/graphics/Typeface;

    const v0, 0x7f030010

    .line 85
    invoke-virtual {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->content:Landroid/widget/LinearLayout;

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const v0, 0x7f030012

    .line 87
    invoke-virtual {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    iget-object v1, p0, Lru/okei/timetable/DiagnosticsActivity;->pixelBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const v0, 0x7f030011

    .line 90
    invoke-virtual {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    iget-object v1, p0, Lru/okei/timetable/DiagnosticsActivity;->pixel:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const v0, 0x7f03000f

    .line 93
    invoke-virtual {p0, v0}, Lru/okei/timetable/DiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Lru/okei/timetable/DiagnosticsActivity;->pixelBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 96
    new-instance p1, Lru/okei/timetable/DiagnosticsActivity$2;

    invoke-direct {p1, p0}, Lru/okei/timetable/DiagnosticsActivity$2;-><init>(Lru/okei/timetable/DiagnosticsActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-direct {p0}, Lru/okei/timetable/DiagnosticsActivity;->reload()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 516
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->ticker:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/DiagnosticsActivity;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 517
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 518
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 109
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->themeChanged(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lru/okei/timetable/DiagnosticsActivity;->recreate()V

    return-void

    .line 113
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity;->content:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 116
    invoke-direct {p0}, Lru/okei/timetable/DiagnosticsActivity;->reload()V

    :cond_1
    return-void
.end method
