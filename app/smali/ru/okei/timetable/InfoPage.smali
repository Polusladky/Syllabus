.class public final Lru/okei/timetable/InfoPage;
.super Landroid/widget/FrameLayout;
.source "InfoPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/InfoPage$Track;
    }
.end annotation


# static fields
.field private static final EASE:Landroid/animation/TimeInterpolator;

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1


# instance fields
.field private final bar:Lru/okei/timetable/InfoPage$Track;

.field private final bold:Landroid/graphics/Typeface;

.field private final caption:Landroid/widget/TextView;

.field private final count:Landroid/widget/TextView;

.field private countText:Ljava/lang/String;

.field private final dayRow:Landroid/widget/LinearLayout;

.field private final extra:Landroid/widget/TextView;

.field private final extraTag:Landroid/widget/TextView;

.field private final handler:Landroid/os/Handler;

.field private final label:Landroid/widget/TextView;

.field private lastKind:I

.field private final meta:Landroid/widget/TextView;

.field private final pair:Landroid/widget/TextView;

.field private final pairTag:Landroid/widget/TextView;

.field private final timer:Lru/okei/timetable/ui/InfoTimerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Lru/okei/timetable/ui/Motion;->ease()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/InfoPage;->EASE:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 51
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v1, Lru/okei/timetable/InfoPage;->handler:Landroid/os/Handler;

    const/high16 v0, -0x80000000

    .line 48
    iput v0, v1, Lru/okei/timetable/InfoPage;->lastKind:I

    const-string v0, ""

    .line 324
    iput-object v0, v1, Lru/okei/timetable/InfoPage;->countText:Ljava/lang/String;

    .line 53
    invoke-static/range {p1 .. p1}, Lru/okei/timetable/ui/Theme;->bg(Landroid/content/Context;)I

    move-result v3

    .line 54
    invoke-static/range {p1 .. p1}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v4

    .line 55
    invoke-static/range {p1 .. p1}, Lru/okei/timetable/ui/Theme;->muted(Landroid/content/Context;)I

    move-result v5

    .line 56
    invoke-static/range {p1 .. p1}, Lru/okei/timetable/ui/Theme;->dim(Landroid/content/Context;)I

    move-result v6

    .line 57
    invoke-static/range {p1 .. p1}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v7

    .line 58
    invoke-virtual {v1, v3}, Lru/okei/timetable/InfoPage;->setBackgroundColor(I)V

    const/4 v8, 0x0

    .line 59
    invoke-virtual {v1, v8}, Lru/okei/timetable/InfoPage;->setAlpha(F)V

    const/16 v9, 0x8

    .line 60
    invoke-virtual {v1, v9}, Lru/okei/timetable/InfoPage;->setVisibility(I)V

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v10, "fonts/Tiny5-Regular.ttf"

    invoke-static {v0, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v0, v12, :cond_0

    .line 66
    :try_start_0
    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-direct {v0, v12, v10}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    const-string v10, "\'wght\' 700"

    .line 67
    invoke-virtual {v0, v10}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move-object v11, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v10, "InfoPage"

    .line 72
    invoke-static {v10, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :cond_0
    :goto_0
    iput-object v11, v1, Lru/okei/timetable/InfoPage;->bold:Landroid/graphics/Typeface;

    .line 77
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    .line 78
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v11, 0x41c00000    # 24.0f

    .line 80
    invoke-direct {v1, v11}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v12

    const/high16 v13, 0x42080000    # 34.0f

    invoke-direct {v1, v13}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v13

    invoke-direct {v1, v11}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v11

    const/high16 v14, 0x41f00000    # 30.0f

    invoke-direct {v1, v14}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v14

    invoke-virtual {v0, v12, v13, v11, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 82
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 84
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x11

    .line 86
    iput v14, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v14, 0x41600000    # 14.0f

    .line 87
    invoke-direct {v1, v14}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v15

    iput v15, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 88
    invoke-direct {v1, v14}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v15

    iput v15, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const v15, 0x3e6147ae    # 0.22f

    const/high16 v14, 0x41400000    # 12.0f

    .line 90
    invoke-direct {v1, v2, v14, v5, v15}, Lru/okei/timetable/InfoPage;->text(Landroid/content/Context;FIF)Landroid/widget/TextView;

    move-result-object v15

    iput-object v15, v1, Lru/okei/timetable/InfoPage;->label:Landroid/widget/TextView;

    .line 91
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 92
    invoke-virtual {v9, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 93
    invoke-direct {v1, v3}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v8

    invoke-static/range {p1 .. p1}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v9, v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 94
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-direct {v1, v14}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v3

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-direct {v1, v8}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v9

    invoke-direct {v1, v14}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v12

    invoke-direct {v1, v8}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v8

    invoke-virtual {v15, v3, v9, v12, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 96
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 99
    invoke-virtual {v0, v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v8, 0x41500000    # 13.0f

    .line 101
    invoke-direct {v1, v2, v8, v5, v3}, Lru/okei/timetable/InfoPage;->text(Landroid/content/Context;FIF)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v1, Lru/okei/timetable/InfoPage;->pairTag:Landroid/widget/TextView;

    .line 102
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v9, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x41900000    # 18.0f

    .line 104
    invoke-direct {v1, v12}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v15

    iput v15, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 105
    invoke-virtual {v0, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, 0x41980000    # 19.0f

    const v9, 0x3ca3d70a    # 0.02f

    .line 107
    invoke-direct {v1, v2, v3, v4, v9}, Lru/okei/timetable/InfoPage;->text(Landroid/content/Context;FIF)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v1, Lru/okei/timetable/InfoPage;->pair:Landroid/widget/TextView;

    const/4 v9, 0x3

    .line 108
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 109
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v9, 0x40800000    # 4.0f

    .line 110
    invoke-direct {v1, v9}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v3, v9, v15}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 111
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v9, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x41000000    # 8.0f

    .line 113
    invoke-direct {v1, v8}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v8

    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 114
    invoke-virtual {v0, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v3, Lru/okei/timetable/ui/InfoTimerView;

    invoke-direct {v3, v2}, Lru/okei/timetable/ui/InfoTimerView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lru/okei/timetable/InfoPage;->timer:Lru/okei/timetable/ui/InfoTimerView;

    .line 117
    invoke-virtual {v3, v4}, Lru/okei/timetable/ui/InfoTimerView;->setInk(I)V

    const v8, 0x3fc66666    # 1.55f

    .line 118
    invoke-virtual {v3, v8}, Lru/okei/timetable/ui/InfoTimerView;->setScaleY(F)V

    .line 119
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x43520000    # 210.0f

    .line 120
    invoke-direct {v1, v9}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v9

    const/4 v12, -0x1

    invoke-direct {v8, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x40c00000    # 6.0f

    .line 121
    invoke-direct {v1, v9}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v12

    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 122
    invoke-virtual {v0, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    .line 124
    invoke-direct {v1, v2, v15, v4, v3}, Lru/okei/timetable/InfoPage;->text(Landroid/content/Context;FIF)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v1, Lru/okei/timetable/InfoPage;->count:Landroid/widget/TextView;

    const/16 v8, 0x8

    .line 125
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v3, 0x3e3851ec    # 0.18f

    .line 127
    invoke-direct {v1, v2, v14, v5, v3}, Lru/okei/timetable/InfoPage;->text(Landroid/content/Context;FIF)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v1, Lru/okei/timetable/InfoPage;->caption:Landroid/widget/TextView;

    .line 128
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v5, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x41800000    # 16.0f

    .line 130
    invoke-direct {v1, v12}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v12

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 131
    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v3, Lru/okei/timetable/InfoPage$Track;

    invoke-static/range {p1 .. p1}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result v5

    invoke-direct {v3, v2, v5, v7}, Lru/okei/timetable/InfoPage$Track;-><init>(Landroid/content/Context;II)V

    iput-object v3, v1, Lru/okei/timetable/InfoPage;->bar:Lru/okei/timetable/InfoPage$Track;

    .line 134
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x41600000    # 14.0f

    .line 135
    invoke-direct {v1, v7}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v7

    invoke-direct {v5, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41d00000    # 26.0f

    .line 136
    invoke-direct {v1, v7}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v7, 0x40000000    # 2.0f

    .line 137
    invoke-direct {v1, v7}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 138
    invoke-direct {v1, v7}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 139
    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lru/okei/timetable/InfoPage;->dayRow:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    .line 142
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 143
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 144
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41900000    # 18.0f

    .line 146
    invoke-direct {v1, v7}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 147
    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x3d75c28f    # 0.06f

    const/high16 v5, 0x41500000    # 13.0f

    .line 149
    invoke-direct {v1, v2, v5, v6, v3}, Lru/okei/timetable/InfoPage;->text(Landroid/content/Context;FIF)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v1, Lru/okei/timetable/InfoPage;->meta:Landroid/widget/TextView;

    const/4 v5, 0x2

    .line 150
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 151
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 152
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v10, 0x41b00000    # 22.0f

    .line 154
    invoke-direct {v1, v10}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v10

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 155
    invoke-virtual {v0, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x3e23d70a    # 0.16f

    .line 157
    invoke-direct {v1, v2, v14, v6, v3}, Lru/okei/timetable/InfoPage;->text(Landroid/content/Context;FIF)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v1, Lru/okei/timetable/InfoPage;->extraTag:Landroid/widget/TextView;

    .line 158
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41a00000    # 20.0f

    .line 160
    invoke-direct {v1, v7}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 161
    invoke-virtual {v0, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x3d23d70a    # 0.04f

    const/high16 v6, 0x41500000    # 13.0f

    .line 163
    invoke-direct {v1, v2, v6, v4, v3}, Lru/okei/timetable/InfoPage;->text(Landroid/content/Context;FIF)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v1, Lru/okei/timetable/InfoPage;->extra:Landroid/widget/TextView;

    .line 164
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 165
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 166
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 168
    invoke-direct {v1, v9}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 169
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-virtual {v1, v0, v11}, Lru/okei/timetable/InfoPage;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static append(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 276
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 279
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, ", "

    .line 280
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private applyColors()V
    .locals 5

    .line 211
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v1

    .line 213
    invoke-static {v0}, Lru/okei/timetable/ui/Theme;->muted(Landroid/content/Context;)I

    move-result v2

    .line 214
    invoke-static {v0}, Lru/okei/timetable/ui/Theme;->dim(Landroid/content/Context;)I

    move-result v3

    .line 215
    invoke-static {v0}, Lru/okei/timetable/ui/Theme;->isLight(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    move v0, v1

    .line 216
    :goto_0
    iget-object v4, p0, Lru/okei/timetable/InfoPage;->pair:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v4, p0, Lru/okei/timetable/InfoPage;->extra:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v0, p0, Lru/okei/timetable/InfoPage;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v0, p0, Lru/okei/timetable/InfoPage;->pairTag:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object v0, p0, Lru/okei/timetable/InfoPage;->caption:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object v0, p0, Lru/okei/timetable/InfoPage;->extraTag:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v0, p0, Lru/okei/timetable/InfoPage;->meta:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v0, p0, Lru/okei/timetable/InfoPage;->timer:Lru/okei/timetable/ui/InfoTimerView;

    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/InfoTimerView;->setInk(I)V

    return-void
.end method

.method private blink()V
    .locals 2

    .line 352
    iget-object v0, p0, Lru/okei/timetable/InfoPage;->timer:Lru/okei/timetable/ui/InfoTimerView;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/InfoTimerView;->beat(F)V

    return-void
.end method

.method private dp(F)I
    .locals 1

    .line 373
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getResources()Landroid/content/res/Resources;

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

.method private fitTimer(Ljava/lang/String;)F
    .locals 4

    .line 357
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v0, 0x430c0000    # 140.0f

    mul-float p1, p1, v0

    .line 358
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 359
    iget-object v1, p0, Lru/okei/timetable/InfoPage;->bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 360
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v1, "00:00"

    .line 361
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 362
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getWidth()I

    move-result v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-direct {p0, v2}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    if-gtz v1, :cond_0

    .line 364
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-direct {p0, v3}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    :cond_0
    int-to-float v1, v1

    cmpl-float v3, v0, v1

    if-lez v3, :cond_1

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    mul-float p1, p1, v1

    div-float/2addr p1, v0

    .line 369
    :cond_1
    invoke-direct {p0, v2}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43040000    # 132.0f

    invoke-direct {p0, v1}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private static set(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 320
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 228
    invoke-direct {p0}, Lru/okei/timetable/InfoPage;->applyColors()V

    .line 229
    iget-object p7, p0, Lru/okei/timetable/InfoPage;->label:Landroid/widget/TextView;

    invoke-static {p7, p1}, Lru/okei/timetable/InfoPage;->set(Landroid/widget/TextView;Ljava/lang/String;)V

    const-string p7, ""

    if-nez p2, :cond_0

    move-object p2, p7

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 231
    :goto_0
    iput-object p2, p0, Lru/okei/timetable/InfoPage;->countText:Ljava/lang/String;

    .line 232
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "--"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 233
    :goto_1
    iget-object v3, p0, Lru/okei/timetable/InfoPage;->count:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v3, p0, Lru/okei/timetable/InfoPage;->count:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v3, p0, Lru/okei/timetable/InfoPage;->timer:Lru/okei/timetable/ui/InfoTimerView;

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v3, v5}, Lru/okei/timetable/ui/InfoTimerView;->setVisibility(I)V

    if-eqz v0, :cond_3

    .line 237
    invoke-direct {p0, p2}, Lru/okei/timetable/InfoPage;->fitTimer(Ljava/lang/String;)F

    move-result v3

    .line 238
    iget-object v5, p0, Lru/okei/timetable/InfoPage;->timer:Lru/okei/timetable/ui/InfoTimerView;

    iget-object v6, p0, Lru/okei/timetable/InfoPage;->bold:Landroid/graphics/Typeface;

    invoke-virtual {v5, p2, v6, v3}, Lru/okei/timetable/ui/InfoTimerView;->configure(Ljava/lang/String;Landroid/graphics/Typeface;F)V

    .line 239
    iget-object v3, p0, Lru/okei/timetable/InfoPage;->timer:Lru/okei/timetable/ui/InfoTimerView;

    const v5, 0x3f0ccccd    # 0.55f

    invoke-virtual {v3, v5}, Lru/okei/timetable/ui/InfoTimerView;->beat(F)V

    .line 241
    :cond_3
    iget-object v3, p0, Lru/okei/timetable/InfoPage;->bar:Lru/okei/timetable/InfoPage$Track;

    if-eqz v0, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {v3, v5}, Lru/okei/timetable/InfoPage$Track;->setVisibility(I)V

    .line 242
    iget-object v3, p0, Lru/okei/timetable/InfoPage;->dayRow:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    const/4 v4, 0x0

    :cond_5
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lru/okei/timetable/InfoPage;->caption:Landroid/widget/TextView;

    invoke-static {v0, p3}, Lru/okei/timetable/InfoPage;->set(Landroid/widget/TextView;Ljava/lang/String;)V

    if-nez p4, :cond_6

    move-object v0, p7

    goto :goto_4

    :cond_6
    move-object v0, p4

    :goto_4
    const-string v3, "\u00b7"

    .line 246
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_7

    .line 248
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    add-int/2addr v4, v1

    .line 249
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_7
    move-object v5, p7

    .line 251
    :goto_5
    iget-object v4, p0, Lru/okei/timetable/InfoPage;->pairTag:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lru/okei/timetable/InfoPage;->set(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 252
    iget-object v4, p0, Lru/okei/timetable/InfoPage;->pair:Landroid/widget/TextView;

    invoke-static {v4, v0}, Lru/okei/timetable/InfoPage;->set(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lru/okei/timetable/InfoPage;->meta:Landroid/widget/TextView;

    invoke-static {v0, p5}, Lru/okei/timetable/InfoPage;->set(Landroid/widget/TextView;Ljava/lang/String;)V

    if-nez p6, :cond_8

    move-object v0, p7

    goto :goto_6

    :cond_8
    move-object v0, p6

    .line 256
    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_9

    .line 258
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p7

    add-int/2addr v3, v1

    .line 259
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_9
    iget-object v1, p0, Lru/okei/timetable/InfoPage;->extraTag:Landroid/widget/TextView;

    invoke-static {v1, p7}, Lru/okei/timetable/InfoPage;->set(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 262
    iget-object p7, p0, Lru/okei/timetable/InfoPage;->extra:Landroid/widget/TextView;

    invoke-static {p7, v0}, Lru/okei/timetable/InfoPage;->set(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 264
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    invoke-static {p7, p1}, Lru/okei/timetable/InfoPage;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 266
    invoke-static {p7, p3}, Lru/okei/timetable/InfoPage;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 267
    invoke-static {p7, p2}, Lru/okei/timetable/InfoPage;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 268
    invoke-static {p7, p4}, Lru/okei/timetable/InfoPage;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 269
    invoke-static {p7, p5}, Lru/okei/timetable/InfoPage;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 270
    invoke-static {p7, p6}, Lru/okei/timetable/InfoPage;->append(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/okei/timetable/InfoPage;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private text(Landroid/content/Context;FIF)Landroid/widget/TextView;
    .locals 1

    .line 175
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 176
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 177
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    iget-object p1, p0, Lru/okei/timetable/InfoPage;->bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x0

    .line 179
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 180
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/4 p1, 0x1

    .line 181
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method


# virtual methods
.method public playIn(I)V
    .locals 2

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0, v0}, Lru/okei/timetable/InfoPage;->setVisibility(I)V

    const/high16 v0, 0x42700000    # 60.0f

    if-lez p1, :cond_0

    .line 328
    invoke-direct {p0, v0}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result p1

    neg-int p1, p1

    :goto_0
    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lru/okei/timetable/InfoPage;->setTranslationX(F)V

    .line 329
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x104

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lru/okei/timetable/InfoPage;->EASE:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public playOut(I)V
    .locals 2

    .line 333
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    if-lez p1, :cond_0

    invoke-direct {p0, v1}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result p1

    neg-int p1, p1

    :goto_0
    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 334
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lru/okei/timetable/InfoPage;->EASE:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lru/okei/timetable/InfoPage$1;

    invoke-direct {v0, p0}, Lru/okei/timetable/InfoPage$1;-><init>(Lru/okei/timetable/InfoPage;)V

    .line 335
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 341
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public pulse()V
    .locals 2

    .line 345
    iget-object v0, p0, Lru/okei/timetable/InfoPage;->countText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lru/okei/timetable/InfoPage;->timer:Lru/okei/timetable/ui/InfoTimerView;

    invoke-virtual {v0}, Lru/okei/timetable/ui/InfoTimerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/InfoPage;->timer:Lru/okei/timetable/ui/InfoTimerView;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/InfoTimerView;->beat(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 187
    iget v7, p0, Lru/okei/timetable/InfoPage;->lastKind:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lru/okei/timetable/InfoPage;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-object v5, p2

    .line 189
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x6

    if-ge p2, p3, :cond_2

    .line 191
    aget-object p3, p1, p2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_0

    const-string p3, ", "

    .line 193
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_0
    aget-object p3, p1, p2

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/okei/timetable/InfoPage;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDay([J[JJJJF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 287
    iget-object v2, v0, Lru/okei/timetable/InfoPage;->bar:Lru/okei/timetable/InfoPage$Track;

    move/from16 v3, p9

    invoke-virtual {v2, v3}, Lru/okei/timetable/InfoPage$Track;->setProgress(F)V

    .line 288
    iget-object v2, v0, Lru/okei/timetable/InfoPage;->dayRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-nez v1, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lru/okei/timetable/ui/Theme;->bg(Landroid/content/Context;)I

    move-result v2

    .line 293
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result v3

    .line 294
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lru/okei/timetable/ui/Theme;->muted(Landroid/content/Context;)I

    move-result v4

    .line 295
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 296
    :goto_0
    array-length v8, v1

    if-ge v7, v8, :cond_8

    .line 297
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    add-int/lit8 v9, v7, 0x1

    .line 298
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x2

    const/high16 v11, 0x41400000    # 12.0f

    .line 299
    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 300
    iget-object v10, v0, Lru/okei/timetable/InfoPage;->bold:Landroid/graphics/Typeface;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 301
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/16 v10, 0x11

    .line 302
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 303
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 304
    aget-wide v11, v1, v7

    const/4 v13, 0x1

    cmp-long v14, p3, v11

    if-ltz v14, :cond_1

    aget-wide v11, p2, v7

    cmp-long v14, p3, v11

    if-gez v14, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 305
    :goto_1
    aget-wide v14, p2, v7

    cmp-long v12, p3, v14

    if-ltz v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    if-eqz v11, :cond_3

    move v12, v5

    goto :goto_3

    :cond_3
    move v12, v2

    .line 306
    :goto_3
    invoke-virtual {v10, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v12, 0x40000000    # 2.0f

    .line 307
    invoke-direct {v0, v12}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v12

    if-eqz v11, :cond_4

    move v14, v5

    goto :goto_4

    :cond_4
    move v14, v3

    :goto_4
    invoke-virtual {v10, v12, v14}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 308
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v11, :cond_5

    move v10, v2

    goto :goto_5

    :cond_5
    if-eqz v13, :cond_6

    move v10, v4

    goto :goto_5

    :cond_6
    move v10, v5

    .line 309
    :goto_5
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x41f00000    # 30.0f

    invoke-direct {v0, v11}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v12

    invoke-direct {v0, v11}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v11

    invoke-direct {v10, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v7, :cond_7

    const/high16 v7, 0x41000000    # 8.0f

    .line 312
    invoke-direct {v0, v7}, Lru/okei/timetable/InfoPage;->dp(F)I

    move-result v7

    iput v7, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 314
    :cond_7
    iget-object v7, v0, Lru/okei/timetable/InfoPage;->dayRow:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v7, v9

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public setKind(I)V
    .locals 3

    .line 202
    iget-object v0, p0, Lru/okei/timetable/InfoPage;->count:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 203
    :goto_0
    iget v1, p0, Lru/okei/timetable/InfoPage;->lastKind:I

    if-eq p1, v1, :cond_1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 204
    invoke-direct {p0}, Lru/okei/timetable/InfoPage;->blink()V

    .line 206
    :cond_1
    iput p1, p0, Lru/okei/timetable/InfoPage;->lastKind:I

    return-void
.end method
