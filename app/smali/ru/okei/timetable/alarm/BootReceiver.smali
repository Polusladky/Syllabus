.class public Lru/okei/timetable/alarm/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 20
    :cond_1
    invoke-static {p1}, Lru/okei/timetable/alarm/AlarmScheduler;->reapply(Landroid/content/Context;)V

    .line 21
    invoke-static {p1}, Lru/okei/timetable/SyncReceiver;->scheduleNext(Landroid/content/Context;)V

    .line 22
    invoke-static {p1}, Lru/okei/timetable/WidgetTickReceiver;->schedule(Landroid/content/Context;)V

    :cond_2
    return-void
.end method
