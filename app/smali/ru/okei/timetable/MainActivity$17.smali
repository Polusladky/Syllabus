.class Lru/okei/timetable/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity;->onResume()V
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

    .line 631
    iput-object p1, p0, Lru/okei/timetable/MainActivity$17;->this$0:Lru/okei/timetable/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 634
    sget-object v0, Lru/okei/timetable/SiteChangesSync;->recent:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 635
    :goto_0
    :try_start_0
    sget-object v2, Lru/okei/timetable/SiteChangesSync;->recent:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 636
    sget-object v2, Lru/okei/timetable/SiteChangesSync;->recent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/okei/timetable/data/Change;

    .line 637
    sget-object v3, Lru/okei/timetable/ui/ScheduleViews;->animateKeys:Ljava/util/Set;

    iget v4, v2, Lru/okei/timetable/data/Change;->day:I

    iget v2, v2, Lru/okei/timetable/data/Change;->pair:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    :cond_0
    sget-object v1, Lru/okei/timetable/SiteChangesSync;->recent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 640
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    sget-object v0, Lru/okei/timetable/ui/ScheduleViews;->animateKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    iget-object v0, p0, Lru/okei/timetable/MainActivity$17;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$mrender(Lru/okei/timetable/MainActivity;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 640
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
