.class public final Lru/okei/timetable/ui/PixelDialog;
.super Ljava/lang/Object;
.source "PixelDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/ui/PixelDialog$TextListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 0

    int-to-float p1, p1

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static prompt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/okei/timetable/ui/PixelDialog$TextListener;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 24
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 25
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/16 v4, 0x16

    .line 27
    invoke-static {v0, v4}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v4

    .line 28
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 30
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 31
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 32
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->bg(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v6, 0x2

    .line 33
    invoke-static {v0, v6}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 34
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v7, "fonts/Tiny5-Regular.ttf"

    invoke-static {v4, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 38
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, ""

    if-nez v1, :cond_0

    move-object v1, v8

    goto :goto_0

    .line 39
    :cond_0
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 40
    invoke-virtual {v7, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 41
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x3df5c28f    # 0.12f

    .line 43
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/16 v9, 0x11

    .line 45
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v10, 0xe

    .line 46
    invoke-static {v0, v10}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v7, v1, v1, v1, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 47
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 49
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-nez p3, :cond_1

    move-object v10, v8

    goto :goto_1

    :cond_1
    move-object/from16 v10, p3

    .line 50
    :goto_1
    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p2

    .line 51
    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/high16 v8, 0x41700000    # 15.0f

    .line 53
    invoke-virtual {v7, v6, v8}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 54
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setTextColor(I)V

    .line 55
    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v8, 0x51

    .line 56
    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setGravity(I)V

    .line 57
    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 58
    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    const/4 v8, 0x4

    .line 59
    invoke-static {v0, v8}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-static {v0, v8}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v8

    const/16 v11, 0x8

    invoke-static {v0, v11}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v7, v10, v1, v8, v12}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 61
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v10, Lru/okei/timetable/ui/Shelf;

    invoke-direct {v10, v0}, Lru/okei/timetable/ui/Shelf;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result v12

    invoke-virtual {v10, v12}, Lru/okei/timetable/ui/Shelf;->setColor(I)V

    .line 64
    invoke-virtual {v10}, Lru/okei/timetable/ui/Shelf;->showAll()V

    .line 65
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v13, 0xa

    .line 66
    invoke-static {v0, v13}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v14

    const/4 v15, -0x1

    invoke-direct {v12, v15, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x50

    .line 67
    iput v14, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 68
    invoke-virtual {v8, v10, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v7, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v12

    const v14, 0x3f333333    # 0.7f

    mul-float v12, v12, v14

    float-to-int v12, v12

    const/16 v14, 0x2e

    invoke-static {v0, v14}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v14

    invoke-direct {v10, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    iput v3, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74
    invoke-virtual {v5, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0xc

    .line 78
    invoke-static {v0, v10}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v8, v1, v10, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v10, "\u041e\u041a"

    const-string v12, "\u041e\u0422\u041c\u0415\u041d\u0410"

    .line 79
    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v6, :cond_5

    if-nez v12, :cond_3

    const/4 v15, 0x1

    goto :goto_4

    :cond_3
    const/4 v15, 0x0

    .line 82
    :goto_4
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 83
    aget-object v14, v10, v12

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v14, 0x41400000    # 12.0f

    .line 84
    invoke-virtual {v11, v6, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 85
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v14, 0x3dcccccd    # 0.1f

    .line 87
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 88
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 89
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 90
    invoke-static {v0, v13}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v14

    const/16 v6, 0xb

    invoke-static {v0, v6}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v9

    invoke-static {v0, v13}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v6}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v11, v14, v9, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 91
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 92
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->bg(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 93
    invoke-static {v0, v3}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v1, v6, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 94
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, -0x2

    const/4 v14, 0x0

    invoke-direct {v1, v14, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v6, 0x8

    if-nez v12, :cond_4

    const/4 v14, 0x0

    goto :goto_5

    .line 97
    :cond_4
    invoke-static {v0, v6}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v14

    :goto_5
    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 98
    new-instance v9, Lru/okei/timetable/ui/PixelDialog$1;

    move-object/from16 v14, p4

    invoke-direct {v9, v15, v14, v7, v2}, Lru/okei/timetable/ui/PixelDialog$1;-><init>(ZLru/okei/timetable/ui/PixelDialog$TextListener;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {v8, v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/16 v9, 0x11

    const/16 v11, 0x8

    goto/16 :goto_3

    .line 109
    :cond_5
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 112
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 114
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v3, 0x3f5c28f6    # 0.86f

    mul-float v0, v0, v3

    float-to-int v0, v0

    const/4 v3, -0x2

    invoke-virtual {v1, v0, v3}, Landroid/view/Window;->setLayout(II)V

    .line 118
    :cond_6
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 119
    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 128
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 129
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/16 v5, 0x16

    .line 131
    invoke-static {v0, v5}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v5

    .line 132
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 134
    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 135
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 136
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->bg(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v7, 0x2

    .line 137
    invoke-static {v0, v7}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 138
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v8, "fonts/Tiny5-Regular.ttf"

    invoke-static {v5, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 142
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 143
    :cond_0
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 144
    invoke-virtual {v8, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 145
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x3df5c28f    # 0.12f

    .line 147
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/4 v1, 0x0

    .line 148
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/16 v9, 0xe

    .line 149
    invoke-static {v0, v9}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v8, v1, v1, v1, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 150
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, 0x0

    .line 152
    :goto_1
    array-length v10, v2

    const/4 v11, -0x2

    if-ge v8, v10, :cond_2

    .line 154
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 155
    aget-object v12, v2, v8

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x41400000    # 12.0f

    .line 156
    invoke-virtual {v10, v7, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 157
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v12, 0x3dcccccd    # 0.1f

    .line 159
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 160
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/16 v12, 0x11

    .line 161
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 162
    invoke-static {v0, v9}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v12

    invoke-static {v0, v9}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v13

    invoke-static {v0, v9}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v14

    invoke-static {v0, v9}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v15

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 163
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 164
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->bg(Landroid/content/Context;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 165
    invoke-static {v0, v4}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v13

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 166
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v12, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v8, :cond_1

    const/4 v11, 0x0

    goto :goto_2

    :cond_1
    const/16 v11, 0x8

    .line 169
    invoke-static {v0, v11}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v11

    :goto_2
    iput v11, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 170
    new-instance v11, Lru/okei/timetable/ui/PixelDialog$2;

    move-object/from16 v13, p3

    invoke-direct {v11, v3, v13, v8}, Lru/okei/timetable/ui/PixelDialog$2;-><init>(Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;I)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {v6, v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 183
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 184
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 185
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-static {v0, v2}, Lru/okei/timetable/ui/PixelDialog;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0, v11}, Landroid/view/Window;->setLayout(II)V

    .line 187
    :cond_3
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    return-void
.end method
