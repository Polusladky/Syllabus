.class public final Lru/okei/timetable/data/BackupRules;
.super Ljava/lang/Object;
.source "BackupRules.java"


# static fields
.field public static final COUNT_MAX:I = 0xa

.field public static final COUNT_MIN:I = 0x1

.field public static final FUTURE_VERSION:I = 0x2

.field public static final LEAD_MAX:I = 0x168

.field public static final LEAD_MIN:I = 0x0

.field public static final OK:I = 0x0

.field public static final REMIND_MAX:I = 0x78

.field public static final REMIND_MIN:I = 0x0

.field public static final STEP_MAX:I = 0x3c

.field public static final STEP_MIN:I = 0x1

.field public static final WRONG_APP:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Ljava/lang/String;II)I
    .locals 1

    const-string v0, "oksei-schedule"

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method
