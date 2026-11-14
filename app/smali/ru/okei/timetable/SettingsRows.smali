.class public final Lru/okei/timetable/SettingsRows;
.super Ljava/lang/Object;
.source "SettingsRows.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/SettingsRows$Sink;,
        Lru/okei/timetable/SettingsRows$Hook;,
        Lru/okei/timetable/SettingsRows$Action;,
        Lru/okei/timetable/SettingsRows$Value;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final dim:I

.field private final fg:I

.field private final hook:Lru/okei/timetable/SettingsRows$Hook;

.field private final line:I

.field private final muted:I

.field private final sink:Lru/okei/timetable/SettingsRows$Sink;


# direct methods
.method static bridge synthetic -$$Nest$fgethook(Lru/okei/timetable/SettingsRows;)Lru/okei/timetable/SettingsRows$Hook;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/SettingsRows;->hook:Lru/okei/timetable/SettingsRows$Hook;

    return-object p0
.end method

.method constructor <init>(Landroid/app/Activity;IIIILru/okei/timetable/SettingsRows$Sink;Lru/okei/timetable/SettingsRows$Hook;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lru/okei/timetable/SettingsRows;->activity:Landroid/app/Activity;

    .line 44
    iput p2, p0, Lru/okei/timetable/SettingsRows;->fg:I

    .line 45
    iput p3, p0, Lru/okei/timetable/SettingsRows;->muted:I

    .line 46
    iput p4, p0, Lru/okei/timetable/SettingsRows;->dim:I

    .line 47
    iput p5, p0, Lru/okei/timetable/SettingsRows;->line:I

    .line 48
    iput-object p6, p0, Lru/okei/timetable/SettingsRows;->sink:Lru/okei/timetable/SettingsRows$Sink;

    .line 49
    iput-object p7, p0, Lru/okei/timetable/SettingsRows;->hook:Lru/okei/timetable/SettingsRows$Hook;

    return-void
.end method

.method private boxed(Ljava/lang/String;Lru/okei/timetable/SettingsRows$Action;)Landroid/widget/TextView;
    .locals 4

    const-string v0, "["

    const-string v1, ""

    .line 156
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 157
    iget v0, p0, Lru/okei/timetable/SettingsRows;->fg:I

    const/4 v1, 0x1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {p0, p1, v2, v0, v1}, Lru/okei/timetable/SettingsRows;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 158
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 159
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 160
    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v1

    iget v3, p0, Lru/okei/timetable/SettingsRows;->fg:I

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 161
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x11

    .line 162
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41000000    # 8.0f

    .line 163
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v1

    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v3

    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v0

    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v2

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 164
    new-instance v0, Lru/okei/timetable/SettingsRows$4;

    invoke-direct {v0, p0, p2}, Lru/okei/timetable/SettingsRows$4;-><init>(Lru/okei/timetable/SettingsRows;Lru/okei/timetable/SettingsRows$Action;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method


# virtual methods
.method public action(Ljava/lang/String;Lru/okei/timetable/SettingsRows$Action;)V
    .locals 4

    const-string v0, "["

    const-string v1, ""

    .line 119
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 120
    iget v0, p0, Lru/okei/timetable/SettingsRows;->fg:I

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, p1, v2, v0, v1}, Lru/okei/timetable/SettingsRows;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 121
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 123
    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v1

    iget v2, p0, Lru/okei/timetable/SettingsRows;->fg:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 124
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x11

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 126
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v1

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v3

    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v0

    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v2

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 127
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x40c00000    # 6.0f

    .line 129
    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 130
    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v0, Lru/okei/timetable/SettingsRows$3;

    invoke-direct {v0, p0, p2}, Lru/okei/timetable/SettingsRows$3;-><init>(Lru/okei/timetable/SettingsRows;Lru/okei/timetable/SettingsRows$Action;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object p2, p0, Lru/okei/timetable/SettingsRows;->sink:Lru/okei/timetable/SettingsRows$Sink;

    invoke-interface {p2, p1}, Lru/okei/timetable/SettingsRows$Sink;->add(Landroid/view/View;)V

    return-void
.end method

.method public actionsRow(Ljava/lang/String;Lru/okei/timetable/SettingsRows$Action;Ljava/lang/String;Lru/okei/timetable/SettingsRows$Action;)V
    .locals 4

    .line 143
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/okei/timetable/SettingsRows;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x40c00000    # 6.0f

    .line 145
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v3

    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 146
    invoke-direct {p0, p1, p2}, Lru/okei/timetable/SettingsRows;->boxed(Ljava/lang/String;Lru/okei/timetable/SettingsRows$Action;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 p2, 0x41200000    # 10.0f

    .line 150
    invoke-virtual {p0, p2}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 151
    invoke-direct {p0, p3, p4}, Lru/okei/timetable/SettingsRows;->boxed(Ljava/lang/String;Lru/okei/timetable/SettingsRows$Action;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object p1, p0, Lru/okei/timetable/SettingsRows;->sink:Lru/okei/timetable/SettingsRows$Sink;

    invoke-interface {p1, v0}, Lru/okei/timetable/SettingsRows$Sink;->add(Landroid/view/View;)V

    return-void
.end method

.method public button(Ljava/lang/String;Lru/okei/timetable/SettingsRows$Action;)Landroid/widget/TextView;
    .locals 5

    .line 66
    iget v0, p0, Lru/okei/timetable/SettingsRows;->fg:I

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {p0, p1, v2, v0, v1}, Lru/okei/timetable/SettingsRows;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x11

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x42400000    # 48.0f

    .line 69
    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 70
    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 71
    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p0, v3}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v4

    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v1

    invoke-virtual {p0, v3}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    new-instance p1, Lru/okei/timetable/SettingsRows$1;

    invoke-direct {p1, p0, v0, p2}, Lru/okei/timetable/SettingsRows$1;-><init>(Lru/okei/timetable/SettingsRows;Landroid/widget/TextView;Lru/okei/timetable/SettingsRows$Action;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public choice(Ljava/lang/String;Ljava/lang/String;ZLru/okei/timetable/SettingsRows$Action;)V
    .locals 7

    .line 90
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/okei/timetable/SettingsRows;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 92
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 93
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v3

    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    if-eqz p3, :cond_0

    const-string v3, "\u25cf"

    goto :goto_0

    :cond_0
    const-string v3, "\u25cb"

    :goto_0
    if-eqz p3, :cond_1

    .line 95
    iget v4, p0, Lru/okei/timetable/SettingsRows;->fg:I

    goto :goto_1

    :cond_1
    iget v4, p0, Lru/okei/timetable/SettingsRows;->muted:I

    :goto_1
    const/high16 v5, 0x41700000    # 15.0f

    const/4 v6, 0x1

    invoke-virtual {p0, v3, v5, v4, v6}, Lru/okei/timetable/SettingsRows;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    const/high16 v4, 0x41600000    # 14.0f

    .line 96
    invoke-virtual {p0, v4}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v4

    invoke-virtual {v3, v1, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lru/okei/timetable/SettingsRows;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz p3, :cond_2

    .line 101
    iget p3, p0, Lru/okei/timetable/SettingsRows;->fg:I

    goto :goto_2

    :cond_2
    iget p3, p0, Lru/okei/timetable/SettingsRows;->muted:I

    :goto_2
    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {p0, p1, v4, p3, v6}, Lru/okei/timetable/SettingsRows;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    iget p1, p0, Lru/okei/timetable/SettingsRows;->muted:I

    invoke-virtual {p0, p2, v2, p1, v1}, Lru/okei/timetable/SettingsRows;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    const/high16 p2, 0x40400000    # 3.0f

    .line 103
    invoke-virtual {p0, p2}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result p2

    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 104
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance p1, Lru/okei/timetable/SettingsRows$2;

    invoke-direct {p1, p0, p4}, Lru/okei/timetable/SettingsRows$2;-><init>(Lru/okei/timetable/SettingsRows;Lru/okei/timetable/SettingsRows$Action;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object p1, p0, Lru/okei/timetable/SettingsRows;->sink:Lru/okei/timetable/SettingsRows$Sink;

    invoke-interface {p1, v0}, Lru/okei/timetable/SettingsRows$Sink;->add(Landroid/view/View;)V

    return-void
.end method

.method public dp(F)I
    .locals 1

    .line 62
    iget-object v0, p0, Lru/okei/timetable/SettingsRows;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

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

.method public group(Ljava/lang/String;)V
    .locals 6

    .line 181
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/okei/timetable/SettingsRows;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 182
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 183
    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 184
    new-instance v1, Lru/okei/timetable/ui/BreakRule;

    iget-object v2, p0, Lru/okei/timetable/SettingsRows;->activity:Landroid/app/Activity;

    iget v3, p0, Lru/okei/timetable/SettingsRows;->muted:I

    iget v4, p0, Lru/okei/timetable/SettingsRows;->line:I

    .line 185
    invoke-static {v2}, Lru/okei/timetable/Ui;->bold(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lru/okei/timetable/ui/BreakRule;-><init>(Landroid/content/Context;IILandroid/graphics/Typeface;)V

    const-string v2, "\u2014"

    const-string v3, ""

    .line 186
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lru/okei/timetable/ui/BreakRule;->setLabel(Ljava/lang/String;)V

    .line 187
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object p1, p0, Lru/okei/timetable/SettingsRows;->sink:Lru/okei/timetable/SettingsRows$Sink;

    invoke-interface {p1, v0}, Lru/okei/timetable/SettingsRows$Sink;->add(Landroid/view/View;)V

    return-void
.end method

.method public label(Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .locals 1

    .line 53
    iget-object v0, p0, Lru/okei/timetable/SettingsRows;->activity:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3, p4}, Lru/okei/timetable/Ui;->label(Landroid/content/Context;Ljava/lang/CharSequence;FIZ)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 55
    invoke-virtual {p1, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x3df5c28f    # 0.12f

    .line 56
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_0
    return-object p2
.end method

.method public note(Ljava/lang/String;)V
    .locals 4

    .line 175
    iget v0, p0, Lru/okei/timetable/SettingsRows;->dim:I

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lru/okei/timetable/SettingsRows;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, 0x40800000    # 4.0f

    .line 176
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v3

    invoke-virtual {p1, v2, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 177
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 178
    iget-object v0, p0, Lru/okei/timetable/SettingsRows;->sink:Lru/okei/timetable/SettingsRows$Sink;

    invoke-interface {v0, p1}, Lru/okei/timetable/SettingsRows$Sink;->add(Landroid/view/View;)V

    return-void
.end method

.method public stepper(Ljava/lang/String;Ljava/lang/String;Lru/okei/timetable/SettingsRows$Value;Lru/okei/timetable/SettingsRows$Action;Lru/okei/timetable/SettingsRows$Action;)V
    .locals 7

    .line 211
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/okei/timetable/SettingsRows;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 212
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 213
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 214
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v3

    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 216
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lru/okei/timetable/SettingsRows;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 217
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x41400000    # 12.0f

    .line 218
    iget v6, p0, Lru/okei/timetable/SettingsRows;->fg:I

    invoke-virtual {p0, p1, v5, v6, v1}, Lru/okei/timetable/SettingsRows;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    iget v5, p0, Lru/okei/timetable/SettingsRows;->muted:I

    invoke-virtual {p0, p2, v2, v5, v1}, Lru/okei/timetable/SettingsRows;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p2

    const/high16 v2, 0x40400000    # 3.0f

    .line 220
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v2

    invoke-virtual {p2, v1, v2, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 221
    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p2, v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    invoke-interface {p3}, Lru/okei/timetable/SettingsRows$Value;->text()Ljava/lang/String;

    move-result-object p2

    const/high16 v1, 0x41500000    # 13.0f

    iget v2, p0, Lru/okei/timetable/SettingsRows;->fg:I

    invoke-virtual {p0, p2, v1, v2, v4}, Lru/okei/timetable/SettingsRows;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p2

    const/16 v1, 0x11

    .line 226
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x42800000    # 64.0f

    .line 227
    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 228
    invoke-interface {p3}, Lru/okei/timetable/SettingsRows$Value;->text()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 230
    new-instance p1, Lru/okei/timetable/SettingsRows$5;

    invoke-direct {p1, p0, p4, p2, p3}, Lru/okei/timetable/SettingsRows$5;-><init>(Lru/okei/timetable/SettingsRows;Lru/okei/timetable/SettingsRows$Action;Landroid/widget/TextView;Lru/okei/timetable/SettingsRows$Value;)V

    const-string p4, "\u2212"

    invoke-virtual {p0, p4, p1}, Lru/okei/timetable/SettingsRows;->button(Ljava/lang/String;Lru/okei/timetable/SettingsRows$Action;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    new-instance p1, Lru/okei/timetable/SettingsRows$6;

    invoke-direct {p1, p0, p5, p2, p3}, Lru/okei/timetable/SettingsRows$6;-><init>(Lru/okei/timetable/SettingsRows;Lru/okei/timetable/SettingsRows$Action;Landroid/widget/TextView;Lru/okei/timetable/SettingsRows$Value;)V

    const-string p2, "+"

    invoke-virtual {p0, p2, p1}, Lru/okei/timetable/SettingsRows;->button(Ljava/lang/String;Lru/okei/timetable/SettingsRows$Action;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    iget-object p1, p0, Lru/okei/timetable/SettingsRows;->sink:Lru/okei/timetable/SettingsRows$Sink;

    invoke-interface {p1, v0}, Lru/okei/timetable/SettingsRows$Sink;->add(Landroid/view/View;)V

    return-void
.end method

.method public value(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 192
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/okei/timetable/SettingsRows;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 194
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x41300000    # 11.0f

    .line 195
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v3

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-virtual {p0, v4}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 197
    iget v4, p0, Lru/okei/timetable/SettingsRows;->muted:I

    invoke-virtual {p0, p1, v3, v4, v1}, Lru/okei/timetable/SettingsRows;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 198
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    .line 201
    invoke-virtual {p0, p2, v2, p3, v3}, Lru/okei/timetable/SettingsRows;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p3

    const v2, 0x800005

    .line 202
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 203
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsRows;->dp(F)I

    move-result v2

    invoke-virtual {p3, v2, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 204
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 207
    iget-object p1, p0, Lru/okei/timetable/SettingsRows;->sink:Lru/okei/timetable/SettingsRows$Sink;

    invoke-interface {p1, v0}, Lru/okei/timetable/SettingsRows$Sink;->add(Landroid/view/View;)V

    return-void
.end method
