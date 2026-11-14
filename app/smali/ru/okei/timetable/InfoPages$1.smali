.class Lru/okei/timetable/InfoPages$1;
.super Ljava/lang/Object;
.source "InfoPages.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/InfoPages;->slotsOf(Lru/okei/timetable/data/DaySchedule;Ljava/util/Calendar;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lru/okei/timetable/InfoPages$Slot;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 152
    check-cast p1, Lru/okei/timetable/InfoPages$Slot;

    check-cast p2, Lru/okei/timetable/InfoPages$Slot;

    invoke-virtual {p0, p1, p2}, Lru/okei/timetable/InfoPages$1;->compare(Lru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;)I

    move-result p1

    return p1
.end method

.method public compare(Lru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;)I
    .locals 5

    .line 155
    iget-wide v0, p1, Lru/okei/timetable/InfoPages$Slot;->start:J

    iget-wide v2, p2, Lru/okei/timetable/InfoPages$Slot;->start:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lru/okei/timetable/InfoPages$Slot;->start:J

    iget-wide p1, p2, Lru/okei/timetable/InfoPages$Slot;->start:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
