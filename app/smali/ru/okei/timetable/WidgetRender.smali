.class public final Lru/okei/timetable/WidgetRender;
.super Ljava/lang/Object;
.source "WidgetRender.java"


# static fields
.field private static final MUTED:I = -0x89898a

.field private static final ROW_MAX:F = 22.0f

.field private static final ROW_MIN:F = 13.0f

.field private static final WHITE:I = -0x1


# instance fields
.field private final background:I

.field private final bold:Landroid/graphics/Typeface;

.field private final density:F

.field private final ink:I

.field private final paint:Landroid/graphics/Paint;

.field private final pixel:Landroid/graphics/Typeface;

.field private final soft:I

.field private final text:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "WidgetRender"

    const-string v1, "fonts/Tiny5-Regular.ttf"

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lru/okei/timetable/WidgetRender;->paint:Landroid/graphics/Paint;

    .line 29
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lru/okei/timetable/WidgetRender;->density:F

    .line 36
    invoke-static {p1}, Lru/okei/timetable/ui/Theme;->bg(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lru/okei/timetable/WidgetRender;->background:I

    .line 37
    invoke-static {p1}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lru/okei/timetable/WidgetRender;->ink:I

    .line 38
    invoke-static {p1}, Lru/okei/timetable/ui/Theme;->muted(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lru/okei/timetable/WidgetRender;->soft:I

    .line 41
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 43
    invoke-static {v0, v2}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 47
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 49
    :try_start_1
    new-instance v3, Landroid/graphics/Typeface$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    const-string p1, "\'wght\' 700"

    .line 50
    invoke-virtual {v3, p1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 55
    invoke-static {v0, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object p1, v2

    .line 59
    :goto_1
    iput-object v2, p0, Lru/okei/timetable/WidgetRender;->pixel:Landroid/graphics/Typeface;

    .line 60
    iput-object p1, p0, Lru/okei/timetable/WidgetRender;->bold:Landroid/graphics/Typeface;

    .line 61
    iget-object p1, p0, Lru/okei/timetable/WidgetRender;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object p1, p0, Lru/okei/timetable/WidgetRender;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object p1, p0, Lru/okei/timetable/WidgetRender;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 64
    iget-object p1, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object p1, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method private dp(F)F
    .locals 1

    .line 69
    iget v0, p0, Lru/okei/timetable/WidgetRender;->density:F

    mul-float p1, p1, v0

    return p1
.end method

.method private drawFooter(Landroid/graphics/Canvas;Ljava/lang/String;IIF)V
    .locals 2

    .line 175
    iget-object v0, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    iget-object v1, p0, Lru/okei/timetable/WidgetRender;->pixel:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 176
    iget-object v0, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-direct {p0, v1}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 177
    iget-object v0, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    iget v1, p0, Lru/okei/timetable/WidgetRender;->soft:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, p5

    sub-float/2addr p3, v0

    .line 178
    iget-object v0, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-direct {p0, p2, p3, v0}, Lru/okei/timetable/WidgetRender;->fit(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object p2

    int-to-float p3, p4

    const/high16 p4, 0x40a00000    # 5.0f

    invoke-direct {p0, p4}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result p4

    sub-float/2addr p3, p4

    iget-object p4, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p5, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private fit(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_3

    .line 227
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_1

    goto :goto_1

    .line 231
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "\u2026"

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_2

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method private footerOnly(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Ljava/lang/String;ZIIF)Landroid/graphics/Bitmap;
    .locals 6

    if-eqz p4, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p5

    move v4, p6

    move v5, p7

    .line 169
    invoke-direct/range {v0 .. v5}, Lru/okei/timetable/WidgetRender;->drawFooter(Landroid/graphics/Canvas;Ljava/lang/String;IIF)V

    :cond_0
    return-object p2
.end method

.method public static freshnessDot(Landroid/content/Context;)I
    .locals 5

    .line 211
    invoke-static {p0}, Lru/okei/timetable/data/Cache;->time(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 p0, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return p0

    .line 215
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 216
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 217
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 218
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x6

    .line 219
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_1

    const/4 p0, 0x1

    :cond_1
    if-eqz p0, :cond_2

    const/4 p0, -0x1

    goto :goto_0

    :cond_2
    const p0, -0x89898a

    :goto_0
    return p0
.end method


# virtual methods
.method public draw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "III)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p8

    const/4 v4, 0x1

    move/from16 v5, p6

    .line 74
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v6, p7

    .line 75
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 76
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 77
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 78
    iget v9, v8, Lru/okei/timetable/WidgetRender;->background:I

    invoke-virtual {v15, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    const/high16 v9, 0x41200000    # 10.0f

    .line 80
    invoke-direct {v8, v9}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v14

    const/high16 v9, 0x40e00000    # 7.0f

    .line 81
    invoke-direct {v8, v9}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v9

    const/high16 v10, 0x40a00000    # 5.0f

    .line 82
    invoke-direct {v8, v10}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v16

    const/16 v17, 0x0

    if-eqz v3, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    int-to-float v11, v5

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v12, v12, v14

    sub-float v12, v11, v12

    const/high16 v13, 0x41400000    # 12.0f

    const/16 v18, 0x0

    if-eqz v10, :cond_1

    .line 85
    invoke-direct {v8, v13}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v19

    goto :goto_1

    :cond_1
    const/16 v19, 0x0

    :goto_1
    sub-float v12, v12, v19

    int-to-float v4, v6

    const/high16 v13, 0x42f00000    # 120.0f

    .line 87
    invoke-direct {v8, v13}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v20

    cmpl-float v20, v4, v20

    if-ltz v20, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_2

    const/16 v20, 0x1

    goto :goto_2

    :cond_2
    const/16 v20, 0x0

    .line 88
    :goto_2
    invoke-direct {v8, v13}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v13

    cmpl-float v13, v4, v13

    if-ltz v13, :cond_3

    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    const/16 v21, 0x1

    goto :goto_3

    :cond_3
    const/16 v21, 0x0

    :goto_3
    const/high16 v13, 0x41600000    # 14.0f

    .line 90
    invoke-direct {v8, v13}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v13

    const v22, 0x3e23d70a    # 0.16f

    move-object/from16 p7, v7

    mul-float v7, v4, v22

    invoke-static {v13, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v13, 0x41300000    # 11.0f

    move/from16 v22, v6

    .line 91
    invoke-direct {v8, v13}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v6

    const v23, 0x3df5c28f    # 0.12f

    mul-float v13, v4, v23

    invoke-static {v6, v13}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v13, v9, v7

    move/from16 v23, v5

    .line 94
    iget-object v5, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    iget-object v2, v8, Lru/okei/timetable/WidgetRender;->bold:Landroid/graphics/Typeface;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 95
    iget-object v2, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    iget-object v2, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    iget v5, v8, Lru/okei/timetable/WidgetRender;->ink:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v2, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-direct {v8, v5, v12, v2}, Lru/okei/timetable/WidgetRender;->fit(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-virtual {v15, v2, v14, v13, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v2, 0x40400000    # 3.0f

    if-eqz v10, :cond_4

    .line 101
    iget-object v5, v8, Lru/okei/timetable/WidgetRender;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x41300000    # 11.0f

    .line 102
    invoke-direct {v8, v3}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v5

    sub-float v3, v11, v5

    const v5, 0x3eae147b    # 0.34f

    mul-float v7, v7, v5

    add-float/2addr v9, v7

    invoke-direct {v8, v2}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v5

    iget-object v7, v8, Lru/okei/timetable/WidgetRender;->paint:Landroid/graphics/Paint;

    invoke-virtual {v15, v3, v9, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    if-eqz v20, :cond_5

    .line 106
    iget-object v3, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    iget-object v5, v8, Lru/okei/timetable/WidgetRender;->pixel:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 107
    iget-object v3, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    const/high16 v5, 0x41100000    # 9.0f

    invoke-direct {v8, v5}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 108
    iget-object v3, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    iget v5, v8, Lru/okei/timetable/WidgetRender;->soft:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x41300000    # 11.0f

    .line 109
    invoke-direct {v8, v3}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v5

    add-float/2addr v13, v5

    .line 110
    iget-object v5, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-direct {v8, v0, v12, v5}, Lru/okei/timetable/WidgetRender;->fit(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-virtual {v15, v0, v14, v13, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    const/high16 v3, 0x41300000    # 11.0f

    :goto_4
    if-eqz v1, :cond_6

    .line 113
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 114
    iget-object v0, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    iget-object v5, v8, Lru/okei/timetable/WidgetRender;->pixel:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 115
    iget-object v0, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 116
    iget-object v0, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    iget v5, v8, Lru/okei/timetable/WidgetRender;->ink:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    invoke-direct {v8, v2}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v0

    add-float/2addr v6, v0

    add-float/2addr v13, v6

    .line 118
    iget-object v0, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-direct {v8, v1, v12, v0}, Lru/okei/timetable/WidgetRender;->fit(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-virtual {v15, v0, v14, v13, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 121
    :cond_6
    iget-object v0, v8, Lru/okei/timetable/WidgetRender;->paint:Landroid/graphics/Paint;

    iget v1, v8, Lru/okei/timetable/WidgetRender;->ink:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    invoke-direct {v8, v2}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v0

    add-float/2addr v0, v13

    sub-float v1, v11, v14

    const/high16 v2, 0x3f800000    # 1.0f

    .line 123
    invoke-direct {v8, v2}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float v13, v0, v5

    iget-object v5, v8, Lru/okei/timetable/WidgetRender;->paint:Landroid/graphics/Paint;

    move-object v9, v15

    move v10, v14

    move v11, v0

    move v12, v1

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v6, 0x41300000    # 11.0f

    move v7, v14

    move-object v14, v5

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 124
    invoke-direct {v8, v2}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v2

    add-float/2addr v0, v2

    if-eqz v21, :cond_7

    .line 126
    invoke-direct {v8, v3}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v18

    :cond_7
    sub-float v4, v4, v16

    sub-float v4, v4, v18

    sub-float/2addr v4, v0

    move-object/from16 v2, p4

    if-nez v2, :cond_8

    const/4 v3, 0x0

    goto :goto_5

    .line 128
    :cond_8
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    :goto_5
    if-eqz v3, :cond_d

    const/high16 v5, 0x41500000    # 13.0f

    .line 129
    invoke-direct {v8, v5}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v9

    cmpg-float v9, v4, v9

    if-gtz v9, :cond_9

    goto/16 :goto_7

    :cond_9
    const/high16 v9, 0x41b00000    # 22.0f

    .line 133
    invoke-direct {v8, v9}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v9

    int-to-float v10, v3

    div-float v10, v4, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 135
    invoke-direct {v8, v5}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v10

    cmpg-float v10, v9, v10

    if-gez v10, :cond_a

    .line 136
    invoke-direct {v8, v5}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v9

    div-float/2addr v4, v9

    float-to-int v3, v4

    const/4 v4, 0x1

    .line 137
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 139
    :cond_a
    invoke-direct {v8, v6}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v4

    const v5, 0x3f47ae14    # 0.78f

    mul-float v5, v5, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 140
    iget-object v5, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    iget-object v6, v8, Lru/okei/timetable/WidgetRender;->pixel:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 141
    iget-object v5, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const v5, 0x3f3851ec    # 0.72f

    mul-float v5, v5, v9

    add-float/2addr v0, v5

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_b

    .line 145
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v17

    .line 146
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    .line 147
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    .line 148
    iget-object v13, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    iget v14, v8, Lru/okei/timetable/WidgetRender;->soft:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    iget-object v13, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-virtual {v15, v6, v7, v0, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 150
    iget-object v6, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    const v13, 0x3f99999a    # 1.2f

    mul-float v13, v13, v4

    add-float v14, v7, v13

    .line 152
    iget-object v13, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    iget v11, v8, Lru/okei/timetable/WidgetRender;->ink:I

    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setColor(I)V

    sub-float v6, v1, v6

    const/high16 v11, 0x40c00000    # 6.0f

    .line 153
    invoke-direct {v8, v11}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v11

    sub-float v11, v6, v11

    sub-float/2addr v11, v14

    iget-object v13, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-direct {v8, v10, v11, v13}, Lru/okei/timetable/WidgetRender;->fit(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-virtual {v15, v10, v14, v0, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 155
    iget-object v10, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    iget v11, v8, Lru/okei/timetable/WidgetRender;->soft:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v10, v8, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-virtual {v15, v12, v6, v0, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v0, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p5

    move/from16 v3, v23

    move/from16 v4, v22

    move v5, v7

    .line 161
    invoke-direct/range {v0 .. v5}, Lru/okei/timetable/WidgetRender;->drawFooter(Landroid/graphics/Canvas;Ljava/lang/String;IIF)V

    :cond_c
    return-object p7

    :cond_d
    :goto_7
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p7

    move-object/from16 v3, p5

    move/from16 v4, v21

    move/from16 v5, v23

    move/from16 v6, v22

    .line 130
    invoke-direct/range {v0 .. v7}, Lru/okei/timetable/WidgetRender;->footerOnly(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Ljava/lang/String;ZIIF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public drawMini(Ljava/lang/String;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x1

    .line 182
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 183
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 184
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 185
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 186
    iget v3, p0, Lru/okei/timetable/WidgetRender;->background:I

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    const/high16 v3, 0x41000000    # 8.0f

    .line 187
    invoke-direct {p0, v3}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v3

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-float p3, p3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    sub-float v5, p3, v5

    if-eqz v0, :cond_1

    const/high16 v6, 0x41200000    # 10.0f

    .line 189
    invoke-direct {p0, v6}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    sub-float/2addr v5, v6

    const/high16 v6, 0x41600000    # 14.0f

    .line 190
    invoke-direct {p0, v6}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v6

    int-to-float p4, p4

    const v7, 0x3eae147b    # 0.34f

    mul-float v7, v7, p4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v7, 0x41300000    # 11.0f

    .line 191
    invoke-direct {p0, v7}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v7

    const v8, 0x3e851eb8    # 0.26f

    mul-float v8, v8, p4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    div-float/2addr p4, v4

    .line 193
    iget-object v8, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    iget-object v9, p0, Lru/okei/timetable/WidgetRender;->bold:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 194
    iget-object v8, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 195
    iget-object v6, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    iget v8, p0, Lru/okei/timetable/WidgetRender;->ink:I

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    iget-object v6, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    const v8, 0x3d23d70a    # 0.04f

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 197
    iget-object v6, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v5, v6}, Lru/okei/timetable/WidgetRender;->fit(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object p1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p0, v6}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result v6

    sub-float v6, p4, v6

    iget-object v8, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 198
    iget-object p1, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    iget-object v6, p0, Lru/okei/timetable/WidgetRender;->pixel:Landroid/graphics/Typeface;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 199
    iget-object p1, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 200
    iget-object p1, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    iget v6, p0, Lru/okei/timetable/WidgetRender;->soft:I

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object p1, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    invoke-direct {p0, p2, v5, p1}, Lru/okei/timetable/WidgetRender;->fit(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object p1

    add-float/2addr p4, v7

    .line 202
    invoke-direct {p0, v4}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result p2

    add-float/2addr p4, p2

    iget-object p2, p0, Lru/okei/timetable/WidgetRender;->text:Landroid/graphics/Paint;

    .line 201
    invoke-virtual {v2, p1, v3, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_2

    .line 204
    iget-object p1, p0, Lru/okei/timetable/WidgetRender;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x41100000    # 9.0f

    .line 205
    invoke-direct {p0, p1}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result p1

    sub-float/2addr p3, p1

    invoke-direct {p0, v4}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result p1

    add-float/2addr v3, p1

    const/high16 p1, 0x40200000    # 2.5f

    invoke-direct {p0, p1}, Lru/okei/timetable/WidgetRender;->dp(F)F

    move-result p1

    iget-object p2, p0, Lru/okei/timetable/WidgetRender;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p3, v3, p1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-object v1
.end method
