.class public final Lru/okei/timetable/ScheduleImage;
.super Ljava/lang/Object;
.source "ScheduleImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/ScheduleImage$Line;
    }
.end annotation


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final GREY:I = -0x656566

.field private static final MARGIN:I = 0x38

.field private static final WHITE:I = -0x1

.field private static final WIDTH:I = 0x438


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "\u0410\u0423\u0414. "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_2

    .line 164
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 165
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p1, 0x0

    .line 168
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    if-lez p1, :cond_3

    const-string p2, "  /  "

    .line 170
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 174
    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static pairOf(Lru/okei/timetable/data/Lesson;)I
    .locals 1

    .line 183
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

    const-string v0, "ScheduleImage"

    .line 185
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static parse(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 3

    .line 192
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 194
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 195
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v0, "ScheduleImage"

    .line 198
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static range(Lru/okei/timetable/data/WeekSchedule;)Ljava/lang/String;
    .locals 2

    .line 153
    iget-object v0, p0, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    iget-object p0, p0, Lru/okei/timetable/data/WeekSchedule;->endDate:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u2014 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static render(Landroid/content/Context;Lru/okei/timetable/data/WeekSchedule;[Z)Landroid/graphics/Bitmap;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 48
    invoke-static {v0, v3}, Lru/okei/timetable/ScheduleImage;->typeface(Landroid/content/Context;Z)Landroid/graphics/Typeface;

    move-result-object v4

    const/4 v5, 0x1

    .line 49
    invoke-static {v0, v5}, Lru/okei/timetable/ScheduleImage;->typeface(Landroid/content/Context;Z)Landroid/graphics/Typeface;

    move-result-object v6

    .line 50
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 51
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 54
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v15, Lru/okei/timetable/ScheduleImage$Line;

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/data/Groups;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x5c

    const/4 v12, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v0, 0x12

    move-object v9, v15

    move-object v3, v15

    move v15, v0

    invoke-direct/range {v9 .. v15}, Lru/okei/timetable/ScheduleImage$Line;-><init>(Ljava/lang/String;IIZII)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v0, Lru/okei/timetable/ScheduleImage$Line;

    invoke-static/range {p1 .. p1}, Lru/okei/timetable/ScheduleImage;->range(Lru/okei/timetable/data/WeekSchedule;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x28

    const v19, -0x656566

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x2c

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Lru/okei/timetable/ScheduleImage$Line;-><init>(Ljava/lang/String;IIZII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, v1, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-static {v0}, Lru/okei/timetable/ScheduleImage;->parse(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 60
    :goto_0
    iget-object v10, v1, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_9

    .line 61
    iget-object v10, v1, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lru/okei/timetable/data/DaySchedule;

    if-eqz v2, :cond_0

    .line 62
    array-length v11, v2

    if-ge v3, v11, :cond_0

    aget-boolean v11, v2, v3

    if-nez v11, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez v0, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Calendar;

    :goto_1
    if-eqz v9, :cond_2

    const/4 v11, 0x6

    .line 68
    iget v12, v10, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-virtual {v9, v11, v12}, Ljava/util/Calendar;->add(II)V

    .line 70
    :cond_2
    new-instance v11, Lru/okei/timetable/ScheduleImage$Line;

    iget-object v12, v10, Lru/okei/timetable/data/DaySchedule;->name:Ljava/lang/String;

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x38

    const/16 v19, -0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x6

    move-object/from16 v16, v11

    invoke-direct/range {v16 .. v22}, Lru/okei/timetable/ScheduleImage$Line;-><init>(Ljava/lang/String;IIZII)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_3

    .line 72
    new-instance v11, Lru/okei/timetable/ScheduleImage$Line;

    const/4 v12, 0x5

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v13, 0x2

    .line 73
    invoke-virtual {v9, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "."

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x22

    const v26, -0x656566

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x22

    move-object/from16 v23, v11

    invoke-direct/range {v23 .. v29}, Lru/okei/timetable/ScheduleImage$Line;-><init>(Ljava/lang/String;IIZII)V

    .line 72
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_3
    iget-object v9, v10, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 76
    new-instance v9, Lru/okei/timetable/ScheduleImage$Line;

    const-string v17, "\u2014 \u041d\u0415\u0422 \u0417\u0410\u041d\u042f\u0422\u0418\u0419"

    const/16 v18, 0x22

    const v19, -0x656566

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x28

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v22}, Lru/okei/timetable/ScheduleImage$Line;-><init>(Ljava/lang/String;IIZII)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_4
    const/4 v9, 0x0

    .line 79
    :goto_2
    iget-object v11, v10, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_8

    .line 80
    iget-object v11, v10, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lru/okei/timetable/data/Lesson;

    .line 81
    iget-object v12, v11, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    if-eqz v12, :cond_6

    iget-object v12, v11, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_3

    :cond_5
    iget-object v12, v11, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    goto :goto_4

    :cond_6
    :goto_3
    const-string v12, "\u2013"

    :goto_4
    iget-object v13, v11, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "   "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 83
    new-instance v12, Lru/okei/timetable/ScheduleImage$Line;

    const/16 v18, 0x28

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x6

    move-object/from16 v16, v12

    invoke-direct/range {v16 .. v22}, Lru/okei/timetable/ScheduleImage$Line;-><init>(Ljava/lang/String;IIZII)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget v12, v10, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-static {v11}, Lru/okei/timetable/ScheduleImage;->pairOf(Lru/okei/timetable/data/Lesson;)I

    move-result v13

    invoke-static {v12, v13}, Lru/okei/timetable/data/Bells;->rangeOf(II)Ljava/lang/String;

    move-result-object v12

    .line 85
    iget-object v13, v11, Lru/okei/timetable/data/Lesson;->teacher:Ljava/lang/String;

    invoke-static {v11}, Lru/okei/timetable/ScheduleImage;->room(Lru/okei/timetable/data/Lesson;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11, v12}, Lru/okei/timetable/ScheduleImage;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 86
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 87
    new-instance v11, Lru/okei/timetable/ScheduleImage$Line;

    const/16 v18, 0x20

    const v19, -0x656566

    const/16 v20, 0x0

    const/16 v21, 0x34

    const/16 v22, 0x1a

    move-object/from16 v16, v11

    invoke-direct/range {v16 .. v22}, Lru/okei/timetable/ScheduleImage$Line;-><init>(Ljava/lang/String;IIZII)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 90
    :cond_8
    new-instance v9, Lru/okei/timetable/ScheduleImage$Line;

    const-string v17, ""

    const/16 v18, 0x16

    const v19, -0x656566

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1a

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v22}, Lru/okei/timetable/ScheduleImage$Line;-><init>(Ljava/lang/String;IIZII)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    const/4 v9, 0x1

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    if-nez v9, :cond_a

    .line 93
    new-instance v0, Lru/okei/timetable/ScheduleImage$Line;

    const-string v17, "\u041d\u0415 \u0412\u042b\u0411\u0420\u0410\u041d\u041e \u041d\u0418 \u041e\u0414\u041d\u041e\u0413\u041e \u0414\u041d\u042f"

    const/16 v18, 0x24

    const v19, -0x656566

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1e

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Lru/okei/timetable/ScheduleImage$Line;-><init>(Ljava/lang/String;IIZII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_a
    new-instance v0, Lru/okei/timetable/ScheduleImage$Line;

    const-string v10, "OKSEI.RU"

    const/16 v11, 0x20

    const v12, -0x656566

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lru/okei/timetable/ScheduleImage$Line;-><init>(Ljava/lang/String;IIZII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x38

    const/4 v1, 0x0

    const/16 v2, 0x38

    .line 98
    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    const v9, 0x3faccccd    # 1.35f

    if-ge v1, v3, :cond_d

    .line 99
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/okei/timetable/ScheduleImage$Line;

    .line 100
    iget-boolean v10, v3, Lru/okei/timetable/ScheduleImage$Line;->bold:Z

    if-eqz v10, :cond_b

    move-object v10, v6

    goto :goto_8

    :cond_b
    move-object v10, v4

    :goto_8
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 101
    iget v10, v3, Lru/okei/timetable/ScheduleImage$Line;->size:I

    int-to-float v10, v10

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 102
    iget-object v10, v3, Lru/okei/timetable/ScheduleImage$Line;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    goto :goto_9

    :cond_c
    iget-object v10, v3, Lru/okei/timetable/ScheduleImage$Line;->text:Ljava/lang/String;

    iget v11, v3, Lru/okei/timetable/ScheduleImage$Line;->indent:I

    rsub-int v11, v11, 0x3c8

    invoke-static {v10, v7, v11}, Lru/okei/timetable/ScheduleImage;->wrap(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 103
    :goto_9
    iget v11, v3, Lru/okei/timetable/ScheduleImage$Line;->size:I

    int-to-float v11, v11

    mul-float v11, v11, v9

    float-to-int v9, v11

    mul-int v9, v9, v10

    iget v3, v3, Lru/okei/timetable/ScheduleImage$Line;->gap:I

    add-int/2addr v9, v3

    add-int/2addr v2, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_d
    add-int/2addr v2, v0

    const/16 v1, 0x438

    .line 107
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 108
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v3, -0x1000000

    .line 109
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v3, 0x0

    const/16 v5, 0x38

    .line 112
    :goto_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_11

    .line 113
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lru/okei/timetable/ScheduleImage$Line;

    .line 114
    iget-boolean v11, v10, Lru/okei/timetable/ScheduleImage$Line;->bold:Z

    if-eqz v11, :cond_e

    move-object v11, v6

    goto :goto_b

    :cond_e
    move-object v11, v4

    :goto_b
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 115
    iget v11, v10, Lru/okei/timetable/ScheduleImage$Line;->size:I

    int-to-float v11, v11

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 116
    iget v11, v10, Lru/okei/timetable/ScheduleImage$Line;->color:I

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object v11, v10, Lru/okei/timetable/ScheduleImage$Line;->text:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 118
    iget v10, v10, Lru/okei/timetable/ScheduleImage$Line;->gap:I

    :goto_c
    add-int/2addr v5, v10

    goto :goto_e

    .line 121
    :cond_f
    iget-object v11, v10, Lru/okei/timetable/ScheduleImage$Line;->text:Ljava/lang/String;

    iget v12, v10, Lru/okei/timetable/ScheduleImage$Line;->indent:I

    rsub-int v12, v12, 0x3c8

    invoke-static {v11, v7, v12}, Lru/okei/timetable/ScheduleImage;->wrap(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    .line 122
    :goto_d
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_10

    .line 123
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget v14, v10, Lru/okei/timetable/ScheduleImage$Line;->indent:I

    add-int/2addr v14, v0

    int-to-float v14, v14

    iget v15, v10, Lru/okei/timetable/ScheduleImage$Line;->size:I

    add-int/2addr v15, v5

    int-to-float v15, v15

    invoke-virtual {v2, v13, v14, v15, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    iget v13, v10, Lru/okei/timetable/ScheduleImage$Line;->size:I

    int-to-float v13, v13

    mul-float v13, v13, v9

    float-to-int v13, v13

    add-int/2addr v5, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 126
    :cond_10
    iget v10, v10, Lru/okei/timetable/ScheduleImage$Line;->gap:I

    goto :goto_c

    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_11
    return-object v1
.end method

.method private static room(Lru/okei/timetable/data/Lesson;)Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lru/okei/timetable/data/Lesson;->room:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lru/okei/timetable/data/Lesson;->room:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method private static typeface(Landroid/content/Context;Z)Landroid/graphics/Typeface;
    .locals 4

    const-string v0, "ScheduleImage"

    const-string v1, "fonts/Tiny5-Regular.ttf"

    if-eqz p1, :cond_0

    .line 206
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 207
    new-instance v2, Landroid/graphics/Typeface$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    const-string v3, "\'wght\' 700"

    .line 208
    invoke-virtual {v2, v3}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 217
    :goto_0
    invoke-static {v0, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    .line 223
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    sget-object p0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    return-object p0
.end method

.method private static wrap(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Paint;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, " "

    .line 133
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 135
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_3

    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, p0, v4

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aget-object v6, p0, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 137
    :goto_1
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-lez v6, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 141
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 143
    aget-object v5, p0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 138
    :cond_2
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 139
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_4

    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method
