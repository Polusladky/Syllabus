.class final Lru/okei/timetable/MainActivity$BreakView;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BreakView"
.end annotation


# instance fields
.field final end:J

.field final label:Ljava/lang/String;

.field final start:J

.field final view:Lru/okei/timetable/ui/BreakRule;


# direct methods
.method constructor <init>(Lru/okei/timetable/ui/BreakRule;JJLjava/lang/String;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lru/okei/timetable/MainActivity$BreakView;->view:Lru/okei/timetable/ui/BreakRule;

    .line 155
    iput-wide p2, p0, Lru/okei/timetable/MainActivity$BreakView;->start:J

    .line 156
    iput-wide p4, p0, Lru/okei/timetable/MainActivity$BreakView;->end:J

    .line 157
    iput-object p6, p0, Lru/okei/timetable/MainActivity$BreakView;->label:Ljava/lang/String;

    return-void
.end method
