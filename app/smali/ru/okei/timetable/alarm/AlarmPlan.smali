.class public final Lru/okei/timetable/alarm/AlarmPlan;
.super Ljava/lang/Object;
.source "AlarmPlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/alarm/AlarmPlan$Slot;,
        Lru/okei/timetable/alarm/AlarmPlan$Params;
    }
.end annotation


# static fields
.field public static final CHAIN_COUNT:I = 0x4

.field public static final LEAD_MINUTES:I = 0x78

.field public static final STEP_MINUTES:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/okei/timetable/data/WeekSchedule;",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/List<",
            "Lru/okei/timetable/alarm/AlarmPlan$Slot;",
            ">;"
        }
    .end annotation

    .line 120
    sget-object v0, Lru/okei/timetable/alarm/AlarmPlan$Params;->DEFAULT:Lru/okei/timetable/alarm/AlarmPlan$Params;

    invoke-static {p0, p1, v0}, Lru/okei/timetable/alarm/AlarmPlan;->build(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;Lru/okei/timetable/alarm/AlarmPlan$Params;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;Lru/okei/timetable/alarm/AlarmPlan$Params;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/okei/timetable/data/WeekSchedule;",
            "Ljava/util/Calendar;",
            "Lru/okei/timetable/alarm/AlarmPlan$Params;",
            ")",
            "Ljava/util/List<",
            "Lru/okei/timetable/alarm/AlarmPlan$Slot;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p2, :cond_1

    .line 198
    sget-object v2, Lru/okei/timetable/alarm/AlarmPlan$Params;->DEFAULT:Lru/okei/timetable/alarm/AlarmPlan$Params;

    goto :goto_0

    :cond_1
    move-object/from16 v2, p2

    .line 200
    :goto_0
    iget-object v3, v0, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-static {v3}, Lru/okei/timetable/alarm/AlarmPlan;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    .line 204
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    .line 205
    :goto_1
    iget-object v8, v0, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 206
    iget-object v8, v0, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lru/okei/timetable/data/DaySchedule;

    .line 207
    invoke-static {v8}, Lru/okei/timetable/alarm/AlarmPlan;->firstPair(Lru/okei/timetable/data/DaySchedule;)I

    move-result v9

    if-gtz v9, :cond_4

    :cond_3
    :goto_2
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    goto/16 :goto_5

    .line 211
    :cond_4
    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Calendar;

    const/4 v11, 0x6

    .line 212
    iget v12, v8, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-virtual {v10, v11, v12}, Ljava/util/Calendar;->add(II)V

    .line 213
    iget v11, v8, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-static {v11, v9, v10}, Lru/okei/timetable/data/Bells;->startCalendar(IILjava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    if-nez v10, :cond_5

    goto :goto_2

    .line 217
    :cond_5
    invoke-virtual {v10}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Calendar;

    .line 218
    iget v11, v2, Lru/okei/timetable/alarm/AlarmPlan$Params;->leadMinutes:I

    neg-int v11, v11

    const/16 v12, 0xc

    invoke-virtual {v10, v12, v11}, Ljava/util/Calendar;->add(II)V

    .line 219
    iget v11, v8, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-static {v11, v9}, Lru/okei/timetable/data/Bells;->timeOf(II)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " \u041f\u0410\u0420\u0410 "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    .line 220
    :goto_3
    iget v13, v2, Lru/okei/timetable/alarm/AlarmPlan$Params;->chainCount:I

    if-ge v11, v13, :cond_3

    .line 221
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 222
    iget v15, v2, Lru/okei/timetable/alarm/AlarmPlan$Params;->stepMinutes:I

    invoke-virtual {v10, v12, v15}, Ljava/util/Calendar;->add(II)V

    const-wide/16 v15, 0x7530

    add-long/2addr v15, v4

    cmp-long v17, v13, v15

    if-gtz v17, :cond_6

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    goto :goto_4

    .line 226
    :cond_6
    new-instance v15, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    invoke-static {v13, v14, v11}, Lru/okei/timetable/alarm/AlarmPlan;->codeOf(JI)I

    move-result v16

    iget-object v6, v8, Lru/okei/timetable/data/DaySchedule;->name:Ljava/lang/String;

    add-int/lit8 v12, v11, 0x1

    iget v0, v2, Lru/okei/timetable/alarm/AlarmPlan$Params;->chainCount:I

    move-object/from16 v21, v2

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v22, v3

    const-string v3, "\u0411\u0423\u0414\u0418\u041b\u042c\u041d\u0418\u041a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-wide v2, v13

    move-object v14, v15

    move-object v0, v15

    move/from16 v15, v16

    move-wide/from16 v16, v2

    move-object/from16 v18, v6

    move-object/from16 v19, v9

    invoke-direct/range {v14 .. v20}, Lru/okei/timetable/alarm/AlarmPlan$Slot;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    const/16 v12, 0xc

    goto :goto_3

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    goto/16 :goto_1

    .line 230
    :cond_7
    new-instance v0, Lru/okei/timetable/alarm/AlarmPlan$2;

    invoke-direct {v0}, Lru/okei/timetable/alarm/AlarmPlan$2;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_8
    :goto_6
    return-object v1
.end method

.method public static buildReminders(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;I)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/okei/timetable/data/WeekSchedule;",
            "Ljava/util/Calendar;",
            "I)",
            "Ljava/util/List<",
            "Lru/okei/timetable/alarm/AlarmPlan$Slot;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 142
    :cond_0
    iget-object v2, v0, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-static {v2}, Lru/okei/timetable/alarm/AlarmPlan;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v3, 0x1

    move/from16 v4, p2

    if-ge v4, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    .line 147
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    .line 148
    :goto_1
    iget-object v8, v0, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 149
    iget-object v8, v0, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lru/okei/timetable/data/DaySchedule;

    .line 150
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Calendar;

    const/4 v10, 0x6

    .line 151
    iget v11, v8, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->add(II)V

    const/4 v10, 0x0

    .line 152
    :goto_2
    iget-object v11, v8, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_7

    .line 153
    iget-object v11, v8, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lru/okei/timetable/data/Lesson;

    .line 154
    invoke-static {v11}, Lru/okei/timetable/alarm/AlarmPlan;->pairOf(Lru/okei/timetable/data/Lesson;)I

    move-result v12

    if-lez v12, :cond_6

    const-string v13, "\u041f\u0410\u0420\u0410 \u041e\u0422\u041c\u0415\u041d\u0415\u041d\u0410"

    .line 155
    iget-object v11, v11, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_3

    .line 158
    :cond_3
    iget v11, v8, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-static {v11, v12, v9}, Lru/okei/timetable/data/Bells;->startCalendar(IILjava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v11

    if-nez v11, :cond_4

    goto :goto_3

    .line 162
    :cond_4
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    move v11, v7

    int-to-long v6, v3

    const-wide/32 v15, 0xea60

    mul-long v6, v6, v15

    sub-long v6, v13, v6

    const-wide/16 v13, 0x7530

    add-long/2addr v13, v4

    cmp-long v15, v6, v13

    if-gtz v15, :cond_5

    goto :goto_4

    .line 166
    :cond_5
    new-instance v13, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    const/16 v14, 0xc

    invoke-static {v6, v7, v14}, Lru/okei/timetable/alarm/AlarmPlan;->codeOf(JI)I

    move-result v16

    iget-object v14, v8, Lru/okei/timetable/data/DaySchedule;->name:Ljava/lang/String;

    iget v15, v8, Lru/okei/timetable/data/DaySchedule;->index:I

    .line 167
    invoke-static {v15, v12}, Lru/okei/timetable/data/Bells;->timeOf(II)Ljava/lang/String;

    move-result-object v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " \u041f\u0410\u0420\u0410 "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "\u0427\u0415\u0420\u0415\u0417 "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " \u041c\u0418\u041d"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "remind"

    move-object v15, v13

    move-wide/from16 v17, v6

    move-object/from16 v19, v14

    invoke-direct/range {v15 .. v22}, Lru/okei/timetable/alarm/AlarmPlan$Slot;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    :goto_3
    move v11, v7

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move v7, v11

    goto/16 :goto_2

    :cond_7
    move v11, v7

    add-int/lit8 v7, v11, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 171
    :cond_8
    new-instance v0, Lru/okei/timetable/alarm/AlarmPlan$1;

    invoke-direct {v0}, Lru/okei/timetable/alarm/AlarmPlan$1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_9
    :goto_5
    return-object v1
.end method

.method public static codeOf(JI)I
    .locals 2

    const-wide/32 v0, 0xea60

    .line 261
    div-long/2addr p0, v0

    const-wide/32 v0, 0x3ffffff

    and-long/2addr p0, v0

    long-to-int p1, p0

    mul-int/lit8 p1, p1, 0x10

    add-int/2addr p1, p2

    return p1
.end method

.method public static dueOrLater(Ljava/util/List;J)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/okei/timetable/alarm/AlarmPlan$Slot;",
            ">;J)",
            "Ljava/util/List<",
            "Lru/okei/timetable/alarm/AlarmPlan$Slot;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 128
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 129
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    .line 130
    iget-wide v3, v2, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    const-wide/16 v5, 0x1388

    add-long/2addr v5, p1

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 131
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static firstPair(Lru/okei/timetable/data/DaySchedule;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 243
    :goto_0
    iget-object v2, p0, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 244
    iget-object v2, p0, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/okei/timetable/data/Lesson;

    iget-object v2, v2, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 245
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 249
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    const/4 v3, 0x6

    if-gt v2, v3, :cond_2

    return v2

    :catch_0
    move-exception v2

    const-string v3, "AlarmPlan"

    .line 254
    invoke-static {v3, v2}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static format(J)Ljava/lang/String;
    .locals 0

    .line 94
    invoke-static {p0, p1}, Lru/okei/timetable/data/Formats;->time(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static groupOf(Lru/okei/timetable/alarm/AlarmPlan$Slot;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 89
    :cond_0
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->day:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->day:Ljava/lang/String;

    .line 90
    :goto_0
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->lesson:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->lesson:Ljava/lang/String;

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static pairOf(Lru/okei/timetable/data/Lesson;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 181
    iget-object v1, p0, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    :try_start_0
    iget-object p0, p0, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_1

    const/4 v1, 0x6

    if-gt p0, v1, :cond_1

    move v0, p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/okei/timetable/data/Formats;->date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 106
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 107
    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p0, 0xb

    .line 108
    invoke-virtual {v2, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 109
    invoke-virtual {v2, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 110
    invoke-virtual {v2, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 111
    invoke-virtual {v2, p0, v1}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    const-string v1, "AlarmPlan"

    .line 114
    invoke-static {v1, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-object v0
.end method
