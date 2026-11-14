.class public final Lru/okei/timetable/data/XlsTable;
.super Ljava/lang/Object;
.source "XlsTable.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static floor(D)Ljava/lang/String;
    .locals 3

    .line 130
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    double-to-long p0, p0

    .line 131
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 133
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasMore(Ljava/util/List;[II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;[II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 213
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 214
    aget p1, p1, v2

    :goto_0
    if-lez p2, :cond_1

    .line 215
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 216
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    sub-int/2addr v3, p1

    if-lt v3, p2, :cond_0

    return v2

    :cond_0
    sub-int/2addr p2, v3

    add-int/lit8 v1, v1, 0x1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-gtz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static i32([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x4

    .line 363
    array-length v1, p0

    if-gt v0, v1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static join(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 343
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 344
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 346
    :cond_0
    new-array v0, v2, [B

    .line 348
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 349
    array-length v4, v3

    invoke-static {v3, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private static number(I)Ljava/lang/String;
    .locals 6

    and-int/lit8 v0, p0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    if-eqz v0, :cond_1

    shr-int/lit8 v0, p0, 0x2

    and-int/2addr p0, v1

    int-to-double v0, v0

    if-eqz p0, :cond_3

    div-double/2addr v0, v2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, p0, -0x4

    int-to-long v4, v0

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    .line 144
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    and-int/2addr p0, v1

    if-eqz p0, :cond_2

    div-double v0, v4, v2

    goto :goto_1

    :cond_2
    move-wide v0, v4

    .line 149
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Lru/okei/timetable/data/XlsTable;->floor(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static put(Ljava/util/List;IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 123
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static read([B)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/data/XlsTable;->workbookStream([B)[B

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    .line 25
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    add-int/lit8 v7, v6, 0x4

    .line 28
    array-length v8, v2

    if-gt v7, v8, :cond_2

    .line 29
    invoke-static {v2, v6}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v8

    add-int/lit8 v9, v6, 0x2

    .line 30
    invoke-static {v2, v9}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v9

    add-int v10, v7, v9

    .line 31
    array-length v11, v2

    if-le v10, v11, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    new-array v10, v9, [B

    .line 35
    invoke-static {v2, v7, v10, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    filled-new-array {v8}, [I

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x4

    add-int/2addr v6, v9

    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 42
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_5

    .line 43
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v5

    const/16 v9, 0xfc

    if-eq v7, v9, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 46
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v8

    .line 49
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_4

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    aget v9, v9, v5

    const/16 v10, 0x3c

    if-ne v9, v10, :cond_4

    .line 50
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 53
    :cond_4
    invoke-static {v7}, Lru/okei/timetable/data/XlsTable;->readSst(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const/4 v6, 0x0

    .line 57
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x2

    if-ge v6, v7, :cond_f

    .line 58
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v5

    .line 59
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/16 v11, 0xfd

    const/16 v12, 0xa

    const/4 v13, 0x6

    if-ne v7, v11, :cond_7

    .line 60
    array-length v11, v10

    if-lt v11, v12, :cond_7

    .line 61
    invoke-static {v10, v5}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v7

    .line 62
    invoke-static {v10, v9}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v9

    .line 63
    invoke-static {v10, v13}, Lru/okei/timetable/data/XlsTable;->i32([BI)I

    move-result v10

    if-ltz v10, :cond_6

    .line 64
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_5

    :cond_6
    const-string v10, ""

    :goto_5
    invoke-static {v0, v7, v9, v10}, Lru/okei/timetable/data/XlsTable;->put(Ljava/util/List;IILjava/lang/String;)V

    goto/16 :goto_9

    :cond_7
    const/16 v11, 0x27e

    if-ne v7, v11, :cond_8

    .line 65
    array-length v11, v10

    if-lt v11, v12, :cond_8

    .line 66
    invoke-static {v10, v5}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v7

    .line 67
    invoke-static {v10, v9}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v9

    .line 68
    invoke-static {v10, v13}, Lru/okei/timetable/data/XlsTable;->i32([BI)I

    move-result v10

    invoke-static {v10}, Lru/okei/timetable/data/XlsTable;->number(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v7, v9, v10}, Lru/okei/timetable/data/XlsTable;->put(Ljava/util/List;IILjava/lang/String;)V

    goto/16 :goto_9

    :cond_8
    const/16 v11, 0xbd

    if-ne v7, v11, :cond_a

    .line 69
    array-length v11, v10

    if-lt v11, v13, :cond_a

    .line 70
    invoke-static {v10, v5}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v7

    .line 71
    invoke-static {v10, v9}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v9

    .line 72
    array-length v11, v10

    sub-int/2addr v11, v13

    div-int/2addr v11, v13

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v11, :cond_e

    mul-int/lit8 v13, v12, 0x6

    add-int/lit8 v13, v13, 0x4

    add-int/lit8 v14, v13, 0x4

    .line 75
    array-length v15, v10

    if-le v14, v15, :cond_9

    goto/16 :goto_9

    :cond_9
    add-int v14, v9, v12

    .line 78
    invoke-static {v10, v13}, Lru/okei/timetable/data/XlsTable;->i32([BI)I

    move-result v13

    invoke-static {v13}, Lru/okei/timetable/data/XlsTable;->number(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v7, v14, v13}, Lru/okei/timetable/data/XlsTable;->put(Ljava/util/List;IILjava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_a
    const/16 v11, 0xe5

    if-ne v7, v11, :cond_c

    .line 80
    array-length v11, v10

    if-lt v11, v9, :cond_c

    .line 81
    invoke-static {v10, v5}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v7

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v7, :cond_e

    mul-int/lit8 v12, v11, 0x8

    add-int/2addr v12, v9

    add-int/lit8 v13, v12, 0x8

    .line 84
    array-length v14, v10

    if-le v13, v14, :cond_b

    goto :goto_9

    .line 87
    :cond_b
    invoke-static {v10, v12}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v13

    add-int/lit8 v14, v12, 0x2

    invoke-static {v10, v14}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v14

    add-int/lit8 v15, v12, 0x4

    .line 88
    invoke-static {v10, v15}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v15

    add-int/lit8 v12, v12, 0x6

    invoke-static {v10, v12}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v12

    filled-new-array {v13, v14, v15, v12}, [I

    move-result-object v12

    .line 87
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_c
    const/16 v11, 0x203

    if-ne v7, v11, :cond_e

    .line 90
    array-length v7, v10

    const/16 v11, 0xe

    if-lt v7, v11, :cond_e

    .line 91
    invoke-static {v10, v5}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v7

    .line 92
    invoke-static {v10, v9}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v9

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    :goto_8
    const/16 v14, 0x8

    if-ge v13, v14, :cond_d

    add-int/lit8 v14, v13, 0x6

    .line 95
    aget-byte v14, v10, v14

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    mul-int/lit8 v16, v13, 0x8

    shl-long v14, v14, v16

    or-long/2addr v11, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 97
    :cond_d
    invoke-static {v11, v12}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v10

    .line 98
    invoke-static {v10, v11}, Lru/okei/timetable/data/XlsTable;->floor(D)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v7, v9, v10}, Lru/okei/timetable/data/XlsTable;->put(Ljava/util/List;IILjava/lang/String;)V

    :cond_e
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_f
    const/4 v2, 0x0

    .line 101
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_16

    .line 102
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 103
    aget v4, v3, v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_10

    goto :goto_d

    .line 106
    :cond_10
    aget v4, v3, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    aget v6, v3, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 107
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_d

    .line 110
    :cond_11
    aget v6, v3, v5

    :goto_b
    aget v7, v3, v8

    if-gt v6, v7, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_15

    .line 111
    aget v7, v3, v9

    :goto_c
    const/4 v10, 0x3

    aget v10, v3, v10

    if-gt v7, v10, :cond_14

    .line 112
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_12

    .line 113
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 114
    :cond_12
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_15
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    return-object v0
.end method

.method private static readByte(Ljava/util/List;[I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;[I)I"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    .line 242
    aget v1, p1, v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    aget v1, p1, v3

    aget v2, p1, v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 243
    aget v1, p1, v0

    add-int/2addr v1, v3

    aput v1, p1, v0

    .line 244
    aput v0, p1, v3

    goto :goto_0

    .line 246
    :cond_0
    aget v1, p1, v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    return v0

    .line 249
    :cond_1
    aget v0, p1, v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    aget v0, p1, v3

    add-int/lit8 v1, v0, 0x1

    aput v1, p1, v3

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static readInt(Ljava/util/List;[II)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;[II)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 259
    invoke-static {p0, p1}, Lru/okei/timetable/data/XlsTable;->readByte(Ljava/util/List;[I)I

    move-result v2

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static readShort(Ljava/util/List;[I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;[I)I"
        }
    .end annotation

    .line 253
    invoke-static {p0, p1}, Lru/okei/timetable/data/XlsTable;->readByte(Ljava/util/List;[I)I

    move-result v0

    invoke-static {p0, p1}, Lru/okei/timetable/data/XlsTable;->readByte(Ljava/util/List;[I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method private static readSst(Ljava/util/List;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 157
    filled-new-array {v2, v2}, [I

    move-result-object v3

    const/4 v4, 0x4

    .line 158
    invoke-static {v0, v3, v4}, Lru/okei/timetable/data/XlsTable;->readInt(Ljava/util/List;[II)I

    move-result v5

    .line 159
    invoke-static {v0, v3, v4}, Lru/okei/timetable/data/XlsTable;->readInt(Ljava/util/List;[II)I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_e

    const/4 v7, 0x3

    .line 161
    invoke-static {v0, v3, v7}, Lru/okei/timetable/data/XlsTable;->hasMore(Ljava/util/List;[II)Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_a

    .line 164
    :cond_1
    invoke-static {v0, v3}, Lru/okei/timetable/data/XlsTable;->readShort(Ljava/util/List;[I)I

    move-result v7

    .line 165
    invoke-static {v0, v3}, Lru/okei/timetable/data/XlsTable;->readByte(Ljava/util/List;[I)I

    move-result v8

    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_2

    .line 166
    invoke-static {v0, v3}, Lru/okei/timetable/data/XlsTable;->readShort(Ljava/util/List;[I)I

    move-result v9

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    and-int/lit8 v10, v8, 0x4

    if-eqz v10, :cond_3

    .line 167
    invoke-static {v0, v3, v4}, Lru/okei/timetable/data/XlsTable;->readInt(Ljava/util/List;[II)I

    move-result v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    goto :goto_2

    :cond_3
    const-wide/16 v10, 0x0

    :goto_2
    and-int/lit8 v8, v8, 0x1

    const/4 v12, 0x1

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    .line 169
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    if-lez v7, :cond_d

    .line 172
    aget v14, v3, v2

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 173
    aget v15, v3, v12

    array-length v4, v14

    if-lt v15, v4, :cond_7

    .line 174
    aget v4, v3, v2

    add-int/2addr v4, v12

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    if-lt v4, v8, :cond_5

    goto/16 :goto_9

    .line 177
    :cond_5
    aget v4, v3, v2

    add-int/2addr v4, v12

    aput v4, v3, v2

    .line 178
    aput v2, v3, v12

    .line 179
    invoke-static {v0, v3}, Lru/okei/timetable/data/XlsTable;->readByte(Ljava/util/List;[I)I

    move-result v4

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    const/4 v4, 0x4

    goto :goto_4

    :cond_7
    if-eqz v8, :cond_8

    const/4 v4, 0x2

    goto :goto_6

    :cond_8
    const/4 v4, 0x1

    .line 183
    :goto_6
    array-length v12, v14

    sub-int/2addr v12, v15

    div-int/2addr v12, v4

    .line 184
    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-gtz v12, :cond_b

    .line 186
    aget v4, v3, v2

    const/4 v15, 0x1

    add-int/2addr v4, v15

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    if-lt v4, v8, :cond_9

    goto :goto_9

    .line 189
    :cond_9
    aget v4, v3, v2

    add-int/2addr v4, v15

    aput v4, v3, v2

    .line 190
    aput v2, v3, v15

    .line 191
    invoke-static {v0, v3}, Lru/okei/timetable/data/XlsTable;->readByte(Ljava/util/List;[I)I

    move-result v4

    and-int/2addr v4, v15

    if-eqz v4, :cond_a

    const/4 v8, 0x1

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    goto :goto_8

    :cond_b
    const/4 v15, 0x1

    .line 194
    aget v2, v3, v15

    if-eqz v8, :cond_c

    .line 196
    new-instance v15, Ljava/lang/String;

    move/from16 v16, v5

    mul-int/lit8 v5, v12, 0x2

    const-string v17, "UTF-16LE"

    move/from16 v18, v8

    .line 197
    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v15, v14, v2, v5, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 196
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_c
    move/from16 v16, v5

    move/from16 v18, v8

    .line 199
    new-instance v5, Ljava/lang/String;

    const-string v8, "windows-1251"

    .line 200
    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v5, v14, v2, v12, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 199
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    const/4 v2, 0x1

    .line 202
    aget v5, v3, v2

    mul-int v4, v4, v12

    add-int/2addr v5, v4

    aput v5, v3, v2

    sub-int/2addr v7, v12

    move/from16 v5, v16

    move/from16 v8, v18

    const/4 v2, 0x0

    :goto_8
    const/4 v4, 0x4

    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_d
    :goto_9
    move/from16 v16, v5

    .line 205
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-long v4, v9

    const-wide/16 v7, 0x4

    mul-long v4, v4, v7

    .line 206
    invoke-static {v0, v3, v4, v5}, Lru/okei/timetable/data/XlsTable;->skip(Ljava/util/List;[IJ)V

    .line 207
    invoke-static {v0, v3, v10, v11}, Lru/okei/timetable/data/XlsTable;->skip(Ljava/util/List;[IJ)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v16

    const/4 v2, 0x0

    const/4 v4, 0x4

    goto/16 :goto_0

    :cond_e
    :goto_a
    return-object v1
.end method

.method private static skip(Ljava/util/List;[IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;[IJ)V"
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    const/4 v0, 0x0

    .line 228
    aget v1, p1, v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 229
    aget v1, p1, v0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    const/4 v2, 0x1

    aget v3, p1, v2

    sub-int/2addr v1, v3

    if-gtz v1, :cond_0

    .line 231
    aget v1, p1, v0

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 232
    aput v0, p1, v2

    goto :goto_0

    :cond_0
    int-to-long v0, v1

    .line 235
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 236
    aget v0, p1, v2

    add-int/2addr v0, v1

    aput v0, p1, v2

    int-to-long v0, v1

    sub-long/2addr p2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static u16([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x2

    .line 356
    array-length v1, p0

    if-gt v0, v1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static workbookStream([B)[B
    .locals 13

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    .line 266
    array-length v1, p0

    const/16 v2, 0x200

    if-ge v1, v2, :cond_0

    goto/16 :goto_9

    :cond_0
    const/16 v1, 0x1e

    .line 269
    invoke-static {p0, v1}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v1

    const/4 v3, 0x1

    shl-int v1, v3, v1

    if-gtz v1, :cond_1

    return-object v0

    :cond_1
    const/16 v3, 0x2c

    .line 273
    invoke-static {p0, v3}, Lru/okei/timetable/data/XlsTable;->i32([BI)I

    move-result v3

    const/16 v4, 0x30

    .line 274
    invoke-static {p0, v4}, Lru/okei/timetable/data/XlsTable;->i32([BI)I

    move-result v4

    const/16 v5, 0x6d

    .line 275
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v5, v3, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_2

    mul-int/lit8 v8, v7, 0x4

    add-int/lit8 v8, v8, 0x4c

    .line 277
    invoke-static {p0, v8}, Lru/okei/timetable/data/XlsTable;->i32([BI)I

    move-result v8

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 279
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_4

    .line 281
    aget v9, v5, v8

    if-ltz v9, :cond_3

    .line 282
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 285
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 286
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 287
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int v8, v8, v1

    add-int/2addr v8, v2

    const/4 v9, 0x0

    :goto_3
    add-int/lit8 v10, v9, 0x4

    if-gt v10, v1, :cond_5

    add-int/2addr v9, v8

    add-int/lit8 v11, v9, 0x4

    .line 288
    array-length v12, p0

    if-gt v11, v12, :cond_5

    .line 289
    invoke-static {p0, v9}, Lru/okei/timetable/data/XlsTable;->i32([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v9, v10

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 292
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_4
    const v8, 0x186a0

    if-ltz v4, :cond_8

    .line 295
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_8

    if-ge v7, v8, :cond_8

    mul-int v9, v4, v1

    add-int/2addr v9, v2

    .line 297
    array-length v10, p0

    if-lt v9, v10, :cond_7

    goto :goto_5

    .line 300
    :cond_7
    new-array v8, v1, [B

    .line 301
    array-length v10, p0

    sub-int/2addr v10, v9

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {p0, v9, v8, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 306
    :cond_8
    :goto_5
    invoke-static {v5}, Lru/okei/timetable/data/XlsTable;->join(Ljava/util/List;)[B

    move-result-object v4

    const/4 v5, 0x0

    :goto_6
    add-int/lit16 v7, v5, 0x80

    .line 307
    array-length v9, v4

    if-gt v7, v9, :cond_d

    add-int/lit8 v9, v5, 0x40

    .line 308
    invoke-static {v4, v9}, Lru/okei/timetable/data/XlsTable;->u16([BI)I

    move-result v9

    .line 309
    new-instance v10, Ljava/lang/String;

    add-int/lit8 v9, v9, -0x2

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    const-string v11, "UTF-16LE"

    .line 310
    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v10, v4, v5, v9, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v9, "Workbook"

    .line 311
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "Book"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    move v5, v7

    goto :goto_6

    :cond_9
    add-int/lit8 v0, v5, 0x74

    .line 314
    invoke-static {v4, v0}, Lru/okei/timetable/data/XlsTable;->i32([BI)I

    move-result v0

    add-int/lit8 v5, v5, 0x78

    .line 315
    invoke-static {v4, v5}, Lru/okei/timetable/data/XlsTable;->i32([BI)I

    move-result v4

    .line 316
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_7
    if-ltz v0, :cond_b

    .line 319
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_b

    if-ge v7, v8, :cond_b

    mul-int v9, v0, v1

    add-int/2addr v9, v2

    .line 321
    array-length v10, p0

    if-lt v9, v10, :cond_a

    goto :goto_8

    .line 324
    :cond_a
    new-array v10, v1, [B

    .line 325
    array-length v11, p0

    sub-int/2addr v11, v9

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {p0, v9, v10, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 330
    :cond_b
    :goto_8
    invoke-static {v5}, Lru/okei/timetable/data/XlsTable;->join(Ljava/util/List;)[B

    move-result-object p0

    if-lez v4, :cond_c

    .line 331
    array-length v0, p0

    if-ge v4, v0, :cond_c

    .line 332
    new-array v0, v4, [B

    .line 333
    invoke-static {p0, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_c
    return-object p0

    :cond_d
    :goto_9
    return-object v0
.end method
