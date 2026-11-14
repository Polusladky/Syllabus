.class public Lru/okei/timetable/ScheduleWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "ScheduleWidget.java"


# static fields
.field private static final LAST:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lru/okei/timetable/ScheduleWidget;->LAST:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static build(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/widget/RemoteViews;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 77
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040007

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 79
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/data/WeekCache;->get(Landroid/content/Context;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 81
    iget-object v4, v3, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-static {v0, v4}, Lru/okei/timetable/data/ChangeStore;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lru/okei/timetable/data/ChangeApplier;->apply(Lru/okei/timetable/data/WeekSchedule;Ljava/util/List;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v3

    .line 83
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x7

    .line 84
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    rem-int/2addr v4, v5

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    const/4 v7, 0x0

    .line 87
    :goto_0
    iget-object v8, v3, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 88
    iget-object v8, v3, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lru/okei/timetable/data/DaySchedule;

    iget v8, v8, Lru/okei/timetable/data/DaySchedule;->index:I

    if-ne v8, v4, :cond_1

    .line 89
    iget-object v4, v3, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/okei/timetable/data/DaySchedule;

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 95
    :goto_1
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/data/Groups;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 97
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    if-eqz v3, :cond_a

    if-nez v4, :cond_3

    goto/16 :goto_8

    .line 102
    :cond_3
    iget-object v9, v4, Lru/okei/timetable/data/DaySchedule;->name:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u00b7 "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 103
    iget-object v9, v4, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    const v9, 0x7f0601ec

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 104
    :cond_4
    iget-object v9, v4, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const v10, 0x7f0601ed

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v3, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    const/4 v10, 0x0

    .line 105
    :goto_3
    iget-object v11, v4, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_9

    .line 106
    iget-object v11, v4, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lru/okei/timetable/data/Lesson;

    .line 107
    invoke-static {v11}, Lru/okei/timetable/ScheduleWidget;->pairOf(Lru/okei/timetable/data/Lesson;)I

    move-result v13

    const-string v14, ""

    if-lez v13, :cond_5

    .line 108
    iget v15, v4, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-static {v15, v13}, Lru/okei/timetable/data/Bells;->timeOf(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_5
    move-object v13, v14

    :goto_4
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    .line 110
    iget-object v5, v11, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, v11, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    iget-object v5, v11, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    goto :goto_6

    :cond_7
    :goto_5
    const-string v5, "\u2013"

    :goto_6
    aput-object v5, v15, v6

    .line 111
    iget-object v5, v11, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    if-nez v5, :cond_8

    goto :goto_7

    :cond_8
    iget-object v14, v11, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    :goto_7
    aput-object v14, v15, v8

    const/4 v5, 0x2

    aput-object v13, v15, v5

    .line 109
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_9
    move-object v10, v9

    goto :goto_9

    :cond_a
    :goto_8
    const v4, 0x7f0601eb

    .line 100
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    :goto_9
    move-object v9, v7

    .line 116
    invoke-static {v3, v0}, Lru/okei/timetable/ScheduleWidget;->nextLine(Lru/okei/timetable/data/WeekSchedule;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 117
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ScheduleWidget;->footer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    const/high16 v3, 0x437a0000    # 250.0f

    .line 119
    invoke-static {v0, v3}, Lru/okei/timetable/ScheduleWidget;->dp(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, 0x42dc0000    # 110.0f

    .line 120
    invoke-static {v0, v4}, Lru/okei/timetable/ScheduleWidget;->dp(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v1, :cond_d

    const-string v3, "appWidgetMaxWidth"

    .line 122
    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "appWidgetMaxHeight"

    .line 123
    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-gtz v3, :cond_b

    const-string v3, "appWidgetMinWidth"

    const/16 v5, 0xfa

    .line 125
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    :cond_b
    if-gtz v4, :cond_c

    const-string v4, "appWidgetMinHeight"

    const/16 v5, 0x6e

    .line 128
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    :cond_c
    int-to-float v1, v3

    .line 130
    invoke-static {v0, v1}, Lru/okei/timetable/ScheduleWidget;->dp(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v3, v4

    .line 131
    invoke-static {v0, v3}, Lru/okei/timetable/ScheduleWidget;->dp(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v14, v1

    move v15, v3

    goto :goto_a

    :cond_d
    move v14, v3

    move v15, v4

    .line 134
    :goto_a
    new-instance v8, Lru/okei/timetable/WidgetRender;

    invoke-direct {v8, v0}, Lru/okei/timetable/WidgetRender;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/WidgetRender;->freshnessDot(Landroid/content/Context;)I

    move-result v1

    .line 136
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    sget-object v4, Lru/okei/timetable/ScheduleWidget;->LAST:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    return-object v5

    .line 141
    :cond_e
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v16, v1

    .line 143
    invoke-virtual/range {v8 .. v16}, Lru/okei/timetable/WidgetRender;->draw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v1

    const v3, 0x7f030037

    .line 142
    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 145
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lru/okei/timetable/MainActivity;

    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x14000000

    .line 146
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_f

    const/high16 v4, 0xc000000

    goto :goto_b

    :cond_f
    const/high16 v4, 0x8000000

    .line 152
    :goto_b
    invoke-static {v0, v6, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 151
    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v2
.end method

.method private static dp(Landroid/content/Context;F)F
    .locals 0

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    return p1
.end method

.method private static footer(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 188
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->next(Landroid/content/Context;)Lru/okei/timetable/alarm/AlarmPlan$Slot;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const v1, 0x7f0601f6

    .line 192
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-wide v1, v0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    invoke-static {v1, v2}, Lru/okei/timetable/alarm/AlarmScheduler;->format(J)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->day:Ljava/lang/String;

    .line 193
    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmScheduler;->shortDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u00b7 "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static left(J)Ljava/lang/String;
    .locals 5

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0xea60

    div-long/2addr p0, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-string v0, " \u041c\u0418\u041d"

    const-wide/16 v1, 0x3c

    cmp-long v3, p0, v1

    if-gez v3, :cond_0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 184
    :cond_0
    div-long v3, p0, v1

    rem-long/2addr p0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " \u0427 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static nextLine(Lru/okei/timetable/data/WeekSchedule;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, v0}, Lru/okei/timetable/InfoPages;->of(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;)Lru/okei/timetable/InfoPages$State;

    move-result-object p0

    .line 162
    iget v0, p0, Lru/okei/timetable/InfoPages$State;->kind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 p0, 0x5

    if-eq v0, p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const p0, 0x7f0601f2

    .line 171
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const v0, 0x7f0601ee

    .line 164
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/InfoPages$State;->running:Lru/okei/timetable/InfoPages$Slot;

    iget v1, v1, Lru/okei/timetable/InfoPages$Slot;->number:I

    const v2, 0x7f0601ef

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lru/okei/timetable/InfoPages$State;->running:Lru/okei/timetable/InfoPages$Slot;

    iget-wide v2, p0, Lru/okei/timetable/InfoPages$Slot;->end:J

    .line 165
    invoke-static {v2, v3}, Lru/okei/timetable/ScheduleWidget;->left(J)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const v0, 0x7f0601f0

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    iget v1, v1, Lru/okei/timetable/InfoPages$Slot;->number:I

    const v2, 0x7f0601f1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    iget-wide v2, p0, Lru/okei/timetable/InfoPages$Slot;->start:J

    .line 169
    invoke-static {v2, v3}, Lru/okei/timetable/ScheduleWidget;->left(J)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const p0, 0x7f0601f3

    .line 173
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static pairOf(Lru/okei/timetable/data/Lesson;)I
    .locals 1

    .line 198
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

    const-string v0, "ScheduleWidget"

    .line 200
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static refresh(Landroid/content/Context;)V
    .locals 5

    .line 55
    :try_start_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lru/okei/timetable/ScheduleWidget;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    if-eqz v1, :cond_2

    .line 58
    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 61
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 62
    aget v3, v1, v2

    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v3

    aget v4, v1, v2

    invoke-static {p0, v3, v4}, Lru/okei/timetable/ScheduleWidget;->build(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/widget/RemoteViews;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 64
    aget v4, v1, v2

    invoke-virtual {v0, v4, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception p0

    const-string v0, "ScheduleWidget"

    .line 68
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-static {p1, p4, p3}, Lru/okei/timetable/ScheduleWidget;->build(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p2, p3, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0

    .line 41
    invoke-static {p1}, Lru/okei/timetable/WidgetTickReceiver;->cancel(Landroid/content/Context;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x0

    .line 27
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 28
    aget v1, p3, v0

    invoke-virtual {p2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 29
    aget v2, p3, v0

    invoke-static {p1, v1, v2}, Lru/okei/timetable/ScheduleWidget;->build(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 31
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p1}, Lru/okei/timetable/WidgetTickReceiver;->schedule(Landroid/content/Context;)V

    .line 36
    invoke-static {p1}, Lru/okei/timetable/ScheduleWidgetMini;->refresh(Landroid/content/Context;)V

    return-void
.end method
