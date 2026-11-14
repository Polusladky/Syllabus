.class public final Lru/okei/timetable/data/WeekCache;
.super Ljava/lang/Object;
.source "WeekCache.java"


# static fields
.field private static volatile group:Ljava/lang/String; = ""

.field private static volatile stamp:J = -0x1L

.field private static volatile week:Lru/okei/timetable/data/WeekSchedule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forget()V
    .locals 2

    const/4 v0, 0x0

    .line 34
    sput-object v0, Lru/okei/timetable/data/WeekCache;->week:Lru/okei/timetable/data/WeekSchedule;

    const-wide/16 v0, -0x1

    .line 35
    sput-wide v0, Lru/okei/timetable/data/WeekCache;->stamp:J

    const-string v0, ""

    .line 36
    sput-object v0, Lru/okei/timetable/data/WeekCache;->group:Ljava/lang/String;

    invoke-static {}, Lru/okei/timetable/fix/WeekGate;->forget()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lru/okei/timetable/data/WeekSchedule;
    .locals 1

    invoke-static {p0}, Lru/okei/timetable/fix/WeekGate;->get(Landroid/content/Context;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v0

    return-object v0
.end method
