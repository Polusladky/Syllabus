.class public final Lru/okei/timetable/alarm/AlarmPlan$Slot;
.super Ljava/lang/Object;
.source "AlarmPlan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/alarm/AlarmPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Slot"
.end annotation


# static fields
.field static final KIND_REMIND:Ljava/lang/String; = "remind"

.field static final KIND_WAKE:Ljava/lang/String; = "wake"


# instance fields
.field public final at:J

.field public final code:I

.field public final day:Ljava/lang/String;

.field public final group:Ljava/lang/String;

.field public final kind:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final lesson:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v7, "wake"

    const-string v8, ""

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 56
    invoke-direct/range {v0 .. v8}, Lru/okei/timetable/alarm/AlarmPlan$Slot;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v8, ""

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 60
    invoke-direct/range {v0 .. v8}, Lru/okei/timetable/alarm/AlarmPlan$Slot;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->code:I

    .line 66
    iput-wide p2, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    .line 67
    iput-object p4, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->day:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->lesson:Ljava/lang/String;

    .line 69
    iput-object p6, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->label:Ljava/lang/String;

    if-nez p7, :cond_0

    const-string p7, "wake"

    .line 70
    :cond_0
    iput-object p7, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->kind:Ljava/lang/String;

    if-nez p8, :cond_1

    const-string p8, ""

    .line 71
    :cond_1
    iput-object p8, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->group:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isReminder()Z
    .locals 2

    const-string v0, "remind"

    .line 75
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 80
    iget-wide v0, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->at:J

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmPlan;->format(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->day:Ljava/lang/String;

    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->lesson:Ljava/lang/String;

    iget-object v3, p0, Lru/okei/timetable/alarm/AlarmPlan$Slot;->label:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
