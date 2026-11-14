.class public final Lru/okei/timetable/data/ParserHealth;
.super Ljava/lang/Object;
.source "ParserHealth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/data/ParserHealth$Report;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doubt(Lru/okei/timetable/data/WeekSchedule;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "\u0421\u0422\u0420\u0410\u041d\u0418\u0426\u0410 \u041d\u0415 \u0420\u0410\u0417\u041e\u0411\u0420\u0410\u041d\u0410"

    return-object p0

    .line 61
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    const-string v2, " \u0414\u041d."

    if-ge v0, v1, :cond_1

    .line 62
    iget-object p0, p0, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u0412 \u041d\u0415\u0414\u0415\u041b\u0415 \u0422\u041e\u041b\u042c\u041a\u041e "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "\u041f\u0410\u0420 \u041d\u0415 \u041d\u0410\u0419\u0414\u0415\u041d\u041e"

    return-object p0

    .line 67
    :cond_2
    iget-object v0, p0, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmPlan;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 68
    iget-object p0, p0, Lru/okei/timetable/data/WeekSchedule;->endDate:Ljava/lang/String;

    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmPlan;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    if-eqz v0, :cond_6

    if-nez p0, :cond_3

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v3, v0

    long-to-double v0, v3

    const-wide v3, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v3, 0x4

    cmp-long p0, v0, v3

    if-ltz p0, :cond_5

    const-wide/16 v3, 0x7

    cmp-long p0, v0, v3

    if-lez p0, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, ""

    return-object p0

    .line 74
    :cond_5
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "\u0414\u0418\u0410\u041f\u0410\u0417\u041e\u041d \u041d\u0415\u0414\u0415\u041b\u0418 "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    const-string p0, "\u041d\u0415 \u0423\u0414\u0410\u041b\u041e\u0421\u042c \u041f\u0420\u041e\u0427\u0418\u0422\u0410\u0422\u042c \u0414\u0410\u0422\u042b \u041d\u0415\u0414\u0415\u041b\u0418"

    return-object p0
.end method

.method public static of(Ljava/lang/String;Lru/okei/timetable/data/WeekSchedule;)Lru/okei/timetable/data/ParserHealth$Report;
    .locals 1

    .line 49
    invoke-static {p1}, Lru/okei/timetable/data/ParserHealth;->doubt(Lru/okei/timetable/data/WeekSchedule;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lru/okei/timetable/data/ParserHealth;->of(Ljava/lang/String;Lru/okei/timetable/data/WeekSchedule;Ljava/lang/String;)Lru/okei/timetable/data/ParserHealth$Report;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;Lru/okei/timetable/data/WeekSchedule;Ljava/lang/String;)Lru/okei/timetable/data/ParserHealth$Report;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result p1

    .line 54
    :goto_0
    new-instance v0, Lru/okei/timetable/data/ParserHealth$Report;

    invoke-static {p0}, Lru/okei/timetable/data/ParserHealth;->rows(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, p0, p1, p2}, Lru/okei/timetable/data/ParserHealth$Report;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method private static rows(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "<li"

    .line 86
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method
