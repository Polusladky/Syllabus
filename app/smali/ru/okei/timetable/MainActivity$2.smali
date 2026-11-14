.class Lru/okei/timetable/MainActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/MainActivity;
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

    .line 123
    iput-object p1, p0, Lru/okei/timetable/MainActivity$2;->this$0:Lru/okei/timetable/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const-string v0, "snoozed"

    .line 127
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 128
    :cond_0
    iget-object p2, p0, Lru/okei/timetable/MainActivity$2;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {p2}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetalarms(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/alarm/AlarmHost;

    move-result-object p2

    invoke-virtual {p2}, Lru/okei/timetable/alarm/AlarmHost;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 129
    iget-object p2, p0, Lru/okei/timetable/MainActivity$2;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {p2}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetalarms(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/alarm/AlarmHost;

    move-result-object p2

    invoke-virtual {p2, p1}, Lru/okei/timetable/alarm/AlarmHost;->close(Z)V

    :cond_1
    return-void
.end method
