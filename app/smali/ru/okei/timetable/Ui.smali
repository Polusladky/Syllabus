.class public final Lru/okei/timetable/Ui;
.super Ljava/lang/Object;
.source "Ui.java"


# static fields
.field private static heavy:Landroid/graphics/Typeface;

.field private static pixel:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bold(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 33
    sget-object v0, Lru/okei/timetable/Ui;->heavy:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 34
    invoke-static {p0, v0}, Lru/okei/timetable/Ui;->load(Landroid/content/Context;Z)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lru/okei/timetable/Ui;->heavy:Landroid/graphics/Typeface;

    .line 36
    :cond_0
    sget-object p0, Lru/okei/timetable/Ui;->heavy:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public static label(Landroid/content/Context;Ljava/lang/CharSequence;FIZ)Landroid/widget/TextView;
    .locals 1

    .line 57
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    .line 59
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 60
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p4, :cond_0

    .line 61
    invoke-static {p0}, Lru/okei/timetable/Ui;->bold(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lru/okei/timetable/Ui;->pixel(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p0, 0x0

    .line 62
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    return-object v0
.end method

.method private static load(Landroid/content/Context;Z)Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "fonts/Tiny5-Regular.ttf"

    if-eqz p1, :cond_0

    .line 41
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    .line 42
    new-instance p1, Landroid/graphics/Typeface$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    const-string v1, "\'wght\' 700"

    .line 43
    invoke-virtual {p1, v1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "Ui"

    .line 50
    invoke-static {p1, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    sget-object p0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public static pixel(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 26
    sget-object v0, Lru/okei/timetable/Ui;->pixel:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 27
    invoke-static {p0, v0}, Lru/okei/timetable/Ui;->load(Landroid/content/Context;Z)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lru/okei/timetable/Ui;->pixel:Landroid/graphics/Typeface;

    .line 29
    :cond_0
    sget-object p0, Lru/okei/timetable/Ui;->pixel:Landroid/graphics/Typeface;

    return-object p0
.end method
