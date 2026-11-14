.class Lru/okei/timetable/alarm/AlarmPlan$1;
.super Ljava/lang/Object;
.source "AlarmPlan.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/alarm/AlarmPlan;->buildReminders(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lru/okei/timetable/alarm/AlarmPlan$Slot;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 171
    check-cast p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    check-cast p2, Lru/okei/timetable/alarm/AlarmPlan$Slot;

    invoke-virtual {p0, p1, p2}, Lru/okei/timetable/alarm/AlarmPlan$1;->compare(Lru/okei/timetable/alarm/AlarmPlan$Slot;Lru/okei/timetable/alarm/AlarmPlan$Slot;)I

    move-result p1

    return p1
.end method

.method public compare(Lru/okei/timetable/alarm/AlarmPlan$Slot;Lru/okei/timetable/alarm/AlarmPlan$Slot;)I
    .locals 5

    .line 174
    iget-wide v0, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    iget-wide v2, p2, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    iget-wide p1, p2, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
