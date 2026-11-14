.class public Lru/okei/timetable/ScheduleWidgetMini;
.super Landroid/appwidget/AppWidgetProvider;
.source "ScheduleWidgetMini.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;Landroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 10

    .line 34
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040007

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 35
    invoke-static {p0}, Lru/okei/timetable/data/WeekCache;->get(Landroid/content/Context;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v2, v1, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-static {p0, v2}, Lru/okei/timetable/data/ChangeStore;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lru/okei/timetable/data/ChangeApplier;->apply(Lru/okei/timetable/data/WeekSchedule;Ljava/util/List;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v1

    .line 40
    :cond_0
    invoke-static {p0}, Lru/okei/timetable/data/Groups;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v1, v3}, Lru/okei/timetable/InfoPages;->of(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;)Lru/okei/timetable/InfoPages$State;

    move-result-object v1

    .line 42
    iget v3, v1, Lru/okei/timetable/InfoPages$State;->kind:I

    const/4 v4, 0x3

    const-string v5, " \u041f\u0410\u0420\u0410"

    if-ne v3, v4, :cond_1

    .line 43
    iget-object v2, v1, Lru/okei/timetable/InfoPages$State;->running:Lru/okei/timetable/InfoPages$Slot;

    iget v2, v2, Lru/okei/timetable/InfoPages$Slot;->number:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u0418\u0414\u0415\u0422 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    iget-object v1, v1, Lru/okei/timetable/InfoPages$State;->running:Lru/okei/timetable/InfoPages$Slot;

    iget-wide v3, v1, Lru/okei/timetable/InfoPages$Slot;->end:J

    invoke-static {v3, v4}, Lru/okei/timetable/alarm/AlarmScheduler;->format(J)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u0414\u041e "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v5, v1

    move-object v4, v2

    goto :goto_3

    .line 45
    :cond_1
    iget v3, v1, Lru/okei/timetable/InfoPages$State;->kind:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    iget v3, v1, Lru/okei/timetable/InfoPages$State;->kind:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    goto :goto_2

    .line 48
    :cond_2
    iget v1, v1, Lru/okei/timetable/InfoPages$State;->kind:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    .line 50
    invoke-static {p0}, Lru/okei/timetable/data/Groups;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "\u041d\u0410 \u0421\u0415\u0413\u041e\u0414\u041d\u042f \u0412\u0421\u0401"

    goto :goto_1

    :cond_3
    const-string v1, "\u041f\u0410\u0420 \u041d\u0415\u0422"

    :goto_1
    move-object v4, v1

    move-object v5, v2

    goto :goto_3

    .line 46
    :cond_4
    :goto_2
    iget-object v2, v1, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    iget v2, v2, Lru/okei/timetable/InfoPages$Slot;->number:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u0414\u0410\u041b\u042c\u0428\u0415 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    iget-object v1, v1, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    iget-wide v3, v1, Lru/okei/timetable/InfoPages$Slot;->start:J

    invoke-static {v3, v4}, Lru/okei/timetable/alarm/AlarmScheduler;->format(J)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u0412 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_3
    const/high16 v1, 0x430c0000    # 140.0f

    .line 53
    invoke-static {p0, v1}, Lru/okei/timetable/ScheduleWidgetMini;->dp(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    .line 54
    invoke-static {p0, v2}, Lru/okei/timetable/ScheduleWidgetMini;->dp(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    const/4 v9, 0x0

    if-eqz p1, :cond_6

    const-string v3, "appWidgetMaxWidth"

    .line 56
    invoke-virtual {p1, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "appWidgetMaxHeight"

    .line 57
    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez v3, :cond_5

    int-to-float v1, v3

    .line 59
    invoke-static {p0, v1}, Lru/okei/timetable/ScheduleWidgetMini;->dp(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    :cond_5
    if-lez p1, :cond_6

    int-to-float p1, p1

    .line 62
    invoke-static {p0, p1}, Lru/okei/timetable/ScheduleWidgetMini;->dp(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    move v7, p1

    move v6, v1

    goto :goto_4

    :cond_6
    move v6, v1

    move v7, v2

    .line 65
    :goto_4
    new-instance v3, Lru/okei/timetable/WidgetRender;

    invoke-direct {v3, p0}, Lru/okei/timetable/WidgetRender;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-static {p0}, Lru/okei/timetable/WidgetRender;->freshnessDot(Landroid/content/Context;)I

    move-result v8

    .line 66
    invoke-virtual/range {v3 .. v8}, Lru/okei/timetable/WidgetRender;->drawMini(Ljava/lang/String;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p1

    const v1, 0x7f030037

    .line 65
    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 69
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lru/okei/timetable/MainActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x14000000

    .line 70
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_7

    const/high16 v2, 0xc000000

    goto :goto_5

    :cond_7
    const/high16 v2, 0x8000000

    .line 76
    :goto_5
    invoke-static {p0, v9, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 75
    invoke-virtual {v0, v1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method private static dp(Landroid/content/Context;F)F
    .locals 0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    return p1
.end method

.method public static refresh(Landroid/content/Context;)V
    .locals 5

    .line 86
    :try_start_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 87
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lru/okei/timetable/ScheduleWidgetMini;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    .line 89
    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 92
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 93
    aget v3, v1, v2

    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p0, v4}, Lru/okei/timetable/ScheduleWidgetMini;->build(Landroid/content/Context;Landroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception p0

    const-string v0, "ScheduleWidgetMini"

    .line 96
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "\u043c\u0438\u043d\u0438-\u0432\u0438\u0434\u0436\u0435\u0442"

    .line 97
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-static {p1, p4}, Lru/okei/timetable/ScheduleWidgetMini;->build(Landroid/content/Context;Landroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    const/4 v0, 0x0

    .line 22
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 23
    aget v1, p3, v0

    invoke-virtual {p2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v2}, Lru/okei/timetable/ScheduleWidgetMini;->build(Landroid/content/Context;Landroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
