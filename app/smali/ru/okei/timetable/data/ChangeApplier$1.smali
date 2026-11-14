.class Lru/okei/timetable/data/ChangeApplier$1;
.super Ljava/lang/Object;
.source "ChangeApplier.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/data/ChangeApplier;->sortByPair(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lru/okei/timetable/data/Lesson;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 77
    check-cast p1, Lru/okei/timetable/data/Lesson;

    check-cast p2, Lru/okei/timetable/data/Lesson;

    invoke-virtual {p0, p1, p2}, Lru/okei/timetable/data/ChangeApplier$1;->compare(Lru/okei/timetable/data/Lesson;Lru/okei/timetable/data/Lesson;)I

    move-result p1

    return p1
.end method

.method public compare(Lru/okei/timetable/data/Lesson;Lru/okei/timetable/data/Lesson;)I
    .locals 0

    .line 80
    invoke-static {p1}, Lru/okei/timetable/data/ChangeApplier;->-$$Nest$smpairNumber(Lru/okei/timetable/data/Lesson;)I

    move-result p1

    invoke-static {p2}, Lru/okei/timetable/data/ChangeApplier;->-$$Nest$smpairNumber(Lru/okei/timetable/data/Lesson;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
