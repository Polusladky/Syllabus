.class public Lru/okei/timetable/ShareActivity;
.super Landroid/app/Activity;
.source "ShareActivity.java"


# instance fields
.field private asText:Z

.field private content:Landroid/widget/LinearLayout;

.field private copy:Landroid/widget/TextView;

.field private final dayLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dayRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private fg:I

.field private go:Landroid/widget/TextView;

.field private modeImage:Landroid/widget/TextView;

.field private modeText:Landroid/widget/TextView;

.field private muted:I

.field private pixel:Landroid/graphics/Typeface;

.field private pixelBold:Landroid/graphics/Typeface;

.field private final selected:[Z

.field private week:Lru/okei/timetable/data/WeekSchedule;

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic -$$Nest$fgetasText(Lru/okei/timetable/ShareActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lru/okei/timetable/ShareActivity;->asText:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgo(Lru/okei/timetable/ShareActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/ShareActivity;->go:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselected(Lru/okei/timetable/ShareActivity;)[Z
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/ShareActivity;->selected:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetweek(Lru/okei/timetable/ShareActivity;)Lru/okei/timetable/data/WeekSchedule;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/ShareActivity;->week:Lru/okei/timetable/data/WeekSchedule;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputasText(Lru/okei/timetable/ShareActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/ShareActivity;->asText:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputweek(Lru/okei/timetable/ShareActivity;Lru/okei/timetable/data/WeekSchedule;)V
    .locals 0

    iput-object p1, p0, Lru/okei/timetable/ShareActivity;->week:Lru/okei/timetable/data/WeekSchedule;

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuild(Lru/okei/timetable/ShareActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/ShareActivity;->build()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcopyText(Lru/okei/timetable/ShareActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/ShareActivity;->copyText()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpaintRow(Lru/okei/timetable/ShareActivity;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/okei/timetable/ShareActivity;->paintRow(Landroid/widget/TextView;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msend(Lru/okei/timetable/ShareActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/ShareActivity;->send(Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshare(Lru/okei/timetable/ShareActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/ShareActivity;->share()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshareText(Lru/okei/timetable/ShareActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/ShareActivity;->shareText()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMode(Lru/okei/timetable/ShareActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/ShareActivity;->updateMode()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/ShareActivity;->worker:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x7

    new-array v0, v0, [Z

    .line 35
    iput-object v0, p0, Lru/okei/timetable/ShareActivity;->selected:[Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/ShareActivity;->dayRows:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/ShareActivity;->dayLabels:Ljava/util/List;

    return-void
.end method

.method private build()V
    .locals 11

    .line 168
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 169
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->dayRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->dayLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 171
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->week:Lru/okei/timetable/data/WeekSchedule;

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 175
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->week:Lru/okei/timetable/data/WeekSchedule;

    iget-object v0, v0, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-direct {p0, v0}, Lru/okei/timetable/ShareActivity;->parse(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x0

    .line 176
    :goto_0
    iget-object v4, p0, Lru/okei/timetable/ShareActivity;->week:Lru/okei/timetable/data/WeekSchedule;

    iget-object v4, v4, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 177
    iget-object v4, p0, Lru/okei/timetable/ShareActivity;->week:Lru/okei/timetable/data/WeekSchedule;

    iget-object v4, v4, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/okei/timetable/data/DaySchedule;

    .line 178
    iget-object v5, p0, Lru/okei/timetable/ShareActivity;->selected:[Z

    array-length v5, v5

    if-lt v3, v5, :cond_1

    goto/16 :goto_3

    :cond_1
    if-nez v0, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    :goto_1
    if-eqz v5, :cond_3

    const/4 v6, 0x6

    .line 184
    iget v7, v4, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->add(II)V

    :cond_3
    const-string v6, ""

    const/4 v7, 0x1

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_2

    :cond_4
    const/4 v8, 0x5

    .line 186
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    .line 187
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 188
    :goto_2
    iget-object v8, p0, Lru/okei/timetable/ShareActivity;->dayLabels:Ljava/util/List;

    iget-object v9, v4, Lru/okei/timetable/data/DaySchedule;->name:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v4, v4, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    .line 189
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v2

    const v4, 0x7f060018

    invoke-virtual {p0, v4, v10}, Lru/okei/timetable/ShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "   "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   \u00b7 "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget v4, p0, Lru/okei/timetable/ShareActivity;->fg:I

    invoke-direct {p0, v6, v1, v4, v7}, Lru/okei/timetable/ShareActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    const/high16 v5, 0x41600000    # 14.0f

    .line 191
    invoke-direct {p0, v5}, Lru/okei/timetable/ShareActivity;->dp(F)I

    move-result v6

    invoke-direct {p0, v5}, Lru/okei/timetable/ShareActivity;->dp(F)I

    move-result v5

    invoke-virtual {v4, v2, v6, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 192
    invoke-direct {p0, v4, v3}, Lru/okei/timetable/ShareActivity;->paintRow(Landroid/widget/TextView;I)V

    .line 193
    new-instance v5, Lru/okei/timetable/ShareActivity$7;

    invoke-direct {v5, p0, v3, v4}, Lru/okei/timetable/ShareActivity$7;-><init>(Lru/okei/timetable/ShareActivity;ILandroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v5, p0, Lru/okei/timetable/ShareActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v5, p0, Lru/okei/timetable/ShareActivity;->dayRows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 205
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 206
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    .line 207
    invoke-direct {p0, v6}, Lru/okei/timetable/ShareActivity;->dp(F)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 206
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v5, p0, Lru/okei/timetable/ShareActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 210
    :cond_5
    :goto_3
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->content:Landroid/widget/LinearLayout;

    const-wide/16 v1, 0x16

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v0, v1, v2, v3}, Lru/okei/timetable/ui/Motion;->stagger(Landroid/view/ViewGroup;JF)V

    return-void

    .line 172
    :cond_6
    :goto_4
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->content:Landroid/widget/LinearLayout;

    const v3, 0x7f0601cc

    invoke-virtual {p0, v3}, Lru/okei/timetable/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lru/okei/timetable/ShareActivity;->muted:I

    invoke-direct {p0, v3, v1, v4, v2}, Lru/okei/timetable/ShareActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private copyText()V
    .locals 3

    .line 300
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->week:Lru/okei/timetable/data/WeekSchedule;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "clipboard"

    .line 304
    invoke-virtual {p0, v0}, Lru/okei/timetable/ShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    const-string v1, "oksei"

    .line 306
    iget-object v2, p0, Lru/okei/timetable/ShareActivity;->week:Lru/okei/timetable/data/WeekSchedule;

    invoke-direct {p0, v2}, Lru/okei/timetable/ShareActivity;->textOf(Lru/okei/timetable/data/WeekSchedule;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const v0, 0x7f0601c9

    .line 307
    invoke-virtual {p0, v0}, Lru/okei/timetable/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ShareActivity"

    .line 311
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private dp(F)I
    .locals 1

    .line 400
    invoke-virtual {p0}, Lru/okei/timetable/ShareActivity;->getResources()Landroid/content/res/Resources;

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

    .line 373
    invoke-static {p0, p1, p2, p3, p4}, Lru/okei/timetable/Ui;->label(Landroid/content/Context;Ljava/lang/CharSequence;FIZ)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method private loadPixel(Z)Landroid/graphics/Typeface;
    .locals 0

    if-eqz p1, :cond_0

    .line 390
    invoke-static {p0}, Lru/okei/timetable/Ui;->bold(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lru/okei/timetable/Ui;->pixel(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private loadWeek()V
    .locals 2

    .line 152
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lru/okei/timetable/ShareActivity$6;

    invoke-direct {v1, p0}, Lru/okei/timetable/ShareActivity$6;-><init>(Lru/okei/timetable/ShareActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private paintRow(Landroid/widget/TextView;I)V
    .locals 3

    .line 214
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->selected:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    const-string v1, "\u25a0  "

    goto :goto_0

    :cond_0
    const-string v1, "\u25a1  "

    .line 215
    :goto_0
    iget-object v2, p0, Lru/okei/timetable/ShareActivity;->dayLabels:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    .line 216
    iget p2, p0, Lru/okei/timetable/ShareActivity;->fg:I

    goto :goto_1

    :cond_1
    iget p2, p0, Lru/okei/timetable/ShareActivity;->muted:I

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v0, :cond_2

    .line 217
    iget-object p2, p0, Lru/okei/timetable/ShareActivity;->pixelBold:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lru/okei/timetable/ShareActivity;->pixel:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private parse(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 3

    .line 378
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 380
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 381
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string v0, "ShareActivity"

    .line 384
    invoke-static {v0, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private send(Landroid/net/Uri;)V
    .locals 2

    .line 358
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/png"

    .line 359
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 360
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 361
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x7f0601c8

    .line 362
    invoke-virtual {p0, v1}, Lru/okei/timetable/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 363
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 365
    :try_start_0
    invoke-virtual {p0, v0}, Lru/okei/timetable/ShareActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ShareActivity"

    .line 367
    invoke-static {v0, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private share()V
    .locals 2

    .line 316
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->week:Lru/okei/timetable/data/WeekSchedule;

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->go:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 320
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->go:Landroid/widget/TextView;

    const v1, 0x7f0601d5

    invoke-virtual {p0, v1}, Lru/okei/timetable/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lru/okei/timetable/ShareActivity$8;

    invoke-direct {v1, p0}, Lru/okei/timetable/ShareActivity$8;-><init>(Lru/okei/timetable/ShareActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private shareText()V
    .locals 4

    .line 284
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->week:Lru/okei/timetable/data/WeekSchedule;

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    invoke-static {p0}, Lru/okei/timetable/data/Groups;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0420\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u00b7 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Lru/okei/timetable/ShareActivity;->week:Lru/okei/timetable/data/WeekSchedule;

    invoke-direct {p0, v1}, Lru/okei/timetable/ShareActivity;->textOf(Lru/okei/timetable/data/WeekSchedule;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f0601c8

    .line 292
    :try_start_0
    invoke-virtual {p0, v1}, Lru/okei/timetable/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/okei/timetable/ShareActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ShareActivity"

    .line 294
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private textOf(Lru/okei/timetable/data/WeekSchedule;)Ljava/lang/String;
    .locals 12

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    invoke-static {p0}, Lru/okei/timetable/data/Groups;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u2014 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lru/okei/timetable/data/WeekSchedule;->endDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v1, p1, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-direct {p0, v1}, Lru/okei/timetable/ShareActivity;->parse(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 247
    :goto_0
    iget-object v4, p1, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    iget-object v4, p0, Lru/okei/timetable/ShareActivity;->selected:[Z

    array-length v5, v4

    if-ge v3, v5, :cond_b

    .line 248
    aget-boolean v4, v4, v3

    if-nez v4, :cond_0

    goto/16 :goto_6

    .line 251
    :cond_0
    iget-object v4, p1, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/okei/timetable/data/DaySchedule;

    if-nez v1, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 252
    :cond_1
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    :goto_1
    if-eqz v5, :cond_2

    const/4 v6, 0x6

    .line 254
    iget v7, v4, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->add(II)V

    :cond_2
    const-string v6, "\n\n"

    .line 256
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lru/okei/timetable/data/DaySchedule;->name:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    if-eqz v5, :cond_3

    .line 258
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    .line 259
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    :cond_3
    iget-object v5, v4, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v4, "\n  \u2014 \u041d\u0415\u0422 \u0417\u0410\u041d\u042f\u0422\u0418\u0419"

    .line 262
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_4
    const/4 v5, 0x0

    .line 265
    :goto_2
    iget-object v7, v4, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_a

    .line 266
    iget-object v7, v4, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/okei/timetable/data/Lesson;

    .line 267
    invoke-static {v7}, Lru/okei/timetable/ui/ScheduleViews;->pairOf(Lru/okei/timetable/data/Lesson;)I

    move-result v8

    const-string v9, ""

    if-lez v8, :cond_5

    .line 268
    iget v10, v4, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-static {v10, v8}, Lru/okei/timetable/data/Bells;->rangeOf(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_5
    move-object v8, v9

    .line 269
    :goto_3
    invoke-static {v7}, Lru/okei/timetable/ui/ScheduleViews;->metaLine(Lru/okei/timetable/data/Lesson;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\n  "

    .line 270
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    if-nez v11, :cond_6

    const-string v11, "\u2013"

    goto :goto_4

    :cond_6
    iget-object v11, v7, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    if-nez v11, :cond_7

    goto :goto_5

    :cond_7
    iget-object v9, v7, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 273
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_8
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "\n     "

    .line 276
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 280
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateMode()V
    .locals 3

    .line 221
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->modeImage:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 222
    iget-boolean v1, p0, Lru/okei/timetable/ShareActivity;->asText:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0601d0

    goto :goto_0

    :cond_0
    const v1, 0x7f0601d1

    :goto_0
    invoke-virtual {p0, v1}, Lru/okei/timetable/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->modeImage:Landroid/widget/TextView;

    iget-boolean v1, p0, Lru/okei/timetable/ShareActivity;->asText:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lru/okei/timetable/ShareActivity;->muted:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lru/okei/timetable/ShareActivity;->fg:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->modeImage:Landroid/widget/TextView;

    invoke-static {v0}, Lru/okei/timetable/ui/Motion;->flash(Landroid/view/View;)V

    .line 226
    :cond_2
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->modeText:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 227
    iget-boolean v1, p0, Lru/okei/timetable/ShareActivity;->asText:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0601d3

    goto :goto_2

    :cond_3
    const v1, 0x7f0601d2

    :goto_2
    invoke-virtual {p0, v1}, Lru/okei/timetable/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->modeText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lru/okei/timetable/ShareActivity;->asText:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lru/okei/timetable/ShareActivity;->fg:I

    goto :goto_3

    :cond_4
    iget v1, p0, Lru/okei/timetable/ShareActivity;->muted:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->modeText:Landroid/widget/TextView;

    invoke-static {v0}, Lru/okei/timetable/ui/Motion;->flash(Landroid/view/View;)V

    .line 231
    :cond_5
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->copy:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 232
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 233
    iget-boolean v0, p0, Lru/okei/timetable/ShareActivity;->asText:Z

    if-eqz v0, :cond_6

    .line 234
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->copy:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->copy:Landroid/widget/TextView;

    const-wide/16 v1, 0x28

    invoke-static {v0, v1, v2}, Lru/okei/timetable/ui/Motion;->fadeIn(Landroid/view/View;J)V

    goto :goto_4

    .line 237
    :cond_6
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->copy:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040005

    .line 55
    invoke-virtual {p0, p1}, Lru/okei/timetable/ShareActivity;->setContentView(I)V

    .line 57
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lru/okei/timetable/ShareActivity;->fg:I

    .line 58
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->muted(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lru/okei/timetable/ShareActivity;->muted:I

    .line 59
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->apply(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 61
    invoke-direct {p0, p1}, Lru/okei/timetable/ShareActivity;->loadPixel(Z)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/ShareActivity;->pixel:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, v0}, Lru/okei/timetable/ShareActivity;->loadPixel(Z)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lru/okei/timetable/ShareActivity;->pixelBold:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 64
    :goto_0
    iget-object v2, p0, Lru/okei/timetable/ShareActivity;->selected:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 65
    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f030029

    .line 68
    invoke-virtual {p0, v0}, Lru/okei/timetable/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/okei/timetable/ShareActivity;->content:Landroid/widget/LinearLayout;

    const v0, 0x7f03002b

    .line 69
    invoke-virtual {p0, v0}, Lru/okei/timetable/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/okei/timetable/ShareActivity;->go:Landroid/widget/TextView;

    const v0, 0x7f030030

    .line 70
    invoke-virtual {p0, v0}, Lru/okei/timetable/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lru/okei/timetable/ShareActivity;->pixelBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const v0, 0x7f03002c

    .line 73
    invoke-virtual {p0, v0}, Lru/okei/timetable/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    iget-object v1, p0, Lru/okei/timetable/ShareActivity;->pixel:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const v0, 0x7f030028

    .line 76
    invoke-virtual {p0, v0}, Lru/okei/timetable/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    iget-object v1, p0, Lru/okei/timetable/ShareActivity;->pixelBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 79
    new-instance v1, Lru/okei/timetable/ShareActivity$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/ShareActivity$1;-><init>(Lru/okei/timetable/ShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->go:Landroid/widget/TextView;

    iget-object v1, p0, Lru/okei/timetable/ShareActivity;->pixelBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->go:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 91
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->go:Landroid/widget/TextView;

    new-instance v1, Lru/okei/timetable/ShareActivity$2;

    invoke-direct {v1, p0}, Lru/okei/timetable/ShareActivity$2;-><init>(Lru/okei/timetable/ShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f03002e

    .line 102
    invoke-virtual {p0, v0}, Lru/okei/timetable/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/okei/timetable/ShareActivity;->modeImage:Landroid/widget/TextView;

    const v0, 0x7f03002f

    .line 103
    invoke-virtual {p0, v0}, Lru/okei/timetable/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/okei/timetable/ShareActivity;->modeText:Landroid/widget/TextView;

    const v0, 0x7f03002a

    .line 104
    invoke-virtual {p0, v0}, Lru/okei/timetable/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/okei/timetable/ShareActivity;->copy:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->modeImage:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 106
    iget-object v1, p0, Lru/okei/timetable/ShareActivity;->pixelBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->modeImage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 108
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->modeImage:Landroid/widget/TextView;

    new-instance v1, Lru/okei/timetable/ShareActivity$3;

    invoke-direct {v1, p0}, Lru/okei/timetable/ShareActivity$3;-><init>(Lru/okei/timetable/ShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->modeText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 121
    iget-object v1, p0, Lru/okei/timetable/ShareActivity;->pixelBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 122
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->modeText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 123
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->modeText:Landroid/widget/TextView;

    new-instance v1, Lru/okei/timetable/ShareActivity$4;

    invoke-direct {v1, p0}, Lru/okei/timetable/ShareActivity$4;-><init>(Lru/okei/timetable/ShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_2
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->copy:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 136
    iget-object v1, p0, Lru/okei/timetable/ShareActivity;->pixelBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 137
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->copy:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 138
    iget-object p1, p0, Lru/okei/timetable/ShareActivity;->copy:Landroid/widget/TextView;

    new-instance v0, Lru/okei/timetable/ShareActivity$5;

    invoke-direct {v0, p0}, Lru/okei/timetable/ShareActivity$5;-><init>(Lru/okei/timetable/ShareActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :cond_3
    invoke-direct {p0}, Lru/okei/timetable/ShareActivity;->updateMode()V

    .line 148
    invoke-direct {p0}, Lru/okei/timetable/ShareActivity;->loadWeek()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 395
    iget-object v0, p0, Lru/okei/timetable/ShareActivity;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 396
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 404
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 405
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->themeChanged(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lru/okei/timetable/ShareActivity;->recreate()V

    :cond_0
    return-void
.end method
