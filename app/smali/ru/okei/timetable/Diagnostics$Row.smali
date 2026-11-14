.class final Lru/okei/timetable/Diagnostics$Row;
.super Ljava/lang/Object;
.source "Diagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/Diagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Row"
.end annotation


# instance fields
.field final action:Ljava/lang/String;

.field final good:Z

.field final label:Ljava/lang/String;

.field final section:Ljava/lang/String;

.field final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lru/okei/timetable/Diagnostics$Row;->section:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lru/okei/timetable/Diagnostics$Row;->label:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lru/okei/timetable/Diagnostics$Row;->value:Ljava/lang/String;

    .line 43
    iput-boolean p4, p0, Lru/okei/timetable/Diagnostics$Row;->good:Z

    .line 44
    iput-object p5, p0, Lru/okei/timetable/Diagnostics$Row;->action:Ljava/lang/String;

    return-void
.end method
