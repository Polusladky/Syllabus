.class public final Lru/okei/timetable/SiteChangesSync;
.super Ljava/lang/Object;
.source "SiteChangesSync.java"


# static fields
.field private static final INTERVAL_MS:J = 0x1b7740L

.field private static final KEY_AT:Ljava/lang/String; = "at"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final PREFS:Ljava/lang/String; = "site_changes"

.field public static volatile onApplied:Ljava/lang/Runnable;

.field public static final recent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/okei/timetable/data/Change;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/SiteChangesSync;->recent:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static containsChange(Ljava/util/List;Lru/okei/timetable/data/Change;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/okei/timetable/data/Change;",
            ">;",
            "Lru/okei/timetable/data/Change;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 126
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 127
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/okei/timetable/data/Change;

    .line 128
    iget v3, v2, Lru/okei/timetable/data/Change;->day:I

    iget v4, p1, Lru/okei/timetable/data/Change;->day:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lru/okei/timetable/data/Change;->pair:I

    iget v4, p1, Lru/okei/timetable/data/Change;->pair:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lru/okei/timetable/data/Change;->kind:I

    iget v4, p1, Lru/okei/timetable/data/Change;->kind:I

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lru/okei/timetable/data/Change;->subject:Ljava/lang/String;

    iget-object v4, p1, Lru/okei/timetable/data/Change;->subject:Ljava/lang/String;

    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lru/okei/timetable/data/Change;->teacher:Ljava/lang/String;

    iget-object v4, p1, Lru/okei/timetable/data/Change;->teacher:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lru/okei/timetable/data/Change;->room:Ljava/lang/String;

    iget-object v3, p1, Lru/okei/timetable/data/Change;->room:Ljava/lang/String;

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static force(Landroid/content/Context;)I
    .locals 2

    const-string v0, "site_changes"

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "at"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    invoke-static {p0}, Lru/okei/timetable/SiteChangesSync;->sync(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static forceAsync(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "site_changes"

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "at"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 43
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lru/okei/timetable/SiteChangesSync$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/SiteChangesSync$1;-><init>(Landroid/content/Context;)V

    const-string p0, "site-changes-force"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static lastApplied(Landroid/content/Context;)I
    .locals 2

    const-string v0, "site_changes"

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "applied"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static lastAt(Landroid/content/Context;)J
    .locals 3

    const-string v0, "site_changes"

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "at"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static lessonOf(Lru/okei/timetable/data/WeekSchedule;II)Lru/okei/timetable/data/Lesson;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 108
    iget-object v1, p0, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    if-eqz v1, :cond_3

    if-ltz p1, :cond_3

    iget-object v1, p0, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    iget-object p0, p0, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lru/okei/timetable/data/DaySchedule;

    if-eqz p0, :cond_3

    .line 112
    iget-object p1, p0, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 115
    :goto_0
    iget-object v1, p0, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 116
    iget-object v1, p0, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/okei/timetable/data/Lesson;

    .line 117
    iget-object v2, v1, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static status(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "site_changes"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "status"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static sync(Landroid/content/Context;)I
    .locals 18

    move-object/from16 v0, p0

    .line 138
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/data/WeekCache;->get(Landroid/content/Context;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 139
    invoke-virtual {v1}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 142
    :cond_0
    iget-object v3, v1, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-static {v0, v3}, Lru/okei/timetable/data/ChangeStore;->prune(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lru/okei/timetable/data/SiteChanges;->fetchPage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    const-string v4, "https://oksei.ru"

    .line 147
    invoke-static {v3, v4}, Lru/okei/timetable/data/SiteChanges;->findFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 148
    iget-object v4, v1, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-static {v0, v4}, Lru/okei/timetable/data/ChangeStore;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 149
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x7

    .line 150
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    rem-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    rem-int/2addr v5, v6

    .line 151
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/data/Groups;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 152
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 155
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Ljava/util/Map$Entry;

    .line 156
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lru/okei/timetable/data/SiteChanges;->download(Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_7

    .line 157
    array-length v7, v6

    const/16 v8, 0x200

    if-ge v7, v8, :cond_2

    goto/16 :goto_2

    .line 160
    :cond_2
    invoke-static {v6}, Lru/okei/timetable/data/XlsTable;->read([B)Ljava/util/List;

    move-result-object v6

    .line 161
    iget-object v8, v1, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Ljava/lang/String;

    move-object v7, v12

    move-wide v9, v14

    move v2, v11

    move-object/from16 v11, v17

    invoke-static/range {v6 .. v11}, Lru/okei/timetable/data/SiteChanges;->parseTable(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 162
    invoke-static {v1, v6}, Lru/okei/timetable/SiteChangesSync;->withoutNoise(Lru/okei/timetable/data/WeekSchedule;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 163
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 166
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3d

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x3b

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 168
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 169
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lru/okei/timetable/data/Change;

    .line 170
    invoke-static {v4, v9}, Lru/okei/timetable/SiteChangesSync;->containsChange(Ljava/util/List;Lru/okei/timetable/data/Change;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 171
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget v10, v9, Lru/okei/timetable/data/Change;->day:I

    if-ne v10, v5, :cond_4

    .line 173
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 177
    :cond_5
    iget-object v8, v1, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-static {v0, v8, v6}, Lru/okei/timetable/data/ChangeStore;->add(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 178
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 179
    invoke-static {v0, v7}, Lru/okei/timetable/Notifier;->showChange(Landroid/content/Context;Ljava/util/List;)V

    .line 181
    :cond_6
    sget-object v7, Lru/okei/timetable/SiteChangesSync;->recent:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int v11, v2, v6

    goto :goto_4

    :cond_7
    :goto_2
    move v2, v11

    :goto_3
    move v11, v2

    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    move v2, v11

    const-string v1, "site_changes"

    const/4 v3, 0x0

    .line 185
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "signature"

    const-string v4, ""

    .line 186
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 189
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v4, " (\u0431\u0435\u0437 \u0438\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u0439)"

    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "\u0437\u0430\u043c\u0435\u043d \u0441 \u0441\u0430\u0439\u0442\u0430: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SiteChangesSync"

    .line 188
    invoke-static {v5, v4}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "at"

    invoke-interface {v1, v4, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "applied"

    .line 191
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "status"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-lez v2, :cond_a

    .line 193
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ScheduleWidget;->refresh(Landroid/content/Context;)V

    .line 194
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ScheduleWidgetMini;->refresh(Landroid/content/Context;)V

    .line 195
    sget-object v0, Lru/okei/timetable/SiteChangesSync;->onApplied:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 197
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return v2

    :cond_b
    :goto_5
    const/4 v0, 0x0

    return v0
.end method

.method public static syncAsync(Landroid/content/Context;)V
    .locals 5

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "site_changes"

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "at"

    const-wide/16 v2, 0x0

    .line 62
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x1b7740

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lru/okei/timetable/SiteChangesSync$2;

    invoke-direct {v1, p0}, Lru/okei/timetable/SiteChangesSync$2;-><init>(Landroid/content/Context;)V

    const-string p0, "site-changes"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static withoutNoise(Lru/okei/timetable/data/WeekSchedule;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/okei/timetable/data/WeekSchedule;",
            "Ljava/util/List<",
            "Lru/okei/timetable/data/Change;",
            ">;)",
            "Ljava/util/List<",
            "Lru/okei/timetable/data/Change;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 82
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 83
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/okei/timetable/data/Change;

    .line 84
    iget v4, v3, Lru/okei/timetable/data/Change;->kind:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 85
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 88
    :cond_1
    iget v4, v3, Lru/okei/timetable/data/Change;->day:I

    iget v6, v3, Lru/okei/timetable/data/Change;->pair:I

    invoke-static {p0, v4, v6}, Lru/okei/timetable/SiteChangesSync;->lessonOf(Lru/okei/timetable/data/WeekSchedule;II)Lru/okei/timetable/data/Lesson;

    move-result-object v4

    if-nez v4, :cond_2

    .line 90
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 93
    :cond_2
    iget-object v6, v3, Lru/okei/timetable/data/Change;->subject:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v4, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v4, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    .line 95
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lru/okei/timetable/data/Change;->subject:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v6, 0x1

    .line 96
    :goto_2
    iget-object v7, v3, Lru/okei/timetable/data/Change;->room:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v4, Lru/okei/timetable/data/Lesson;->room:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v4, v4, Lru/okei/timetable/data/Lesson;->room:Ljava/lang/String;

    .line 98
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v3, Lru/okei/timetable/data/Change;->room:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :cond_6
    :goto_3
    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    goto :goto_4

    .line 102
    :cond_7
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-object v0
.end method
