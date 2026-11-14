.class public final Lru/okei/timetable/data/Formats;
.super Ljava/lang/Object;
.source "Formats.java"


# static fields
.field private static final DATE:Ljava/text/SimpleDateFormat;

.field private static final DAY:Ljava/text/SimpleDateFormat;

.field private static final RU:Ljava/util/Locale;

.field private static final TIME:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ru"

    const-string v2, "RU"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lru/okei/timetable/data/Formats;->RU:Ljava/util/Locale;

    .line 19
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lru/okei/timetable/data/Formats;->TIME:Ljava/text/SimpleDateFormat;

    .line 20
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd.MM"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lru/okei/timetable/data/Formats;->DAY:Ljava/text/SimpleDateFormat;

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lru/okei/timetable/data/Formats;->DATE:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static date(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 39
    sget-object v0, Lru/okei/timetable/data/Formats;->DATE:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    .line 41
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Formats"

    .line 43
    invoke-static {v1, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static day(J)Ljava/lang/String;
    .locals 2

    .line 33
    sget-object v0, Lru/okei/timetable/data/Formats;->DAY:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    .line 34
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static time(J)Ljava/lang/String;
    .locals 2

    .line 27
    sget-object v0, Lru/okei/timetable/data/Formats;->TIME:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    .line 28
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
