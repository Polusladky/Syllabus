.class public final Lru/okei/timetable/InfoPages;
.super Ljava/lang/Object;
.source "InfoPages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/InfoPages$State;,
        Lru/okei/timetable/InfoPages$Slot;
    }
.end annotation


# static fields
.field public static final AFTER_LAST:I = 0x5

.field public static final BEFORE_FIRST:I = 0x2

.field public static final BREAK:I = 0x4

.field public static final NONE:I = 0x0

.field public static final NO_LESSONS:I = 0x1

.field public static final RUNNING:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static numberOf(Lru/okei/timetable/data/Lesson;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 162
    iget-object v1, p0, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    :try_start_0
    iget-object p0, p0, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static of(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;)Lru/okei/timetable/InfoPages$State;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 91
    new-instance v10, Lru/okei/timetable/InfoPages$State;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lru/okei/timetable/InfoPages$State;-><init>(IIIJLru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;Ljava/util/List;)V

    return-object v10

    .line 93
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    const/4 v2, 0x7

    .line 94
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v13, v3, 0x7

    if-eqz v0, :cond_e

    .line 95
    iget-object v2, v0, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 99
    :goto_0
    iget-object v4, v0, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_3

    .line 100
    iget-object v4, v0, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/okei/timetable/data/DaySchedule;

    iget v4, v4, Lru/okei/timetable/data/DaySchedule;->index:I

    if-ne v4, v13, :cond_2

    .line 101
    iget-object v0, v0, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/okei/timetable/data/DaySchedule;

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v5

    :goto_1
    if-nez v0, :cond_4

    .line 106
    new-instance v0, Lru/okei/timetable/InfoPages$State;

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lru/okei/timetable/InfoPages$State;-><init>(IIIJLru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;Ljava/util/List;)V

    return-object v0

    .line 108
    :cond_4
    invoke-static {v0, v1}, Lru/okei/timetable/InfoPages;->slotsOf(Lru/okei/timetable/data/DaySchedule;Ljava/util/Calendar;)Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 110
    new-instance v0, Lru/okei/timetable/InfoPages$State;

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lru/okei/timetable/InfoPages$State;-><init>(IIIJLru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;Ljava/util/List;)V

    return-object v0

    :cond_5
    const/4 v1, -0x1

    move-object/from16 v19, v5

    .line 114
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 115
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/okei/timetable/InfoPages$Slot;

    .line 116
    iget-wide v6, v3, Lru/okei/timetable/InfoPages$Slot;->start:J

    cmp-long v4, v6, v15

    if-gtz v4, :cond_6

    iget-wide v6, v3, Lru/okei/timetable/InfoPages$Slot;->end:J

    cmp-long v4, v15, v6

    if-gez v4, :cond_6

    move-object/from16 v19, v3

    goto :goto_3

    .line 118
    :cond_6
    iget-wide v3, v3, Lru/okei/timetable/InfoPages$Slot;->start:J

    cmp-long v6, v3, v15

    if-lez v6, :cond_7

    if-gez v1, :cond_7

    move v1, v2

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    if-eqz v19, :cond_a

    if-gez v1, :cond_9

    move-object/from16 v18, v5

    goto :goto_4

    .line 123
    :cond_9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/okei/timetable/InfoPages$Slot;

    move-object/from16 v18, v1

    .line 124
    :goto_4
    new-instance v1, Lru/okei/timetable/InfoPages$State;

    const/4 v12, 0x3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    move-object v11, v1

    move-object/from16 v17, v19

    move-object/from16 v20, v0

    invoke-direct/range {v11 .. v20}, Lru/okei/timetable/InfoPages$State;-><init>(IIIJLru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;Ljava/util/List;)V

    return-object v1

    :cond_a
    if-gez v1, :cond_b

    .line 127
    new-instance v1, Lru/okei/timetable/InfoPages$State;

    const/4 v12, 0x5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lru/okei/timetable/InfoPages$Slot;

    move-object v11, v1

    move-object/from16 v20, v0

    invoke-direct/range {v11 .. v20}, Lru/okei/timetable/InfoPages$State;-><init>(IIIJLru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;Ljava/util/List;)V

    return-object v1

    .line 130
    :cond_b
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lru/okei/timetable/InfoPages$Slot;

    if-lez v1, :cond_c

    add-int/lit8 v1, v1, -0x1

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/okei/timetable/InfoPages$Slot;

    move-object/from16 v19, v1

    goto :goto_5

    :cond_c
    move-object/from16 v19, v5

    .line 132
    :goto_5
    new-instance v1, Lru/okei/timetable/InfoPages$State;

    if-nez v19, :cond_d

    const/4 v2, 0x2

    const/4 v12, 0x2

    goto :goto_6

    :cond_d
    const/4 v2, 0x4

    const/4 v12, 0x4

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    const/16 v17, 0x0

    move-object v11, v1

    move-object/from16 v20, v0

    invoke-direct/range {v11 .. v20}, Lru/okei/timetable/InfoPages$State;-><init>(IIIJLru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;Ljava/util/List;)V

    return-object v1

    .line 96
    :cond_e
    :goto_7
    new-instance v0, Lru/okei/timetable/InfoPages$State;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lru/okei/timetable/InfoPages$State;-><init>(IIIJLru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;Ljava/util/List;)V

    return-object v0
.end method

.method private static slotsOf(Lru/okei/timetable/data/DaySchedule;Ljava/util/Calendar;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/okei/timetable/data/DaySchedule;",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/List<",
            "Lru/okei/timetable/InfoPages$Slot;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 138
    :goto_0
    iget-object v2, p0, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 139
    iget-object v2, p0, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lru/okei/timetable/data/Lesson;

    .line 140
    invoke-static {v4}, Lru/okei/timetable/InfoPages;->numberOf(Lru/okei/timetable/data/Lesson;)I

    move-result v5

    if-lez v5, :cond_3

    const-string v2, "\u041f\u0410\u0420\u0410 \u041e\u0422\u041c\u0415\u041d\u0415\u041d\u0410"

    .line 141
    iget-object v3, v4, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 144
    :cond_0
    iget v2, p0, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-static {v2, v5, p1}, Lru/okei/timetable/data/Bells;->startCalendar(IILjava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 148
    :cond_1
    iget v3, p0, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-static {v3, v5, p1}, Lru/okei/timetable/data/Bells;->endCalendar(IILjava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    .line 149
    new-instance v10, Lru/okei/timetable/InfoPages$Slot;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    if-nez v3, :cond_2

    .line 150
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    :goto_1
    move-wide v8, v2

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lru/okei/timetable/InfoPages$Slot;-><init>(Lru/okei/timetable/data/Lesson;IJJ)V

    .line 149
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_4
    new-instance p0, Lru/okei/timetable/InfoPages$1;

    invoke-direct {p0}, Lru/okei/timetable/InfoPages$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method
