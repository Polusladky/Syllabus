.class public final Lru/okei/timetable/PageContent;
.super Ljava/lang/Object;
.source "PageContent.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindDay(Lru/okei/timetable/InfoPage;Lru/okei/timetable/InfoPages$State;)V
    .locals 22

    move-object/from16 v0, p1

    .line 28
    iget-object v1, v0, Lru/okei/timetable/InfoPages$State;->slots:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lru/okei/timetable/InfoPages$State;->slots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 32
    :cond_0
    iget-object v1, v0, Lru/okei/timetable/InfoPages$State;->slots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 33
    new-array v3, v1, [J

    .line 34
    new-array v4, v1, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 36
    iget-object v5, v0, Lru/okei/timetable/InfoPages$State;->slots:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/okei/timetable/InfoPages$Slot;

    iget-wide v5, v5, Lru/okei/timetable/InfoPages$Slot;->start:J

    aput-wide v5, v3, v2

    .line 37
    iget-object v5, v0, Lru/okei/timetable/InfoPages$State;->slots:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/okei/timetable/InfoPages$Slot;

    iget-wide v5, v5, Lru/okei/timetable/InfoPages$Slot;->end:J

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_1
    iget v1, v0, Lru/okei/timetable/InfoPages$State;->kind:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lru/okei/timetable/InfoPages$State;->running:Lru/okei/timetable/InfoPages$Slot;

    if-eqz v1, :cond_2

    .line 42
    iget-object v1, v0, Lru/okei/timetable/InfoPages$State;->running:Lru/okei/timetable/InfoPages$Slot;

    iget-wide v1, v1, Lru/okei/timetable/InfoPages$Slot;->start:J

    .line 43
    iget-object v5, v0, Lru/okei/timetable/InfoPages$State;->running:Lru/okei/timetable/InfoPages$Slot;

    iget-wide v5, v5, Lru/okei/timetable/InfoPages$Slot;->end:J

    :goto_1
    move-wide v7, v1

    move-wide v9, v5

    goto :goto_2

    .line 44
    :cond_2
    iget v1, v0, Lru/okei/timetable/InfoPages$State;->kind:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lru/okei/timetable/InfoPages$State;->previous:Lru/okei/timetable/InfoPages$Slot;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    if-eqz v1, :cond_3

    .line 45
    iget-object v1, v0, Lru/okei/timetable/InfoPages$State;->previous:Lru/okei/timetable/InfoPages$Slot;

    iget-wide v1, v1, Lru/okei/timetable/InfoPages$Slot;->end:J

    .line 46
    iget-object v5, v0, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    iget-wide v5, v5, Lru/okei/timetable/InfoPages$Slot;->start:J

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x0

    move-wide v7, v1

    move-wide v9, v7

    :goto_2
    cmp-long v1, v9, v7

    if-lez v1, :cond_4

    .line 48
    iget-wide v1, v0, Lru/okei/timetable/InfoPages$State;->now:J

    sub-long/2addr v1, v7

    long-to-float v1, v1

    sub-long v5, v9, v7

    long-to-float v2, v5

    div-float/2addr v1, v2

    move v11, v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 49
    :goto_3
    iget-wide v5, v0, Lru/okei/timetable/InfoPages$State;->now:J

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lru/okei/timetable/InfoPage;->setDay([J[JJJJF)V

    return-void

    :cond_5
    :goto_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 29
    iget-wide v0, v0, Lru/okei/timetable/InfoPages$State;->now:J

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v12, p0

    move-wide v15, v0

    invoke-virtual/range {v12 .. v21}, Lru/okei/timetable/InfoPage;->setDay([J[JJJJF)V

    return-void
.end method

.method public static clock(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x3e8

    .line 150
    div-long/2addr p0, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/16 v2, 0xe10

    .line 151
    div-long v4, p0, v2

    .line 152
    rem-long v2, p0, v2

    const-wide/16 v6, 0x3c

    div-long/2addr v2, v6

    .line 153
    rem-long/2addr p0, v6

    const-string v6, "0"

    const-wide/16 v7, 0xa

    cmp-long v9, v2, v7

    if-gez v9, :cond_0

    .line 154
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    cmp-long v3, p0, v7

    if-gez v3, :cond_1

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    cmp-long p1, v4, v0

    if-lez p1, :cond_2

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static fill(Lru/okei/timetable/InfoPage;Lru/okei/timetable/InfoPages$State;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 19
    invoke-static {p0, p1}, Lru/okei/timetable/PageContent;->fillNow(Lru/okei/timetable/InfoPage;Lru/okei/timetable/InfoPages$State;)V

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p0, p1}, Lru/okei/timetable/PageContent;->fillNext(Lru/okei/timetable/InfoPage;Lru/okei/timetable/InfoPages$State;)V

    .line 23
    :goto_0
    iget p2, p1, Lru/okei/timetable/InfoPages$State;->kind:I

    invoke-virtual {p0, p2}, Lru/okei/timetable/InfoPage;->setKind(I)V

    .line 24
    invoke-static {p0, p1}, Lru/okei/timetable/PageContent;->bindDay(Lru/okei/timetable/InfoPage;Lru/okei/timetable/InfoPages$State;)V

    return-void
.end method

.method public static fillNext(Lru/okei/timetable/InfoPage;Lru/okei/timetable/InfoPages$State;)V
    .locals 13

    .line 86
    iget v0, p1, Lru/okei/timetable/InfoPages$State;->kind:I

    const/4 v1, 0x1

    const v2, 0x7f0600eb

    if-eq v0, v1, :cond_7

    const/4 v3, 0x2

    const v4, 0x7f0600ed

    if-eq v0, v3, :cond_5

    const/4 v1, 0x3

    const v3, 0x7f0600ec

    const v5, 0x7f0600e7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    const-string v7, "\u041d\u0415\u0422 \u0414\u0410\u041d\u041d\u042b\u0425"

    const-string v8, ""

    const-string v9, ""

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lru/okei/timetable/InfoPage;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, ""

    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 112
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    move-object v6, p0

    .line 111
    invoke-virtual/range {v6 .. v12}, Lru/okei/timetable/InfoPage;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_1
    iget-object v0, p1, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    if-nez v0, :cond_2

    .line 96
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, ""

    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 97
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    move-object v6, p0

    .line 96
    invoke-virtual/range {v6 .. v12}, Lru/okei/timetable/InfoPage;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_2
    iget-object v0, p1, Lru/okei/timetable/InfoPages$State;->previous:Lru/okei/timetable/InfoPages$Slot;

    if-nez v0, :cond_3

    .line 101
    iget v0, p1, Lru/okei/timetable/InfoPages$State;->dayIndex:I

    iget-object v1, p1, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    iget v1, v1, Lru/okei/timetable/InfoPages$Slot;->number:I

    invoke-static {v0, v1}, Lru/okei/timetable/data/Bells;->rangeOf(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u041f\u0415\u0420\u0412\u0410\u042f \u041f\u0410\u0420\u0410 \u00b7 "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lru/okei/timetable/InfoPages$State;->breakMinutes()J

    move-result-wide v5

    iget-object v1, p1, Lru/okei/timetable/InfoPages$State;->previous:Lru/okei/timetable/InfoPages$Slot;

    iget-wide v7, v1, Lru/okei/timetable/InfoPages$Slot;->end:J

    .line 103
    invoke-static {v7, v8}, Lru/okei/timetable/alarm/AlarmPlan;->format(J)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    iget-wide v7, v3, Lru/okei/timetable/InfoPages$Slot;->start:J

    .line 104
    invoke-static {v7, v8}, Lru/okei/timetable/alarm/AlarmPlan;->format(J)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " \u041c\u0418\u041d \u00b7 "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2014"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v11, v0

    .line 105
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lru/okei/timetable/InfoPages$State;->untilNext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lru/okei/timetable/PageContent;->clock(J)Ljava/lang/String;

    move-result-object v7

    .line 106
    iget-object v0, p1, Lru/okei/timetable/InfoPages$State;->previous:Lru/okei/timetable/InfoPages$Slot;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v8, v0

    iget-object v0, p1, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    iget-object v0, v0, Lru/okei/timetable/InfoPages$Slot;->lesson:Lru/okei/timetable/data/Lesson;

    .line 107
    invoke-static {v0}, Lru/okei/timetable/PageContent;->pairLine(Lru/okei/timetable/data/Lesson;)Ljava/lang/String;

    move-result-object v9

    iget-object p1, p1, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    iget-object p1, p1, Lru/okei/timetable/InfoPages$Slot;->lesson:Lru/okei/timetable/data/Lesson;

    .line 108
    invoke-static {p1}, Lru/okei/timetable/PageContent;->pairMeta(Lru/okei/timetable/data/Lesson;)Ljava/lang/String;

    move-result-object v10

    move-object v5, p0

    .line 105
    invoke-virtual/range {v5 .. v11}, Lru/okei/timetable/InfoPage;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_5
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, ""

    .line 89
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0600ef

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 90
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Lru/okei/timetable/InfoPages$State;->dayIndex:I

    .line 91
    iget-object v3, p1, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p1, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    iget v1, p1, Lru/okei/timetable/InfoPages$Slot;->number:I

    :goto_2
    invoke-static {v2, v1}, Lru/okei/timetable/data/Bells;->rangeOf(II)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    move-object v5, p0

    .line 88
    invoke-virtual/range {v5 .. v11}, Lru/okei/timetable/InfoPage;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_7
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    const-string v7, "\u041f\u0410\u0420 \u041d\u0415\u0422"

    const-string v8, ""

    const-string v9, ""

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lru/okei/timetable/InfoPage;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fillNow(Lru/okei/timetable/InfoPage;Lru/okei/timetable/InfoPages$State;)V
    .locals 11

    .line 53
    iget v0, p1, Lru/okei/timetable/InfoPages$State;->kind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    const v2, 0x7f0600e6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    const v3, 0x7f0600e0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0600ea

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    const-string v5, "\u041d\u0415\u0422 \u0414\u0410\u041d\u041d\u042b\u0425"

    const-string v6, ""

    const-string v7, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lru/okei/timetable/InfoPage;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lru/okei/timetable/InfoPages$State;->dayIndex:I

    iget-object v3, p1, Lru/okei/timetable/InfoPages$State;->previous:Lru/okei/timetable/InfoPages$Slot;

    iget v3, v3, Lru/okei/timetable/InfoPages$Slot;->number:I

    .line 74
    invoke-static {v1, v3}, Lru/okei/timetable/data/Bells;->rangeOf(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lru/okei/timetable/InfoPages$State;->pairCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, p0

    .line 72
    invoke-virtual/range {v3 .. v9}, Lru/okei/timetable/InfoPage;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lru/okei/timetable/InfoPages$State;->leftUntil()J

    move-result-wide v0

    invoke-static {v0, v1}, Lru/okei/timetable/PageContent;->clock(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 62
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lru/okei/timetable/InfoPages$State;->breakMinutes()J

    move-result-wide v1

    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0600e3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p1, Lru/okei/timetable/InfoPages$State;->previous:Lru/okei/timetable/InfoPages$Slot;

    iget-wide v0, v0, Lru/okei/timetable/InfoPages$Slot;->end:J

    .line 63
    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmPlan;->format(J)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    iget-wide v1, p1, Lru/okei/timetable/InfoPages$Slot;->start:J

    .line 64
    invoke-static {v1, v2}, Lru/okei/timetable/alarm/AlarmPlan;->format(J)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u2014 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    move-object v4, p0

    .line 61
    invoke-virtual/range {v4 .. v10}, Lru/okei/timetable/InfoPage;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_2
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lru/okei/timetable/InfoPages$State;->leftUntil()J

    move-result-wide v0

    invoke-static {v0, v1}, Lru/okei/timetable/PageContent;->clock(J)Ljava/lang/String;

    move-result-object v6

    .line 56
    iget-object v0, p1, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v7, v0

    iget-object v0, p1, Lru/okei/timetable/InfoPages$State;->running:Lru/okei/timetable/InfoPages$Slot;

    iget-object v0, v0, Lru/okei/timetable/InfoPages$Slot;->lesson:Lru/okei/timetable/data/Lesson;

    .line 57
    invoke-static {v0}, Lru/okei/timetable/PageContent;->pairLine(Lru/okei/timetable/data/Lesson;)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p1, Lru/okei/timetable/InfoPages$State;->running:Lru/okei/timetable/InfoPages$Slot;

    iget-object p1, p1, Lru/okei/timetable/InfoPages$Slot;->lesson:Lru/okei/timetable/data/Lesson;

    .line 58
    invoke-static {p1}, Lru/okei/timetable/PageContent;->pairMeta(Lru/okei/timetable/data/Lesson;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    move-object v4, p0

    .line 55
    invoke-virtual/range {v4 .. v10}, Lru/okei/timetable/InfoPage;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_4
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600e4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lru/okei/timetable/InfoPages$State;->leftUntil()J

    move-result-wide v0

    invoke-static {v0, v1}, Lru/okei/timetable/PageContent;->clock(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p1, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    iget-object v0, v0, Lru/okei/timetable/InfoPages$Slot;->lesson:Lru/okei/timetable/data/Lesson;

    .line 68
    invoke-static {v0}, Lru/okei/timetable/PageContent;->pairLine(Lru/okei/timetable/data/Lesson;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p1, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    iget-object v0, v0, Lru/okei/timetable/InfoPages$Slot;->lesson:Lru/okei/timetable/data/Lesson;

    invoke-static {v0}, Lru/okei/timetable/PageContent;->pairMeta(Lru/okei/timetable/data/Lesson;)Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lru/okei/timetable/InfoPages$State;->pairCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, p0

    .line 67
    invoke-virtual/range {v3 .. v9}, Lru/okei/timetable/InfoPage;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_5
    invoke-virtual {p0}, Lru/okei/timetable/InfoPage;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0600e9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    const-string v5, "\u041f\u0410\u0420 \u041d\u0415\u0422"

    const-string v6, ""

    const-string v7, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lru/okei/timetable/InfoPage;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static pairLine(Lru/okei/timetable/data/Lesson;)Ljava/lang/String;
    .locals 3

    .line 136
    iget-object v0, p0, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    iget-object v2, p0, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object p0, v1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    .line 138
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u041f\u0410\u0420\u0410 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    .line 142
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    return-object v1
.end method

.method public static pairMeta(Lru/okei/timetable/data/Lesson;)Ljava/lang/String;
    .locals 0

    .line 146
    invoke-static {p0}, Lru/okei/timetable/ui/ScheduleViews;->metaLine(Lru/okei/timetable/data/Lesson;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shortPair(ILru/okei/timetable/data/Lesson;)Ljava/lang/String;
    .locals 4

    .line 123
    invoke-static {p1}, Lru/okei/timetable/ui/ScheduleViews;->pairOf(Lru/okei/timetable/data/Lesson;)I

    move-result v0

    .line 124
    iget-object v1, p1, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object p1, v2

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 125
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x18

    if-le v1, v3, :cond_1

    const/4 v1, 0x0

    const/16 v3, 0x17

    .line 126
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u2026"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-lez v0, :cond_2

    .line 128
    invoke-static {p0, v0}, Lru/okei/timetable/data/Bells;->timeOf(II)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u041f\u0410\u0420\u0410 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 129
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v2

    .line 132
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method
