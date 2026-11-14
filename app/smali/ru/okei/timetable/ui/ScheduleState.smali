.class public final Lru/okei/timetable/ui/ScheduleState;
.super Ljava/lang/Object;
.source "ScheduleState.java"


# instance fields
.field public fastList:Z

.field public parsedWeek:Lru/okei/timetable/data/WeekSchedule;

.field public rendered:Ljava/lang/String;

.field public revealPending:Z

.field public scrollPending:Z

.field public week:Lru/okei/timetable/data/WeekSchedule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lru/okei/timetable/ui/ScheduleState;->revealPending:Z

    .line 24
    iput-boolean v0, p0, Lru/okei/timetable/ui/ScheduleState;->scrollPending:Z

    return-void
.end method
