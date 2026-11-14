.class public final Lru/okei/timetable/data/ChangeApplier;
.super Ljava/lang/Object;
.source "ChangeApplier.java"


# static fields
.field public static final CANCELLED:Ljava/lang/String; = "\u041f\u0410\u0420\u0410 \u041e\u0422\u041c\u0415\u041d\u0415\u041d\u0410"


# direct methods
.method static bridge synthetic -$$Nest$smpairNumber(Lru/okei/timetable/data/Lesson;)I
    .locals 0

    invoke-static {p0}, Lru/okei/timetable/data/ChangeApplier;->pairNumber(Lru/okei/timetable/data/Lesson;)I

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lru/okei/timetable/data/WeekSchedule;Ljava/util/List;)Lru/okei/timetable/data/WeekSchedule;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/okei/timetable/data/WeekSchedule;",
            "Ljava/util/List<",
            "Lru/okei/timetable/data/Change;",
            ">;)",
            "Lru/okei/timetable/data/WeekSchedule;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    .line 18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 21
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 22
    :goto_0
    iget-object v5, v0, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 23
    iget-object v5, v0, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/okei/timetable/data/DaySchedule;

    .line 24
    iget v6, v5, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-static {v1, v6}, Lru/okei/timetable/data/ChangeApplier;->ofDay(Ljava/util/List;I)Ljava/util/List;

    move-result-object v6

    .line 25
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 26
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 29
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v5, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    invoke-static {v6}, Lru/okei/timetable/data/ChangeApplier;->hasReset(Ljava/util/List;)Z

    move-result v8

    const/4 v9, 0x4

    if-eqz v8, :cond_4

    .line 32
    invoke-interface {v7}, Ljava/util/List;->clear()V

    const/4 v8, 0x0

    .line 33
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_3

    .line 34
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lru/okei/timetable/data/Change;

    .line 35
    iget v11, v10, Lru/okei/timetable/data/Change;->kind:I

    if-ne v11, v9, :cond_2

    iget-object v11, v10, Lru/okei/timetable/data/Change;->subject:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 36
    new-instance v11, Lru/okei/timetable/data/Lesson;

    iget v12, v10, Lru/okei/timetable/data/Change;->pair:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v10, Lru/okei/timetable/data/Change;->subject:Ljava/lang/String;

    iget-object v15, v10, Lru/okei/timetable/data/Change;->teacher:Ljava/lang/String;

    iget-object v10, v10, Lru/okei/timetable/data/Change;->room:Ljava/lang/String;

    const/16 v17, 0x1

    move-object v12, v11

    move-object/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lru/okei/timetable/data/Lesson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 40
    :cond_3
    invoke-static {v7}, Lru/okei/timetable/data/ChangeApplier;->sortByPair(Ljava/util/List;)V

    :cond_4
    const/4 v8, 0x0

    .line 42
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_b

    .line 43
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lru/okei/timetable/data/Change;

    .line 44
    iget v11, v10, Lru/okei/timetable/data/Change;->kind:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_a

    iget v11, v10, Lru/okei/timetable/data/Change;->kind:I

    if-ne v11, v9, :cond_5

    goto/16 :goto_4

    .line 47
    :cond_5
    iget v11, v10, Lru/okei/timetable/data/Change;->pair:I

    invoke-static {v7, v11}, Lru/okei/timetable/data/ChangeApplier;->indexOfPair(Ljava/util/List;I)I

    move-result v11

    if-ltz v11, :cond_6

    .line 49
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lru/okei/timetable/data/Lesson;

    invoke-static {v12, v10}, Lru/okei/timetable/data/ChangeApplier;->applyTo(Lru/okei/timetable/data/Lesson;Lru/okei/timetable/data/Change;)Lru/okei/timetable/data/Lesson;

    move-result-object v10

    invoke-interface {v7, v11, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 50
    :cond_6
    iget v11, v10, Lru/okei/timetable/data/Change;->kind:I

    if-nez v11, :cond_7

    .line 51
    iget v11, v10, Lru/okei/timetable/data/Change;->pair:I

    invoke-static {v7, v11}, Lru/okei/timetable/data/ChangeApplier;->insertPosition(Ljava/util/List;I)I

    move-result v11

    new-instance v15, Lru/okei/timetable/data/Lesson;

    iget v10, v10, Lru/okei/timetable/data/Change;->pair:I

    .line 52
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "\u041f\u0410\u0420\u0410 \u041e\u0422\u041c\u0415\u041d\u0415\u041d\u0410"

    const-string v10, ""

    const-string v16, ""

    const/16 v17, 0x1

    move-object v12, v15

    move-object v3, v15

    move-object v15, v10

    invoke-direct/range {v12 .. v17}, Lru/okei/timetable/data/Lesson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    invoke-interface {v7, v11, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 53
    :cond_7
    iget-object v3, v10, Lru/okei/timetable/data/Change;->subject:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v10, Lru/okei/timetable/data/Change;->room:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 55
    :cond_8
    iget v3, v10, Lru/okei/timetable/data/Change;->pair:I

    invoke-static {v7, v3}, Lru/okei/timetable/data/ChangeApplier;->insertPosition(Ljava/util/List;I)I

    move-result v3

    new-instance v15, Lru/okei/timetable/data/Lesson;

    iget v11, v10, Lru/okei/timetable/data/Change;->pair:I

    .line 56
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 57
    iget-object v11, v10, Lru/okei/timetable/data/Change;->subject:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "\u0417\u0410\u041c\u0415\u041d\u0410"

    goto :goto_3

    .line 58
    :cond_9
    iget-object v11, v10, Lru/okei/timetable/data/Change;->subject:Ljava/lang/String;

    invoke-static {v11}, Lru/okei/timetable/data/ChangeApplier;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_3
    move-object v13, v11

    iget-object v14, v10, Lru/okei/timetable/data/Change;->teacher:Ljava/lang/String;

    iget-object v10, v10, Lru/okei/timetable/data/Change;->room:Ljava/lang/String;

    const/16 v16, 0x1

    move-object v11, v15

    move-object v9, v15

    move-object v15, v10

    invoke-direct/range {v11 .. v16}, Lru/okei/timetable/data/Lesson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    invoke-interface {v7, v3, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_a
    :goto_4
    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x4

    goto/16 :goto_2

    .line 62
    :cond_b
    new-instance v3, Lru/okei/timetable/data/DaySchedule;

    iget-object v6, v5, Lru/okei/timetable/data/DaySchedule;->name:Ljava/lang/String;

    iget v5, v5, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-direct {v3, v6, v5, v7}, Lru/okei/timetable/data/DaySchedule;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 64
    :cond_c
    new-instance v1, Lru/okei/timetable/data/WeekSchedule;

    iget-object v3, v0, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    iget-object v0, v0, Lru/okei/timetable/data/WeekSchedule;->endDate:Ljava/lang/String;

    invoke-direct {v1, v3, v0, v2}, Lru/okei/timetable/data/WeekSchedule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1

    :cond_d
    :goto_6
    return-object v0
.end method

.method private static applyTo(Lru/okei/timetable/data/Lesson;Lru/okei/timetable/data/Change;)Lru/okei/timetable/data/Lesson;
    .locals 7

    .line 123
    iget v0, p1, Lru/okei/timetable/data/Change;->kind:I

    if-nez v0, :cond_0

    .line 124
    new-instance p1, Lru/okei/timetable/data/Lesson;

    iget-object v2, p0, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    const-string v3, "\u041f\u0410\u0420\u0410 \u041e\u0422\u041c\u0415\u041d\u0415\u041d\u0410"

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lru/okei/timetable/data/Lesson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1

    .line 126
    :cond_0
    iget-object v0, p1, Lru/okei/timetable/data/Change;->subject:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lru/okei/timetable/data/Change;->subject:Ljava/lang/String;

    invoke-static {v0}, Lru/okei/timetable/data/ChangeApplier;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 127
    iget-object v0, p1, Lru/okei/timetable/data/Change;->teacher:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/okei/timetable/data/Lesson;->teacher:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lru/okei/timetable/data/Change;->teacher:Ljava/lang/String;

    :goto_1
    move-object v4, v0

    .line 128
    iget-object v0, p1, Lru/okei/timetable/data/Change;->room:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lru/okei/timetable/data/Lesson;->room:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object p1, p1, Lru/okei/timetable/data/Change;->room:Ljava/lang/String;

    :goto_2
    move-object v5, p1

    .line 129
    new-instance p1, Lru/okei/timetable/data/Lesson;

    iget-object v2, p0, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lru/okei/timetable/data/Lesson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_1

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 136
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ru"

    const-string v4, "RU"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static hasReset(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/okei/timetable/data/Change;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 69
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/okei/timetable/data/Change;

    iget v2, v2, Lru/okei/timetable/data/Change;->kind:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static indexOfPair(Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/okei/timetable/data/Lesson;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 96
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 97
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/okei/timetable/data/Lesson;

    invoke-static {v1}, Lru/okei/timetable/data/ChangeApplier;->pairNumber(Lru/okei/timetable/data/Lesson;)I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static insertPosition(Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/okei/timetable/data/Lesson;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 106
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/okei/timetable/data/Lesson;

    invoke-static {v1}, Lru/okei/timetable/data/ChangeApplier;->pairNumber(Lru/okei/timetable/data/Lesson;)I

    move-result v1

    if-le v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private static ofDay(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/okei/timetable/data/Change;",
            ">;I)",
            "Ljava/util/List<",
            "Lru/okei/timetable/data/Change;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 87
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 88
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/okei/timetable/data/Change;

    iget v2, v2, Lru/okei/timetable/data/Change;->day:I

    if-ne v2, p1, :cond_0

    .line 89
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/okei/timetable/data/Change;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static pairNumber(Lru/okei/timetable/data/Lesson;)I
    .locals 1

    .line 115
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

    const-string v0, "ChangeApplier"

    .line 117
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p0, 0x63

    return p0
.end method

.method private static sortByPair(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/okei/timetable/data/Lesson;",
            ">;)V"
        }
    .end annotation

    .line 77
    new-instance v0, Lru/okei/timetable/data/ChangeApplier$1;

    invoke-direct {v0}, Lru/okei/timetable/data/ChangeApplier$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
