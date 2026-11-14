.class public final Lru/okei/timetable/ui/ScheduleViews;
.super Ljava/lang/Object;
.source "ScheduleViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/ui/ScheduleViews$Host;
    }
.end annotation


# static fields
.field private static final RU:Ljava/util/Locale;

.field public static final animateKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final dim:I

.field private final fg:I

.field private final muted:I

.field private final pixel:Landroid/graphics/Typeface;

.field private final pixelBold:Landroid/graphics/Typeface;

.field private final rule:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 26
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/ui/ScheduleViews;->animateKeys:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ru"

    const-string v2, "RU"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lru/okei/timetable/ui/ScheduleViews;->RU:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Typeface;Landroid/graphics/Typeface;IIII)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lru/okei/timetable/ui/ScheduleViews;->pixel:Landroid/graphics/Typeface;

    .line 44
    iput-object p3, p0, Lru/okei/timetable/ui/ScheduleViews;->pixelBold:Landroid/graphics/Typeface;

    .line 45
    iput p4, p0, Lru/okei/timetable/ui/ScheduleViews;->fg:I

    .line 46
    iput p5, p0, Lru/okei/timetable/ui/ScheduleViews;->muted:I

    .line 47
    iput p6, p0, Lru/okei/timetable/ui/ScheduleViews;->dim:I

    .line 48
    iput p7, p0, Lru/okei/timetable/ui/ScheduleViews;->rule:I

    return-void
.end method

