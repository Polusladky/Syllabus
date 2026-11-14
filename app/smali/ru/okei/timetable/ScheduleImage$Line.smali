.class final Lru/okei/timetable/ScheduleImage$Line;
.super Ljava/lang/Object;
.source "ScheduleImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/ScheduleImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Line"
.end annotation


# instance fields
.field final bold:Z

.field final color:I

.field final gap:I

.field final indent:I

.field final size:I

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IIZII)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lru/okei/timetable/ScheduleImage$Line;->text:Ljava/lang/String;

    .line 39
    iput p2, p0, Lru/okei/timetable/ScheduleImage$Line;->size:I

    .line 40
    iput p3, p0, Lru/okei/timetable/ScheduleImage$Line;->color:I

    .line 41
    iput-boolean p4, p0, Lru/okei/timetable/ScheduleImage$Line;->bold:Z

    .line 42
    iput p5, p0, Lru/okei/timetable/ScheduleImage$Line;->indent:I

    .line 43
    iput p6, p0, Lru/okei/timetable/ScheduleImage$Line;->gap:I

    return-void
.end method
