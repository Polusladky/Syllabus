.class public final Lru/okei/timetable/AlarmBar;
.super Ljava/lang/Object;
.source "AlarmBar.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 34
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f060089

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 37
    :cond_0
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSetup;->ready(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0600b1

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const v0, 0x7f060088

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stateText(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 16
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f060090

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_0
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSetup;->ready(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f06008d

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 22
    :cond_1
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->missing(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_2

    const v0, 0x7f06008c

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :cond_2
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->next(Landroid/content/Context;)Lru/okei/timetable/alarm/AlarmPlan$Slot;

    move-result-object v0

    if-nez v0, :cond_3

    const v0, 0x7f06008f

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const v1, 0x7f0600a0

    .line 29
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-wide v1, v0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    invoke-static {v1, v2}, Lru/okei/timetable/alarm/AlarmScheduler;->format(J)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->day:Ljava/lang/String;

    .line 30
    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmScheduler;->shortDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
