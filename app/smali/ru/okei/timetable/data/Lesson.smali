.class public final Lru/okei/timetable/data/Lesson;
.super Ljava/lang/Object;
.source "Lesson.java"


# instance fields
.field public final changed:Z

.field public final number:Ljava/lang/String;

.field public final room:Ljava/lang/String;

.field public final subject:Ljava/lang/String;

.field public final teacher:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 18
    invoke-direct/range {v0 .. v5}, Lru/okei/timetable/data/Lesson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 22
    :cond_0
    iput-object p1, p0, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v0

    .line 23
    :cond_1
    iput-object p2, p0, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    if-nez p3, :cond_2

    move-object p3, v0

    .line 24
    :cond_2
    iput-object p3, p0, Lru/okei/timetable/data/Lesson;->teacher:Ljava/lang/String;

    if-nez p4, :cond_3

    move-object p4, v0

    .line 25
    :cond_3
    iput-object p4, p0, Lru/okei/timetable/data/Lesson;->room:Ljava/lang/String;

    .line 26
    iput-boolean p5, p0, Lru/okei/timetable/data/Lesson;->changed:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .line 35
    iget-object v0, p0, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    iget-object v2, p0, Lru/okei/timetable/data/Lesson;->teacher:Ljava/lang/String;

    iget-object v3, p0, Lru/okei/timetable/data/Lesson;->room:Ljava/lang/String;

    .line 36
    iget-boolean v4, p0, Lru/okei/timetable/data/Lesson;->changed:Z

    if-eqz v4, :cond_1

    const-string v4, " *"

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withChanged(Z)Lru/okei/timetable/data/Lesson;
    .locals 7

    .line 30
    new-instance v6, Lru/okei/timetable/data/Lesson;

    iget-object v1, p0, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    iget-object v2, p0, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    iget-object v3, p0, Lru/okei/timetable/data/Lesson;->teacher:Ljava/lang/String;

    iget-object v4, p0, Lru/okei/timetable/data/Lesson;->room:Ljava/lang/String;

    move-object v0, v6

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lru/okei/timetable/data/Lesson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method
