.class public final Lru/okei/timetable/data/DaySchedule;
.super Ljava/lang/Object;
.source "DaySchedule.java"


# instance fields
.field public final index:I

.field public final lessons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/okei/timetable/data/Lesson;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lru/okei/timetable/data/Lesson;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lru/okei/timetable/data/DaySchedule;->name:Ljava/lang/String;

    .line 18
    iput p2, p0, Lru/okei/timetable/data/DaySchedule;->index:I

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
