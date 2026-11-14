.class public final Lru/okei/timetable/data/Bells;
.super Ljava/lang/Object;
.source "Bells.java"


# static fields
.field private static final MONDAY:[[I

.field private static final STANDARD:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x6

    new-array v1, v0, [[I

    const/16 v2, 0x8

    const/16 v3, 0x1e

    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 9
    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v6

    aput-object v6, v1, v5

    const/16 v6, 0xb

    const/16 v7, 0x28

    filled-new-array {v4, v4, v6, v7}, [I

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v1, v9

    const/16 v8, 0xc

    const/16 v10, 0xd

    filled-new-array {v8, v5, v10, v3}, [I

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v1, v12

    const/16 v11, 0x37

    const/16 v13, 0xe

    const/16 v14, 0x19

    const/16 v15, 0xf

    filled-new-array {v13, v14, v15, v11}, [I

    move-result-object v11

    const/4 v14, 0x3

    aput-object v11, v1, v14

    const/16 v11, 0x23

    const/16 v14, 0x10

    const/4 v13, 0x5

    const/16 v15, 0x11

    filled-new-array {v14, v13, v15, v11}, [I

    move-result-object v11

    const/4 v14, 0x4

    aput-object v11, v1, v14

    const/16 v11, 0x13

    filled-new-array {v15, v7, v11, v4}, [I

    move-result-object v11

    aput-object v11, v1, v13

    sput-object v1, Lru/okei/timetable/data/Bells;->MONDAY:[[I

    new-array v0, v0, [[I

    .line 17
    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v5

    filled-new-array {v4, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v9

    filled-new-array {v8, v5, v10, v3}, [I

    move-result-object v1

    aput-object v1, v0, v12

    const/16 v1, 0xe

    const/16 v2, 0xf

    filled-new-array {v1, v5, v2, v3}, [I

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    filled-new-array {v2, v7, v15, v4}, [I

    move-result-object v1

    aput-object v1, v0, v14

    const/16 v1, 0x12

    const/16 v3, 0x2d

    filled-new-array {v15, v2, v1, v3}, [I

    move-result-object v1

    aput-object v1, v0, v13

    sput-object v0, Lru/okei/timetable/data/Bells;->STANDARD:[[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static breakAfter(II)I
    .locals 3

    .line 61
    invoke-static {p0, p1}, Lru/okei/timetable/data/Bells;->endOf(II)[I

    move-result-object v0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    .line 62
    invoke-static {p0, p1}, Lru/okei/timetable/data/Bells;->startOf(II)[I

    move-result-object p0

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    aget v2, v0, p1

    mul-int/lit8 v2, v2, 0x3c

    aget v0, v0, v1

    add-int/2addr v2, v0

    .line 67
    aget v0, p0, p1

    mul-int/lit8 v0, v0, 0x3c

    aget p0, p0, v1

    add-int/2addr v0, p0

    sub-int/2addr v0, v2

    .line 68
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public static endCalendar(IILjava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .line 72
    invoke-static {p0, p1}, Lru/okei/timetable/data/Bells;->endOf(II)[I

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    const/16 p2, 0xb

    const/4 v0, 0x0

    .line 77
    aget v1, p0, v0

    invoke-virtual {p1, p2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x1

    .line 78
    aget p0, p0, p2

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 79
    invoke-virtual {p1, p0, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 80
    invoke-virtual {p1, p0, v0}, Ljava/util/Calendar;->set(II)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static endOf(II)[I
    .locals 1

    .line 42
    invoke-static {p0, p1}, Lru/okei/timetable/data/Bells;->row(II)[I

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 43
    aget p1, p0, p1

    const/4 v0, 0x3

    aget p0, p0, v0

    filled-new-array {p1, p0}, [I

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static rangeOf(II)Ljava/lang/String;
    .locals 3

    .line 52
    invoke-static {p0, p1}, Lru/okei/timetable/data/Bells;->startOf(II)[I

    move-result-object v0

    .line 53
    invoke-static {p0, p1}, Lru/okei/timetable/data/Bells;->endOf(II)[I

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 57
    aget v1, v0, p1

    invoke-static {v1}, Lru/okei/timetable/data/Bells;->two(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Lru/okei/timetable/data/Bells;->two(I)Ljava/lang/String;

    move-result-object v0

    aget p1, p0, p1

    invoke-static {p1}, Lru/okei/timetable/data/Bells;->two(I)Ljava/lang/String;

    move-result-object p1

    aget p0, p0, v2

    invoke-static {p0}, Lru/okei/timetable/data/Bells;->two(I)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u2014 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static row(II)[I
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/4 v1, 0x6

    if-le p1, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p0, :cond_1

    .line 33
    sget-object p0, Lru/okei/timetable/data/Bells;->MONDAY:[[I

    goto :goto_0

    :cond_1
    sget-object p0, Lru/okei/timetable/data/Bells;->STANDARD:[[I

    :goto_0
    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static startCalendar(IILjava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .line 85
    invoke-static {p0, p1}, Lru/okei/timetable/data/Bells;->startOf(II)[I

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    const/16 p2, 0xb

    const/4 v0, 0x0

    .line 90
    aget v1, p0, v0

    invoke-virtual {p1, p2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x1

    .line 91
    aget p0, p0, p2

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 92
    invoke-virtual {p1, p0, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 93
    invoke-virtual {p1, p0, v0}, Ljava/util/Calendar;->set(II)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static startOf(II)[I
    .locals 1

    .line 37
    invoke-static {p0, p1}, Lru/okei/timetable/data/Bells;->row(II)[I

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 38
    aget p1, p0, p1

    const/4 v0, 0x1

    aget p0, p0, v0

    filled-new-array {p1, p0}, [I

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static timeOf(II)Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {p0, p1}, Lru/okei/timetable/data/Bells;->startOf(II)[I

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 48
    aget p1, p0, p1

    invoke-static {p1}, Lru/okei/timetable/data/Bells;->two(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget p0, p0, v0

    invoke-static {p0}, Lru/okei/timetable/data/Bells;->two(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static two(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
