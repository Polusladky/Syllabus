.class Lru/okei/timetable/MainActivity$19;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity;->load(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/MainActivity;


# direct methods
.method constructor <init>(Lru/okei/timetable/MainActivity;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    .line 856
    :try_start_0
    iget-object v1, p0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v1}, Lru/okei/timetable/data/Groups;->url(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lru/okei/timetable/Http;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 857
    invoke-static {v6}, Lru/okei/timetable/data/ScheduleParser;->parse(Ljava/lang/String;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v5

    .line 858
    invoke-static {v5}, Lru/okei/timetable/data/ParserHealth;->doubt(Lru/okei/timetable/data/WeekSchedule;)Ljava/lang/String;

    move-result-object v1

    .line 859
    invoke-static {v6, v5, v1}, Lru/okei/timetable/data/ParserHealth;->of(Ljava/lang/String;Lru/okei/timetable/data/WeekSchedule;Ljava/lang/String;)Lru/okei/timetable/data/ParserHealth$Report;

    move-result-object v0

    if-eqz v5, :cond_1

    .line 860
    invoke-virtual {v5}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v2

    if-eqz v2, :cond_1

    .line 863
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 867
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 868
    iget-object v1, p0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v1, v6, v7, v8}, Lru/okei/timetable/data/Cache;->write(Landroid/content/Context;Ljava/lang/String;J)V

    .line 869
    iget-object v1, p0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v1}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetmain(Lru/okei/timetable/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lru/okei/timetable/MainActivity$19$1;

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lru/okei/timetable/MainActivity$19$1;-><init>(Lru/okei/timetable/MainActivity$19;Lru/okei/timetable/data/WeekSchedule;Ljava/lang/String;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 865
    :cond_0
    new-instance v2, Lru/okei/timetable/MainActivity$UntrustedScheduleException;

    invoke-direct {v2, v1}, Lru/okei/timetable/MainActivity$UntrustedScheduleException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 861
    :cond_1
    new-instance v1, Lru/okei/timetable/MainActivity$EmptyScheduleException;

    invoke-direct {v1}, Lru/okei/timetable/MainActivity$EmptyScheduleException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 887
    iget-object v2, p0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v2}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetmain(Lru/okei/timetable/MainActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lru/okei/timetable/MainActivity$19$2;

    invoke-direct {v3, p0, v0, v1}, Lru/okei/timetable/MainActivity$19$2;-><init>(Lru/okei/timetable/MainActivity$19;Lru/okei/timetable/data/ParserHealth$Report;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
