.class public final Lru/okei/timetable/Diagnostics;
.super Ljava/lang/Object;
.source "Diagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/Diagnostics$Row;
    }
.end annotation


# static fields
.field public static final SEC_ACCESS:Ljava/lang/String; = "access"

.field public static final SEC_ALARMS:Ljava/lang/String; = "alarms"

.field public static final SEC_APP:Ljava/lang/String; = "app"

.field public static final SEC_CHECK:Ljava/lang/String; = "check"

.field public static final SEC_LOGS:Ljava/lang/String; = "logs"

.field public static final SEC_PLAN:Ljava/lang/String; = "plan"

.field public static final SEC_SCHEDULE:Ljava/lang/String; = "schedule"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collect(Landroid/content/Context;)Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lru/okei/timetable/Diagnostics$Row;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/data/WeekCache;->get(Landroid/content/Context;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v2

    .line 55
    new-instance v9, Lru/okei/timetable/Diagnostics$Row;

    const-string v4, "check"

    const v3, 0x7f060027

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v10, 0x7f060037

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v2}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 57
    invoke-virtual {v2}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v3

    const v6, 0x7f060052

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "OK \u00b7 "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v6, v3

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v2}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 55
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "1. \u041b\u0438\u0442\u0435\u0440\u0430\u0442\u0443\u0440\u0430 \u041b\u044b\u0436\u0438\u043d\u0430 \u041b.\u0410. \u0430\u0443\u0434. 209"

    .line 59
    invoke-static {v3}, Lru/okei/timetable/data/SiteChanges;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 60
    aget-object v4, v3, v4

    const-string v5, "209"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v3, v3, v11

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 61
    :goto_2
    new-instance v3, Lru/okei/timetable/Diagnostics$Row;

    const-string v5, "check"

    const v4, 0x7f060025

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v8, :cond_3

    const-string v4, "OK"

    goto :goto_3

    .line 62
    :cond_3
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object v7, v4

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 61
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f060035

    if-eqz v2, :cond_5

    .line 63
    invoke-virtual {v2}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    new-instance v5, Lru/okei/timetable/alarm/AlarmPlan$Params;

    .line 65
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmSettings;->lead(Landroid/content/Context;)I

    move-result v6

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmSettings;->count(Landroid/content/Context;)I

    move-result v7

    .line 66
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmSettings;->step(Landroid/content/Context;)I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lru/okei/timetable/alarm/AlarmPlan$Params;-><init>(III)V

    .line 64
    invoke-static {v2, v4, v5}, Lru/okei/timetable/alarm/AlarmPlan;->build(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;Lru/okei/timetable/alarm/AlarmPlan$Params;)Ljava/util/List;

    move-result-object v4

    .line 68
    new-instance v13, Lru/okei/timetable/Diagnostics$Row;

    const-string v6, "check"

    const v5, 0x7f060028

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 69
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const v5, 0x7f060062

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    move-object v8, v4

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v13

    invoke-direct/range {v5 .. v10}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 68
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_5
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/CrashLog;->last(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 72
    new-instance v13, Lru/okei/timetable/Diagnostics$Row;

    const-string v6, "check"

    const v5, 0x7f060026

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/16 v14, 0x20

    const/16 v15, 0xa

    const v10, 0x7f06004b

    if-eqz v5, :cond_6

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_6
    invoke-virtual {v4, v15, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :goto_5
    move-object v8, v5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    const/4 v4, 0x0

    move-object v5, v13

    const v11, 0x7f06004b

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 72
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/CrashLog;->events(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 77
    :cond_7
    invoke-virtual {v4, v15, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 78
    :goto_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x190

    if-le v6, v7, :cond_8

    .line 79
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_8
    move-object/from16 v20, v5

    .line 81
    new-instance v5, Lru/okei/timetable/Diagnostics$Row;

    const-string v18, "check"

    const-string v19, "\u0416\u0423\u0420\u041d\u0410\u041b \u0411\u0423\u0414\u0418\u041b\u042c\u041d\u0418\u041a\u0410"

    .line 82
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v22}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 81
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/data/Cache;->time(Landroid/content/Context;)J

    move-result-wide v4

    if-eqz v2, :cond_e

    .line 86
    invoke-virtual {v2}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_a

    .line 89
    :cond_9
    new-instance v6, Lru/okei/timetable/Diagnostics$Row;

    const-string v18, "schedule"

    const v7, 0x7f06006d

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    iget-object v7, v2, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    iget-object v8, v2, Lru/okei/timetable/data/WeekSchedule;->endDate:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u2014 "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v22}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v6, Lru/okei/timetable/Diagnostics$Row;

    const-string v24, "schedule"

    const v7, 0x7f060041

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v2}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v28}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v6, Lru/okei/timetable/Diagnostics$Row;

    const-string v18, "schedule"

    const v7, 0x7f060031

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 93
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/Diagnostics;->dayStateText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v22}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 92
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 95
    :goto_7
    iget-object v8, v2, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_c

    .line 96
    iget-object v8, v2, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lru/okei/timetable/data/DaySchedule;

    const/4 v9, 0x0

    .line 97
    :goto_8
    iget-object v10, v8, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 98
    iget-object v10, v8, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lru/okei/timetable/data/Lesson;

    iget-boolean v10, v10, Lru/okei/timetable/data/Lesson;->changed:Z

    if-eqz v10, :cond_a

    add-int/lit8 v7, v7, 0x1

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 103
    :cond_c
    new-instance v6, Lru/okei/timetable/Diagnostics$Row;

    const-string v18, "schedule"

    const v8, 0x7f060024

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    if-nez v7, :cond_d

    const v7, 0x7f06004c

    .line 104
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_d
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    :goto_9
    move-object/from16 v20, v7

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v22}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 103
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v6, v2, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-static {v0, v6}, Lru/okei/timetable/data/ChangeStore;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 106
    new-instance v7, Lru/okei/timetable/Diagnostics$Row;

    const-string v18, "schedule"

    const v8, 0x7f060047

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 107
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, v7

    invoke-direct/range {v17 .. v22}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 106
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 87
    :cond_e
    :goto_a
    new-instance v6, Lru/okei/timetable/Diagnostics$Row;

    const-string v24, "schedule"

    const v7, 0x7f060061

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    const v7, 0x7f06004a

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v28}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :goto_b
    new-instance v6, Lru/okei/timetable/Diagnostics$Row;

    const-string v18, "schedule"

    const v7, 0x7f060021

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-nez v9, :cond_f

    .line 110
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 111
    :cond_f
    invoke-static {v0, v4, v5}, Lru/okei/timetable/Diagnostics;->when(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    :goto_c
    move-object/from16 v20, v4

    if-eqz v9, :cond_10

    const/16 v21, 0x1

    goto :goto_d

    :cond_10
    const/16 v21, 0x0

    :goto_d
    const/16 v22, 0x0

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v22}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 109
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmScheduler;->isEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 114
    new-instance v5, Lru/okei/timetable/Diagnostics$Row;

    const-string v24, "alarms"

    const v6, 0x7f06001a

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    if-eqz v4, :cond_11

    const v6, 0x7f060036

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    :cond_11
    const v6, 0x7f060034

    .line 115
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_e
    move-object/from16 v26, v6

    const/16 v28, 0x0

    move-object/from16 v23, v5

    move/from16 v27, v4

    invoke-direct/range {v23 .. v28}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 114
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "alarm"

    .line 118
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 120
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1f

    if-lt v6, v9, :cond_13

    if-eqz v5, :cond_12

    .line 121
    invoke-virtual {v5}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    goto :goto_f

    :cond_12
    const/4 v5, 0x0

    :goto_f
    move/from16 v21, v5

    goto :goto_10

    :cond_13
    const/16 v21, 0x1

    .line 123
    :goto_10
    new-instance v5, Lru/okei/timetable/Diagnostics$Row;

    const-string v18, "alarms"

    const v6, 0x7f060038

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    if-eqz v21, :cond_14

    const v6, 0x7f06001b

    .line 124
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_11

    :cond_14
    const v6, 0x7f060032

    .line 125
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_11
    move-object/from16 v20, v6

    const/16 v22, 0x0

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v22}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 123
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "notification"

    .line 128
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    if-eqz v5, :cond_15

    .line 129
    invoke-virtual {v5}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v21, 0x1

    goto :goto_12

    :cond_15
    const/16 v21, 0x0

    .line 130
    :goto_12
    new-instance v6, Lru/okei/timetable/Diagnostics$Row;

    const-string v18, "alarms"

    const v9, 0x7f06004f

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v9, 0x7f060051

    const v10, 0x7f060050

    if-eqz v21, :cond_16

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_13

    .line 131
    :cond_16
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_13
    move-object/from16 v20, v13

    const/16 v22, 0x0

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v22}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 130
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x22

    if-lt v6, v13, :cond_1a

    if-eqz v5, :cond_17

    .line 135
    invoke-virtual {v5}, Landroid/app/NotificationManager;->canUseFullScreenIntent()Z

    move-result v5

    if-eqz v5, :cond_17

    const/16 v21, 0x1

    goto :goto_14

    :cond_17
    const/16 v21, 0x0

    .line 136
    :goto_14
    new-instance v5, Lru/okei/timetable/Diagnostics$Row;

    const-string v18, "alarms"

    const v6, 0x7f060039

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    if-eqz v21, :cond_18

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_15

    .line 137
    :cond_18
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_15
    move-object/from16 v20, v6

    if-eqz v21, :cond_19

    const/4 v6, 0x0

    goto :goto_16

    :cond_19
    const-string v6, "fullscreen"

    :goto_16
    move-object/from16 v22, v6

    move-object/from16 v17, v5

    .line 138
    invoke-direct/range {v17 .. v22}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 136
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_1a
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1c

    const-string v5, "power"

    .line 143
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    if-eqz v5, :cond_1b

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x1

    goto :goto_17

    :cond_1b
    const/4 v5, 0x0

    :goto_17
    move/from16 v21, v5

    goto :goto_18

    :cond_1c
    const/16 v21, 0x1

    .line 146
    :goto_18
    new-instance v5, Lru/okei/timetable/Diagnostics$Row;

    const-string v18, "alarms"

    const v6, 0x7f06001e

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    if-eqz v21, :cond_1d

    const v6, 0x7f060020

    .line 147
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_19

    :cond_1d
    const v6, 0x7f06001f

    .line 148
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_19
    move-object/from16 v20, v6

    const/16 v22, 0x0

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v22}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 146
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmScheduler;->lastSync(Landroid/content/Context;)J

    move-result-wide v5

    .line 151
    new-instance v13, Lru/okei/timetable/Diagnostics$Row;

    const-string v18, "alarms"

    const v14, 0x7f060040

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    cmp-long v14, v5, v7

    if-nez v14, :cond_1e

    const v5, 0x7f060049

    .line 152
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1a

    .line 153
    :cond_1e
    invoke-static {v0, v5, v6}, Lru/okei/timetable/Diagnostics;->when(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    :goto_1a
    move-object/from16 v20, v5

    if-eqz v14, :cond_1f

    const/16 v21, 0x1

    goto :goto_1b

    :cond_1f
    const/16 v21, 0x0

    :goto_1b
    const/16 v22, 0x0

    move-object/from16 v17, v13

    invoke-direct/range {v17 .. v22}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 151
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmScheduler;->lastFire(Landroid/content/Context;)J

    move-result-wide v5

    .line 155
    new-instance v13, Lru/okei/timetable/Diagnostics$Row;

    const-string v18, "alarms"

    const v14, 0x7f06003e

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    cmp-long v14, v5, v7

    if-nez v14, :cond_20

    .line 156
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1c

    .line 157
    :cond_20
    invoke-static {v0, v5, v6}, Lru/okei/timetable/Diagnostics;->when(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    :goto_1c
    move-object/from16 v20, v5

    if-eqz v14, :cond_21

    const/16 v21, 0x1

    goto :goto_1d

    :cond_21
    const/16 v21, 0x0

    :goto_1d
    const/16 v22, 0x0

    move-object/from16 v17, v13

    invoke-direct/range {v17 .. v22}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 155
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmScheduler;->snoozeAt(Landroid/content/Context;)J

    move-result-wide v5

    cmp-long v13, v5, v7

    if-eqz v13, :cond_22

    .line 161
    new-instance v13, Lru/okei/timetable/Diagnostics$Row;

    const-string v18, "alarms"

    const v14, 0x7f060066

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static {v5, v6}, Lru/okei/timetable/alarm/AlarmScheduler;->format(J)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v17, v13

    invoke-direct/range {v17 .. v22}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_22
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmScheduler;->planned(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v6, 0x0

    const/4 v15, 0x0

    .line 167
    :goto_1e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const-string v9, " \u00b7 "

    if-ge v6, v10, :cond_25

    const/16 v10, 0x8

    if-ge v15, v10, :cond_25

    .line 168
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    .line 169
    iget-wide v7, v10, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    cmp-long v21, v7, v13

    if-gtz v21, :cond_23

    goto :goto_20

    .line 172
    :cond_23
    iget v7, v10, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    invoke-static {v0, v7}, Lru/okei/timetable/alarm/AlarmScheduler;->isRegistered(Landroid/content/Context;I)Z

    move-result v25

    .line 173
    new-instance v7, Lru/okei/timetable/Diagnostics$Row;

    const-string v22, "plan"

    iget-wide v11, v10, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    .line 174
    invoke-static {v11, v12}, Lru/okei/timetable/alarm/AlarmScheduler;->format(J)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v10, Lru/okei/timetable/alarm/AlarmPlan$Slot;->day:Ljava/lang/String;

    invoke-static {v12}, Lru/okei/timetable/alarm/AlarmScheduler;->shortDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    iget-object v8, v10, Lru/okei/timetable/alarm/AlarmPlan$Slot;->lesson:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 175
    invoke-virtual {v8, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    if-eqz v25, :cond_24

    const v10, 0x7f06003b

    .line 176
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1f

    :cond_24
    const v10, 0x7f06004d

    .line 177
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_1f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    move-object/from16 v21, v7

    invoke-direct/range {v21 .. v26}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 173
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    :goto_20
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v7, 0x0

    const v9, 0x7f060051

    const v11, 0x7f06004b

    goto/16 :goto_1e

    :cond_25
    if-nez v15, :cond_26

    .line 182
    new-instance v6, Lru/okei/timetable/Diagnostics$Row;

    const-string v22, "plan"

    const v7, 0x7f060053

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v28, 0x1

    xor-int/lit8 v25, v4, 0x1

    const/16 v26, 0x0

    move-object/from16 v21, v6

    invoke-direct/range {v21 .. v26}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_26
    const/16 v28, 0x1

    :goto_21
    const-string v3, "schedule_alarms"

    const/4 v4, 0x0

    .line 184
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "plan"

    const-string v7, ""

    .line 185
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    new-instance v6, Lru/okei/timetable/Diagnostics$Row;

    const-string v11, "plan"

    const v7, 0x7f060055

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 187
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_27

    const/4 v14, 0x1

    goto :goto_22

    :cond_27
    const/4 v14, 0x0

    :goto_22
    const/4 v15, 0x0

    move-object v10, v6

    invoke-direct/range {v10 .. v15}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 186
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_29

    .line 189
    new-instance v3, Lru/okei/timetable/alarm/AlarmPlan$Params;

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmSettings;->lead(Landroid/content/Context;)I

    move-result v5

    .line 190
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmSettings;->count(Landroid/content/Context;)I

    move-result v6

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmSettings;->step(Landroid/content/Context;)I

    move-result v7

    invoke-direct {v3, v5, v6, v7}, Lru/okei/timetable/alarm/AlarmPlan$Params;-><init>(III)V

    .line 191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lru/okei/timetable/alarm/AlarmPlan;->build(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;Lru/okei/timetable/alarm/AlarmPlan$Params;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 192
    new-instance v3, Lru/okei/timetable/Diagnostics$Row;

    const-string v11, "plan"

    const v5, 0x7f060054

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 193
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    if-lez v2, :cond_28

    const/4 v14, 0x1

    goto :goto_23

    :cond_28
    const/4 v14, 0x0

    :goto_23
    const/4 v15, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 192
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_29
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmScheduler;->lastSync(Landroid/content/Context;)J

    move-result-wide v2

    .line 196
    new-instance v5, Lru/okei/timetable/Diagnostics$Row;

    const-string v11, "plan"

    const v6, 0x7f060056

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_2a

    const v6, 0x7f06004b

    .line 197
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    .line 198
    :cond_2a
    invoke-static {v0, v2, v3}, Lru/okei/timetable/Diagnostics;->when(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3}, Lru/okei/timetable/data/Formats;->time(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_24
    move-object v13, v2

    if-eqz v8, :cond_2b

    const/4 v14, 0x1

    goto :goto_25

    :cond_2b
    const/4 v14, 0x0

    :goto_25
    const/4 v15, 0x0

    move-object v10, v5

    invoke-direct/range {v10 .. v15}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 196
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/Admin;->isActive(Landroid/content/Context;)Z

    move-result v25

    .line 202
    new-instance v2, Lru/okei/timetable/Diagnostics$Row;

    const-string v22, "access"

    const v3, 0x7f060019

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    if-eqz v25, :cond_2c

    const v3, 0x7f060051

    goto :goto_26

    :cond_2c
    const v3, 0x7f060050

    :goto_26
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    const/16 v26, 0x0

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v26}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/SiteChangesSync;->lastAt(Landroid/content/Context;)J

    move-result-wide v2

    .line 205
    new-instance v5, Lru/okei/timetable/Diagnostics$Row;

    const-string v11, "access"

    const v6, 0x7f060065

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_2d

    const v6, 0x7f06004b

    .line 206
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_27

    .line 207
    :cond_2d
    invoke-static {v0, v2, v3}, Lru/okei/timetable/Diagnostics;->when(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3}, Lru/okei/timetable/data/Formats;->time(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_27
    move-object v13, v2

    if-eqz v8, :cond_2e

    const/4 v14, 0x1

    goto :goto_28

    :cond_2e
    const/4 v14, 0x0

    :goto_28
    const/4 v15, 0x0

    move-object v10, v5

    invoke-direct/range {v10 .. v15}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 205
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v2, Lru/okei/timetable/Diagnostics$Row;

    const-string v17, "access"

    const v3, 0x7f060063

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 210
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/SiteChangesSync;->lastApplied(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 209
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/SiteChangesSync;->status(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 212
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 213
    new-instance v2, Lru/okei/timetable/Diagnostics$Row;

    const-string v4, "access"

    const v3, 0x7f060064

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_2f
    new-instance v2, Lru/okei/timetable/Diagnostics$Row;

    const-string v10, "app"

    const v3, 0x7f06006b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/Diagnostics;->version(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v2, Lru/okei/timetable/Diagnostics$Row;

    const-string v4, "app"

    const v3, 0x7f06001c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (SDK "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v2, Lru/okei/timetable/Diagnostics$Row;

    const-string v10, "app"

    const v3, 0x7f060033

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lru/okei/timetable/Diagnostics;->device()Ljava/lang/String;

    move-result-object v12

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lru/okei/timetable/Diagnostics$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private static dayStateText(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 281
    invoke-static {p0}, Lru/okei/timetable/data/WeekCache;->get(Landroid/content/Context;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v0

    const v1, 0x7f06002f

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 285
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v0, v2}, Lru/okei/timetable/InfoPages;->of(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;)Lru/okei/timetable/InfoPages$State;

    move-result-object v0

    .line 287
    iget v2, v0, Lru/okei/timetable/InfoPages$State;->kind:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const v1, 0x7f060030

    .line 288
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Lru/okei/timetable/InfoPages$State;->running:Lru/okei/timetable/InfoPages$Slot;

    iget v1, v1, Lru/okei/timetable/InfoPages$Slot;->number:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 289
    :cond_1
    iget v2, v0, Lru/okei/timetable/InfoPages$State;->kind:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const v1, 0x7f06002e

    .line 290
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 291
    :cond_2
    iget v2, v0, Lru/okei/timetable/InfoPages$State;->kind:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const v1, 0x7f06002d

    .line 292
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 293
    :cond_3
    iget v2, v0, Lru/okei/timetable/InfoPages$State;->kind:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    const v1, 0x7f06002c

    .line 294
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 296
    :cond_4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 298
    :goto_0
    iget-object v1, v0, Lru/okei/timetable/InfoPages$State;->slots:Ljava/util/List;

    if-nez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v0, v0, Lru/okei/timetable/InfoPages$State;->slots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 299
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lru/okei/timetable/data/Formats;->time(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u00b7 "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static device()Ljava/lang/String;
    .locals 3

    .line 271
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 272
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static packageUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static toText(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lru/okei/timetable/Diagnostics$Row;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f060059

    .line 224
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ""

    const/4 v3, 0x0

    move-object v4, v2

    .line 226
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 227
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/okei/timetable/Diagnostics$Row;

    .line 228
    iget-object v6, v5, Lru/okei/timetable/Diagnostics$Row;->section:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 229
    iget-object v4, v5, Lru/okei/timetable/Diagnostics$Row;->section:Ljava/lang/String;

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v6, "  "

    .line 232
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lru/okei/timetable/Diagnostics$Row;->label:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lru/okei/timetable/Diagnostics$Row;->value:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-boolean v5, v5, Lru/okei/timetable/Diagnostics$Row;->good:Z

    if-eqz v5, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    const v5, 0x7f06005a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static version(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 262
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 263
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Diagnostics"

    .line 265
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "?"

    return-object p0
.end method

.method public static when(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    const-wide/32 v2, 0xea60

    .line 243
    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const p1, 0x7f06003d

    .line 245
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x0

    const-wide/16 v3, 0x3c

    const/4 v5, 0x1

    cmp-long v6, v0, v3

    if-gez v6, :cond_2

    new-array p1, v5, [Ljava/lang/Object;

    long-to-int p2, v0

    .line 248
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const p2, 0x7f060048

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 250
    :cond_2
    div-long/2addr v0, v3

    const-wide/16 v3, 0x18

    cmp-long v6, v0, v3

    if-gez v6, :cond_3

    new-array p1, v5, [Ljava/lang/Object;

    long-to-int p2, v0

    .line 252
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const p2, 0x7f06003a

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 254
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 255
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x5

    .line 256
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    .line 257
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, v5

    invoke-static {p1, p2}, Lru/okei/timetable/alarm/AlarmScheduler;->format(J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
