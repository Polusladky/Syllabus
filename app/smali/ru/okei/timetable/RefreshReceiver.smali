.class public Lru/okei/timetable/RefreshReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RefreshReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 15
    invoke-virtual {p0}, Lru/okei/timetable/RefreshReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    .line 16
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lru/okei/timetable/RefreshReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lru/okei/timetable/RefreshReceiver$1;-><init>(Lru/okei/timetable/RefreshReceiver;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 34
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
