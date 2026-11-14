.class public final Lru/okei/timetable/alarm/AlarmPlan$Params;
.super Ljava/lang/Object;
.source "AlarmPlan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/alarm/AlarmPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Params"
.end annotation


# static fields
.field static final DEFAULT:Lru/okei/timetable/alarm/AlarmPlan$Params;


# instance fields
.field final chainCount:I

.field final leadMinutes:I

.field final stepMinutes:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lru/okei/timetable/alarm/AlarmPlan$Params;

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/16 v3, 0x78

    invoke-direct {v0, v3, v1, v2}, Lru/okei/timetable/alarm/AlarmPlan$Params;-><init>(III)V

    sput-object v0, Lru/okei/timetable/alarm/AlarmPlan$Params;->DEFAULT:Lru/okei/timetable/alarm/AlarmPlan$Params;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lru/okei/timetable/alarm/AlarmPlan$Params;->leadMinutes:I

    .line 33
    iput p2, p0, Lru/okei/timetable/alarm/AlarmPlan$Params;->chainCount:I

    .line 34
    iput p3, p0, Lru/okei/timetable/alarm/AlarmPlan$Params;->stepMinutes:I

    return-void
.end method
