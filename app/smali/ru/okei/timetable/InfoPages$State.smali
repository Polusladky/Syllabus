.class final Lru/okei/timetable/InfoPages$State;
.super Ljava/lang/Object;
.source "InfoPages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/InfoPages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation


# instance fields
.field final dayIndex:I

.field final kind:I

.field final next:Lru/okei/timetable/InfoPages$Slot;

.field final now:J

.field final pairCount:I

.field final previous:Lru/okei/timetable/InfoPages$Slot;

.field final running:Lru/okei/timetable/InfoPages$Slot;

.field final slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/okei/timetable/InfoPages$Slot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IIIJLru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;Lru/okei/timetable/InfoPages$Slot;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJ",
            "Lru/okei/timetable/InfoPages$Slot;",
            "Lru/okei/timetable/InfoPages$Slot;",
            "Lru/okei/timetable/InfoPages$Slot;",
            "Ljava/util/List<",
            "Lru/okei/timetable/InfoPages$Slot;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lru/okei/timetable/InfoPages$State;->kind:I

    .line 55
    iput p2, p0, Lru/okei/timetable/InfoPages$State;->dayIndex:I

    .line 56
    iput p3, p0, Lru/okei/timetable/InfoPages$State;->pairCount:I

    .line 57
    iput-wide p4, p0, Lru/okei/timetable/InfoPages$State;->now:J

    .line 58
    iput-object p6, p0, Lru/okei/timetable/InfoPages$State;->running:Lru/okei/timetable/InfoPages$Slot;

    .line 59
    iput-object p7, p0, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    .line 60
    iput-object p8, p0, Lru/okei/timetable/InfoPages$State;->previous:Lru/okei/timetable/InfoPages$Slot;

    .line 61
    iput-object p9, p0, Lru/okei/timetable/InfoPages$State;->slots:Ljava/util/List;

    return-void
.end method


# virtual methods
.method breakMinutes()J
    .locals 7

    .line 79
    iget-object v0, p0, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lru/okei/timetable/InfoPages$State;->previous:Lru/okei/timetable/InfoPages$Slot;

    if-nez v3, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-wide v3, v0, Lru/okei/timetable/InfoPages$Slot;->start:J

    iget-object v0, p0, Lru/okei/timetable/InfoPages$State;->previous:Lru/okei/timetable/InfoPages$Slot;

    iget-wide v5, v0, Lru/okei/timetable/InfoPages$Slot;->end:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xea60

    div-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    return-wide v1
.end method

.method leftUntil()J
    .locals 6

    .line 65
    iget v0, p0, Lru/okei/timetable/InfoPages$State;->kind:I

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lru/okei/timetable/InfoPages$State;->running:Lru/okei/timetable/InfoPages$Slot;

    if-eqz v1, :cond_0

    .line 66
    iget-wide v0, v1, Lru/okei/timetable/InfoPages$Slot;->end:J

    iget-wide v4, p0, Lru/okei/timetable/InfoPages$State;->now:J

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 68
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    if-eqz v0, :cond_2

    .line 69
    iget-wide v0, v0, Lru/okei/timetable/InfoPages$Slot;->start:J

    iget-wide v4, p0, Lru/okei/timetable/InfoPages$State;->now:J

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide v2
.end method

.method untilNext()J
    .locals 7

    .line 75
    iget-object v0, p0, Lru/okei/timetable/InfoPages$State;->next:Lru/okei/timetable/InfoPages$Slot;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Lru/okei/timetable/InfoPages$Slot;->start:J

    iget-wide v5, p0, Lru/okei/timetable/InfoPages$State;->now:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method
