.class public final Lru/okei/timetable/ui/WeekInfo;
.super Ljava/lang/Object;
.source "WeekInfo.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stale(Lru/okei/timetable/data/WeekSchedule;J)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 37
    :cond_0
    iget-object p0, p0, Lru/okei/timetable/data/WeekSchedule;->endDate:Ljava/lang/String;

    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmPlan;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x6

    const/4 v2, 0x1

    .line 41
    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 42
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long p0, p1, v3

    if-ltz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static todayIndex(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x7

    .line 29
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x5

    rem-int/2addr p0, v0

    return p0
.end method

.method public static todayInside(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-static {v1}, Lru/okei/timetable/alarm/AlarmPlan;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 20
    iget-object p0, p0, Lru/okei/timetable/data/WeekSchedule;->endDate:Ljava/lang/String;

    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmPlan;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    if-eqz v1, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method
