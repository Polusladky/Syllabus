.class public final Lru/okei/timetable/data/Change;
.super Ljava/lang/Object;
.source "Change.java"


# static fields
.field public static final CANCEL:I = 0x0

.field public static final DAY_LESSON:I = 0x4

.field public static final DAY_RESET:I = 0x3

.field public static final REPLACE:I = 0x1

.field public static final ROOM:I = 0x2


# instance fields
.field public final at:J

.field public final day:I

.field public final kind:I

.field public final pair:I

.field public final room:Ljava/lang/String;

.field public final source:Ljava/lang/String;

.field public final subject:Ljava/lang/String;

.field public final teacher:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10

    const-string v9, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    .line 27
    invoke-direct/range {v0 .. v9}, Lru/okei/timetable/data/Change;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    if-nez p9, :cond_0

    move-object p9, v0

    .line 32
    :cond_0
    iput-object p9, p0, Lru/okei/timetable/data/Change;->source:Ljava/lang/String;

    .line 33
    iput p1, p0, Lru/okei/timetable/data/Change;->day:I

    .line 34
    iput p2, p0, Lru/okei/timetable/data/Change;->pair:I

    .line 35
    iput p3, p0, Lru/okei/timetable/data/Change;->kind:I

    if-nez p4, :cond_1

    move-object p4, v0

    .line 36
    :cond_1
    iput-object p4, p0, Lru/okei/timetable/data/Change;->subject:Ljava/lang/String;

    if-nez p5, :cond_2

    move-object p5, v0

    .line 37
    :cond_2
    iput-object p5, p0, Lru/okei/timetable/data/Change;->teacher:Ljava/lang/String;

    if-nez p6, :cond_3

    move-object p6, v0

    .line 38
    :cond_3
    iput-object p6, p0, Lru/okei/timetable/data/Change;->room:Ljava/lang/String;

    .line 39
    iput-wide p7, p0, Lru/okei/timetable/data/Change;->at:J

    return-void
.end method

.method public static shortName(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "\u0421\u0411"

    return-object p0

    :cond_1
    const-string p0, "\u041f\u0422"

    return-object p0

    :cond_2
    const-string p0, "\u0427\u0422"

    return-object p0

    :cond_3
    const-string p0, "\u0421\u0420"

    return-object p0

    :cond_4
    const-string p0, "\u0412\u0422"

    return-object p0

    :cond_5
    const-string p0, "\u041f\u041d"

    return-object p0
.end method

.method private static shorten(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x17

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u2026"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 3

    .line 43
    iget v0, p0, Lru/okei/timetable/data/Change;->day:I

    invoke-static {v0}, Lru/okei/timetable/data/Change;->shortName(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lru/okei/timetable/data/Change;->pair:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u041f\u0410\u0420\u0410 \u2192 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget v1, p0, Lru/okei/timetable/data/Change;->kind:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 45
    iget v0, p0, Lru/okei/timetable/data/Change;->day:I

    invoke-static {v0}, Lru/okei/timetable/data/Change;->shortName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 \u0414\u0415\u041d\u042c \u0417\u0410\u041c\u0415\u041d\u0401\u041d"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 48
    iget-object v1, p0, Lru/okei/timetable/data/Change;->subject:Ljava/lang/String;

    invoke-static {v1}, Lru/okei/timetable/data/Change;->shorten(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v1, :cond_2

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u041e\u0422\u041c\u0415\u041d\u0410"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :cond_2
    iget-object v1, p0, Lru/okei/timetable/data/Change;->room:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 54
    iget-object v1, p0, Lru/okei/timetable/data/Change;->room:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u0410\u0423\u0414. "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :cond_3
    iget-object v1, p0, Lru/okei/timetable/data/Change;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 57
    iget-object v1, p0, Lru/okei/timetable/data/Change;->subject:Ljava/lang/String;

    invoke-static {v1}, Lru/okei/timetable/data/Change;->shorten(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u0418\u0417\u041c\u0415\u041d\u0415\u041d\u0418\u0415"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