.method public static dayDate(Lru/okei/timetable/data/DaySchedule;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 118
    :try_start_0
    invoke-static {p1}, Lru/okei/timetable/data/Formats;->date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 122
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 123
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 124
    iget p0, p0, Lru/okei/timetable/data/DaySchedule;->index:I

    const/4 p1, 0x6

    invoke-virtual {v1, p1, p0}, Ljava/util/Calendar;->add(II)V

    .line 125
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lru/okei/timetable/data/Formats;->day(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ScheduleViews"

    .line 127
    invoke-static {p1, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static metaLine(Lru/okei/timetable/data/Lesson;)Ljava/lang/String;
    .locals 2

    .line 74
    iget-object v0, p0, Lru/okei/timetable/data/Lesson;->room:Ljava/lang/String;

    invoke-static {v0}, Lru/okei/timetable/ui/ScheduleViews;->prettyRoom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lru/okei/timetable/data/Lesson;->teacher:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    return-object p0

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v0, p0, Lru/okei/timetable/data/Lesson;->teacher:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, p0, Lru/okei/timetable/data/Lesson;->teacher:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 83
    :cond_2
    iget-object p0, p0, Lru/okei/timetable/data/Lesson;->teacher:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    sget-object p0, Lru/okei/timetable/ui/ScheduleViews;->RU:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static pairOf(Lru/okei/timetable/data/Lesson;)I
    .locals 1

    .line 197
    :try_start_0
    iget-object p0, p0, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ScheduleViews"

    .line 199
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static prettyRoom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 90
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "\u041e\u0441\u043d\u043e\u0432\u043d\u043e\u0439 \u043a\u043e\u0440\u043f\u0443\u0441-"

    const-string v1, "\u043e\u0441\u043d. \u043a\u043e\u0440\u043f\u0443\u0441 / "

    .line 93
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u041f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0441\u0442\u0432\u0435\u043d\u043d\u044b\u0439 \u043a\u043e\u0440\u043f\u0443\u0441-"

    const-string v1, "\u043f\u0440\u043e\u0438\u0437\u0432. \u043a\u043e\u0440\u043f\u0443\u0441 / "

    .line 94
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u0410\u0443\u0434\u0438\u0442\u043e\u0440\u0438\u044f"

    const-string v1, "\u0430\u0443\u0434."

    .line 95
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u0421\u043f\u043e\u0440\u0442\u0438\u0432\u043d\u044b\u0439 \u0437\u0430\u043b"

    const-string v1, "\u0441\u043f\u043e\u0440\u0442\u0437\u0430\u043b"

    .line 96
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dayView(Lru/okei/timetable/data/DaySchedule;ZLjava/util/Calendar;Ljava/lang/String;Lru/okei/timetable/ui/ScheduleViews$Host;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p5

    .line 206
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v2, v0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    invoke-direct {v9, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 207
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, 0x41000000    # 8.0f

    .line 209
    invoke-virtual {v0, v3}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v0, v5}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v6

    invoke-virtual {v0, v3}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v7

    invoke-virtual {v0, v5}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v10

    invoke-virtual {v9, v4, v6, v7, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v10, 0x0

    .line 210
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 212
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v6, v0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 213
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 214
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 216
    iget-object v6, v1, Lru/okei/timetable/data/DaySchedule;->name:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41700000    # 15.0f

    iget v11, v0, Lru/okei/timetable/ui/ScheduleViews;->fg:I

    invoke-virtual {v0, v6, v7, v11, v2}, Lru/okei/timetable/ui/ScheduleViews;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x3e0f5c29    # 0.14f

    .line 217
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 218
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 219
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v6, p4

    .line 222
    invoke-static {v1, v6}, Lru/okei/timetable/ui/ScheduleViews;->dayDate(Lru/okei/timetable/data/DaySchedule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v7, v0, Lru/okei/timetable/ui/ScheduleViews;->dim:I

    invoke-virtual {v0, v6, v5, v7, v10}, Lru/okei/timetable/ui/ScheduleViews;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 223
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v13, 0x40000000    # 2.0f

    .line 224
    invoke-virtual {v0, v13}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v2

    invoke-virtual {v6, v10, v2, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 225
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    invoke-interface {v8, v4}, Lru/okei/timetable/ui/ScheduleViews$Host;->rowBuilt(Landroid/view/View;)V

    .line 230
    new-instance v2, Landroid/view/View;

    iget-object v4, v0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 231
    iget v4, v0, Lru/okei/timetable/ui/ScheduleViews;->rule:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 232
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x3f800000    # 1.0f

    .line 233
    invoke-virtual {v0, v14}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v6

    invoke-direct {v4, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 234
    invoke-virtual {v0, v3}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 235
    invoke-virtual {v0, v3}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v6

    neg-int v6, v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 236
    invoke-virtual {v0, v3}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v3

    neg-int v3, v3

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 237
    invoke-virtual {v9, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v2, v1, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    iget-object v1, v0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    const v2, 0x7f0601e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lru/okei/timetable/ui/ScheduleViews;->dim:I

    invoke-virtual {v0, v1, v5, v2, v10}, Lru/okei/timetable/ui/ScheduleViews;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    .line 241
    invoke-virtual {v0, v2}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v2

    invoke-virtual {v1, v10, v2, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 242
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 244
    :goto_0
    iget-object v3, v1, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 245
    iget-object v3, v1, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/okei/timetable/data/Lesson;

    .line 246
    iget v4, v1, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-interface {v8, v3, v4}, Lru/okei/timetable/ui/ScheduleViews$Host;->lessonRow(Lru/okei/timetable/data/Lesson;I)Landroid/view/View;

    move-result-object v4

    .line 247
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    invoke-interface {v8, v4}, Lru/okei/timetable/ui/ScheduleViews$Host;->rowBuilt(Landroid/view/View;)V

    add-int/lit8 v15, v2, 0x1

    .line 249
    iget-object v2, v1, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_1

    .line 250
    invoke-static {v3}, Lru/okei/timetable/ui/ScheduleViews;->pairOf(Lru/okei/timetable/data/Lesson;)I

    move-result v4

    .line 251
    iget-object v2, v1, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/okei/timetable/data/Lesson;

    invoke-static {v2}, Lru/okei/timetable/ui/ScheduleViews;->pairOf(Lru/okei/timetable/data/Lesson;)I

    move-result v2

    if-lez v4, :cond_1

    add-int/lit8 v3, v4, 0x1

    if-ne v2, v3, :cond_1

    .line 253
    iget v2, v1, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-static {v2, v4}, Lru/okei/timetable/data/Bells;->breakAfter(II)I

    move-result v7

    if-lez v7, :cond_1

    .line 255
    iget v3, v1, Lru/okei/timetable/data/DaySchedule;->index:I

    move-object/from16 v2, p5

    move-object/from16 v5, p3

    move/from16 v6, p2

    invoke-interface/range {v2 .. v7}, Lru/okei/timetable/ui/ScheduleViews$Host;->breakRow(IILjava/util/Calendar;ZI)Landroid/view/View;

    move-result-object v2

    .line 256
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    invoke-interface {v8, v2}, Lru/okei/timetable/ui/ScheduleViews$Host;->rowBuilt(Landroid/view/View;)V

    :cond_1
    move v2, v15

    goto :goto_0

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    return-object v9

    .line 268
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, v0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 269
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 270
    new-instance v2, Landroid/view/View;

    iget-object v3, v0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 271
    iget v3, v0, Lru/okei/timetable/ui/ScheduleViews;->fg:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 272
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v13}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v4

    invoke-direct {v3, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    new-instance v2, Landroid/view/View;

    iget-object v3, v0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 275
    iget v3, v0, Lru/okei/timetable/ui/ScheduleViews;->fg:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 276
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v13}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v4

    invoke-direct {v3, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public dp(F)I
    .locals 1

    .line 290
    iget-object v0, p0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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

.method public healthBanner(ZLjava/lang/String;)Landroid/view/View;
    .locals 7

    .line 308
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 309
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x40800000    # 4.0f

    .line 310
    invoke-virtual {p0, v2}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p0, v4}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3, v6, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    const v3, 0x7f0601e7

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    const v3, 0x7f0601e8

    :goto_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/high16 v3, 0x41400000    # 12.0f

    iget v5, p0, Lru/okei/timetable/ui/ScheduleViews;->fg:I

    invoke-virtual {p0, p1, v3, v5, v1}, Lru/okei/timetable/ui/ScheduleViews;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    const v1, 0x3e0f5c29    # 0.14f

    .line 312
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 313
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 314
    iget p1, p0, Lru/okei/timetable/ui/ScheduleViews;->muted:I

    invoke-virtual {p0, p2, v4, p1, v6}, Lru/okei/timetable/ui/ScheduleViews;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 315
    invoke-virtual {p0, v2}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result p2

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {p0, v1}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v1

    invoke-virtual {p1, v6, p2, v6, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 316
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    invoke-virtual {p0}, Lru/okei/timetable/ui/ScheduleViews;->separator()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public label(Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .locals 2

    .line 52
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    .line 54
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 55
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p4, :cond_0

    .line 56
    iget-object p1, p0, Lru/okei/timetable/ui/ScheduleViews;->pixelBold:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lru/okei/timetable/ui/ScheduleViews;->pixel:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x0

    .line 57
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    return-object v0
.end method

.method public lessonView(Lru/okei/timetable/data/Lesson;ILjava/lang/String;)Landroid/view/View;
    .locals 12

    .line 133
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 135
    invoke-virtual {p0, v2}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/high16 v2, 0x41d00000    # 26.0f

    .line 137
    invoke-virtual {p0, v2}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 138
    iget-object v3, p1, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lru/okei/timetable/ui/ScheduleViews;->numberBox(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 141
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v7, 0x41600000    # 14.0f

    .line 144
    invoke-virtual {p0, v7}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 145
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-boolean v4, p1, Lru/okei/timetable/data/Lesson;->changed:Z

    if-eqz v4, :cond_0

    iget-object v4, p1, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u25b2 "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    iget-object v4, p1, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    :goto_0
    const/high16 v7, 0x41700000    # 15.0f

    .line 148
    iget v8, p0, Lru/okei/timetable/ui/ScheduleViews;->fg:I

    invoke-virtual {p0, v4, v7, v8, v1}, Lru/okei/timetable/ui/ScheduleViews;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    const/high16 v8, 0x40a00000    # 5.0f

    .line 149
    invoke-virtual {p0, v8}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 150
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    sget-object v8, Lru/okei/timetable/ui/ScheduleViews;->animateKeys:Ljava/util/Set;

    iget-object v9, p1, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 152
    invoke-static {v7, v4}, Lru/okei/timetable/ui/TextScramble;->animate(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 155
    :cond_1
    iget-boolean v4, p1, Lru/okei/timetable/data/Lesson;->changed:Z

    const/high16 v7, 0x41200000    # 10.0f

    if-eqz v4, :cond_2

    if-eqz p3, :cond_2

    .line 157
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    .line 158
    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 159
    iget-object v4, p0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    const v8, 0x7f0601e2

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget v4, p0, Lru/okei/timetable/ui/ScheduleViews;->dim:I

    invoke-virtual {p0, p3, v7, v4, v1}, Lru/okei/timetable/ui/ScheduleViews;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p3

    const/high16 v4, 0x40800000    # 4.0f

    .line 160
    invoke-virtual {p0, v4}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v4

    invoke-virtual {p3, v1, v4, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 161
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    :cond_2
    invoke-static {p1}, Lru/okei/timetable/ui/ScheduleViews;->metaLine(Lru/okei/timetable/data/Lesson;)Ljava/lang/String;

    move-result-object p3

    .line 166
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/high16 v8, 0x40400000    # 3.0f

    if-nez v4, :cond_3

    .line 167
    iget v4, p0, Lru/okei/timetable/ui/ScheduleViews;->dim:I

    invoke-virtual {p0, p3, v7, v4, v1}, Lru/okei/timetable/ui/ScheduleViews;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    const/high16 v9, 0x40e00000    # 7.0f

    .line 168
    invoke-virtual {p0, v9}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v9

    invoke-virtual {v4, v1, v9, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 169
    invoke-virtual {p0, v8}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4, v9, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 170
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    :cond_3
    invoke-static {p1}, Lru/okei/timetable/ui/ScheduleViews;->pairOf(Lru/okei/timetable/data/Lesson;)I

    move-result v2

    invoke-static {p2, v2}, Lru/okei/timetable/data/Bells;->rangeOf(II)Ljava/lang/String;

    move-result-object p2

    .line 174
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v4, " \u2014 "

    if-nez v2, :cond_5

    .line 175
    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 176
    array-length v9, v2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    aget-object v9, v2, v1

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, p2

    :goto_1
    const/high16 v3, 0x41400000    # 12.0f

    iget v9, p0, Lru/okei/timetable/ui/ScheduleViews;->dim:I

    invoke-virtual {p0, v2, v3, v9, v1}, Lru/okei/timetable/ui/ScheduleViews;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x5

    .line 177
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 178
    invoke-virtual {p0, v8}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 179
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 182
    invoke-virtual {p0, v7}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v3, 0x40000000    # 2.0f

    .line 183
    invoke-virtual {p0, v3}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    :cond_5
    iget-boolean v1, p1, Lru/okei/timetable/data/Lesson;->changed:Z

    const-string v2, ""

    if-eqz v1, :cond_6

    iget-object v1, p0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    const v3, 0x7f0601e3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v2

    .line 188
    :goto_2
    iget-object v3, p1, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p1, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    iget-object v3, p1, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u043f\u0430\u0440\u0430, "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_8
    :goto_3
    move-object v3, v2

    :goto_4
    iget-object p1, p1, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    .line 190
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const-string v6, ", "

    if-eqz v5, :cond_9

    move-object p2, v2

    goto :goto_5

    :cond_9
    const-string v5, " \u0434\u043e "

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 191
    :goto_5
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public numberBox(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 101
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string p1, "\u2013"

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object p1, p0, Lru/okei/timetable/ui/ScheduleViews;->pixelBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x2

    const/high16 v1, 0x41500000    # 13.0f

    .line 104
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0x11

    .line 105
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x0

    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 107
    iget v1, p0, Lru/okei/timetable/ui/ScheduleViews;->fg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 110
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 111
    invoke-virtual {p0, p1}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result p1

    iget v2, p0, Lru/okei/timetable/ui/ScheduleViews;->fg:I

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public separator()Landroid/view/View;
    .locals 4

    .line 62
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 63
    iget v1, p0, Lru/okei/timetable/ui/ScheduleViews;->rule:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 65
    invoke-virtual {p0, v2}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41000000    # 8.0f

    .line 66
    invoke-virtual {p0, v2}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v3

    neg-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 67
    invoke-virtual {p0, v2}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x0

    .line 68
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public staleBanner(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 8

    .line 294
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 295
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x40800000    # 4.0f

    .line 296
    invoke-virtual {p0, v2}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p0, v4}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3, v6, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 297
    iget-object v3, p0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    const v5, 0x7f0601e5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x41400000    # 12.0f

    iget v7, p0, Lru/okei/timetable/ui/ScheduleViews;->fg:I

    invoke-virtual {p0, v3, v5, v7, v1}, Lru/okei/timetable/ui/ScheduleViews;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    const v3, 0x3e0f5c29    # 0.14f

    .line 298
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 299
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    iget-object v1, p0, Lru/okei/timetable/ui/ScheduleViews;->context:Landroid/content/Context;

    const v3, 0x7f0601e6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u2014 "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lru/okei/timetable/ui/ScheduleViews;->muted:I

    invoke-virtual {p0, p1, v4, p2, v6}, Lru/okei/timetable/ui/ScheduleViews;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 301
    invoke-virtual {p0, v2}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result p2

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {p0, v1}, Lru/okei/timetable/ui/ScheduleViews;->dp(F)I

    move-result v1

    invoke-virtual {p1, v6, p2, v6, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 302
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    invoke-virtual {p0}, Lru/okei/timetable/ui/ScheduleViews;->separator()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method
