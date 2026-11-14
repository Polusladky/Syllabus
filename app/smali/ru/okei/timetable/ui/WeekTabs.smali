.class public final Lru/okei/timetable/ui/WeekTabs;
.super Ljava/lang/Object;
.source "WeekTabs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/ui/WeekTabs$Listener;
    }
.end annotation


# instance fields
.field private final container:Landroid/widget/LinearLayout;

.field private final context:Landroid/content/Context;

.field private final fg:I

.field private final listener:Lru/okei/timetable/ui/WeekTabs$Listener;

.field private final muted:I

.field private final pixel:Landroid/graphics/Typeface;

.field private final pixelBold:Landroid/graphics/Typeface;

.field private prevTab:Landroid/widget/TextView;

.field private thisTab:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lru/okei/timetable/ui/WeekTabs;)Lru/okei/timetable/ui/WeekTabs$Listener;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/ui/WeekTabs;->listener:Lru/okei/timetable/ui/WeekTabs$Listener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;IILandroid/graphics/Typeface;Landroid/graphics/Typeface;Lru/okei/timetable/ui/WeekTabs$Listener;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lru/okei/timetable/ui/WeekTabs;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lru/okei/timetable/ui/WeekTabs;->container:Landroid/widget/LinearLayout;

    .line 36
    iput p3, p0, Lru/okei/timetable/ui/WeekTabs;->fg:I

    .line 37
    iput p4, p0, Lru/okei/timetable/ui/WeekTabs;->muted:I

    .line 38
    iput-object p5, p0, Lru/okei/timetable/ui/WeekTabs;->pixel:Landroid/graphics/Typeface;

    .line 39
    iput-object p6, p0, Lru/okei/timetable/ui/WeekTabs;->pixelBold:Landroid/graphics/Typeface;

    .line 40
    iput-object p7, p0, Lru/okei/timetable/ui/WeekTabs;->listener:Lru/okei/timetable/ui/WeekTabs$Listener;

    return-void
.end method

.method private dp(F)I
    .locals 2

    .line 92
    iget-object v0, p0, Lru/okei/timetable/ui/WeekTabs;->context:Landroid/content/Context;

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 92
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private paint(Landroid/widget/TextView;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 63
    iget v0, p0, Lru/okei/timetable/ui/WeekTabs;->fg:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lru/okei/timetable/ui/WeekTabs;->muted:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_1

    .line 64
    iget-object v0, p0, Lru/okei/timetable/ui/WeekTabs;->pixelBold:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lru/okei/timetable/ui/WeekTabs;->pixel:Landroid/graphics/Typeface;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 66
    iget-object p2, p0, Lru/okei/timetable/ui/WeekTabs;->context:Landroid/content/Context;

    const v1, 0x7f06007d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    const-string p2, ""

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private tab(Ljava/lang/String;Z)Landroid/widget/TextView;
    .locals 3

    .line 70
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lru/okei/timetable/ui/WeekTabs;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    const/high16 v1, 0x41300000    # 11.0f

    .line 72
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 73
    iget p1, p0, Lru/okei/timetable/ui/WeekTabs;->muted:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object p1, p0, Lru/okei/timetable/ui/WeekTabs;->pixelBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x0

    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const p1, 0x3df5c28f    # 0.12f

    .line 76
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 77
    invoke-direct {p0, p1}, Lru/okei/timetable/ui/WeekTabs;->dp(F)I

    move-result p1

    const/high16 v1, 0x40c00000    # 6.0f

    .line 78
    invoke-direct {p0, v1}, Lru/okei/timetable/ui/WeekTabs;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {p0, v2}, Lru/okei/timetable/ui/WeekTabs;->dp(F)I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 79
    new-instance p1, Lru/okei/timetable/ui/WeekTabs$1;

    invoke-direct {p1, p0, p2}, Lru/okei/timetable/ui/WeekTabs$1;-><init>(Lru/okei/timetable/ui/WeekTabs;Z)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public build()V
    .locals 5

    .line 44
    iget-object v0, p0, Lru/okei/timetable/ui/WeekTabs;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 45
    iget-object v0, p0, Lru/okei/timetable/ui/WeekTabs;->context:Landroid/content/Context;

    const v1, 0x7f0601ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lru/okei/timetable/ui/WeekTabs;->tab(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/ui/WeekTabs;->thisTab:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lru/okei/timetable/ui/WeekTabs;->context:Landroid/content/Context;

    const v2, 0x7f0601e9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lru/okei/timetable/ui/WeekTabs;->tab(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/ui/WeekTabs;->prevTab:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lru/okei/timetable/ui/WeekTabs;->container:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lru/okei/timetable/ui/WeekTabs;->thisTab:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p0, Lru/okei/timetable/ui/WeekTabs;->container:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lru/okei/timetable/ui/WeekTabs;->prevTab:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {p0, v1}, Lru/okei/timetable/ui/WeekTabs;->update(Z)V

    return-void
.end method

.method public update(Z)V
    .locals 2

    .line 55
    iget-object v0, p0, Lru/okei/timetable/ui/WeekTabs;->thisTab:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lru/okei/timetable/ui/WeekTabs;->prevTab:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 v1, p1, 0x1

    .line 58
    invoke-direct {p0, v0, v1}, Lru/okei/timetable/ui/WeekTabs;->paint(Landroid/widget/TextView;Z)V

    .line 59
    iget-object v0, p0, Lru/okei/timetable/ui/WeekTabs;->prevTab:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lru/okei/timetable/ui/WeekTabs;->paint(Landroid/widget/TextView;Z)V

    :cond_1
    :goto_0
    return-void
.end method
