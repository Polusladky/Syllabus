.class public final Lru/okei/timetable/data/ParserHealth$Report;
.super Ljava/lang/Object;
.source "ParserHealth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/data/ParserHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Report"
.end annotation


# instance fields
.field final doubt:Ljava/lang/String;

.field final parsed:I

.field final rows:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lru/okei/timetable/data/ParserHealth$Report;->rows:I

    .line 19
    iput p2, p0, Lru/okei/timetable/data/ParserHealth$Report;->parsed:I

    if-nez p3, :cond_0

    const-string p3, ""

    .line 20
    :cond_0
    iput-object p3, p0, Lru/okei/timetable/data/ParserHealth$Report;->doubt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public broken()Z
    .locals 2

    .line 24
    iget-object v0, p0, Lru/okei/timetable/data/ParserHealth$Report;->doubt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lru/okei/timetable/data/ParserHealth$Report;->rows:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget v0, p0, Lru/okei/timetable/data/ParserHealth$Report;->parsed:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public describe()Ljava/lang/String;
    .locals 5

    .line 32
    iget-object v0, p0, Lru/okei/timetable/data/ParserHealth$Report;->doubt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lru/okei/timetable/data/ParserHealth$Report;->doubt:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0421\u0442\u0440\u043e\u043a \u043d\u0435 \u044f\u0441\u043d\u043e: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lru/okei/timetable/data/ParserHealth$Report;->broken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget v0, p0, Lru/okei/timetable/data/ParserHealth$Report;->rows:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u041e\u0448\u0438\u0431\u043a\u0430: \u0432 \u0442\u0430\u0431\u043b\u0438\u0446\u0435 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u0441\u0442\u0440\u043e\u043a, \u0440\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u043d\u043e 0 \u0438 \u043d\u0438 \u043e\u0434\u043d\u043e\u0433\u043e \u043f\u0440\u0435\u0434\u043c\u0435\u0442\u0430"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lru/okei/timetable/data/ParserHealth$Report;->suspicious()Z

    move-result v0

    const-string v1, ", \u0440\u0430\u0441\u043f\u043e\u0437\u043d\u0430\u043d\u043e "

    const-string v2, "\u041e\u0448\u0438\u0431\u043a\u0430: \u0432\u0441\u0435\u0433\u043e "

    if-eqz v0, :cond_2

    .line 39
    iget v0, p0, Lru/okei/timetable/data/ParserHealth$Report;->rows:I

    iget v3, p0, Lru/okei/timetable/data/ParserHealth$Report;->parsed:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u2014 \u043c\u0430\u043b\u043e \u043f\u0430\u0440"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :cond_2
    iget v0, p0, Lru/okei/timetable/data/ParserHealth$Report;->rows:I

    iget v3, p0, Lru/okei/timetable/data/ParserHealth$Report;->parsed:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public suspicious()Z
    .locals 2

    .line 28
    iget v0, p0, Lru/okei/timetable/data/ParserHealth$Report;->rows:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget v1, p0, Lru/okei/timetable/data/ParserHealth$Report;->parsed:I

    if-lez v1, :cond_0

    mul-int/lit8 v1, v1, 0x2

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
