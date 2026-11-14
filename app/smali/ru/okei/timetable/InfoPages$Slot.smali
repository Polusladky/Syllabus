.class final Lru/okei/timetable/InfoPages$Slot;
.super Ljava/lang/Object;
.source "InfoPages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/InfoPages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Slot"
.end annotation


# instance fields
.field final end:J

.field final lesson:Lru/okei/timetable/data/Lesson;

.field final number:I

.field final start:J


# direct methods
.method constructor <init>(Lru/okei/timetable/data/Lesson;IJJ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lru/okei/timetable/InfoPages$Slot;->lesson:Lru/okei/timetable/data/Lesson;

    .line 35
    iput p2, p0, Lru/okei/timetable/InfoPages$Slot;->number:I

    .line 36
    iput-wide p3, p0, Lru/okei/timetable/InfoPages$Slot;->start:J

    .line 37
    iput-wide p5, p0, Lru/okei/timetable/InfoPages$Slot;->end:J

    return-void
.end method
