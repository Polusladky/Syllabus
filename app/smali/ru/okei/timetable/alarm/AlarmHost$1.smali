.class Lru/okei/timetable/alarm/AlarmHost$1;
.super Ljava/lang/Object;
.source "AlarmHost.java"

# interfaces
.implements Lru/okei/timetable/alarm/AlarmOverlayView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/alarm/AlarmHost;->show(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/alarm/AlarmHost;


# direct methods
.method constructor <init>(Lru/okei/timetable/alarm/AlarmHost;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmHost$1;->this$0:Lru/okei/timetable/alarm/AlarmHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 2

    .line 77
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost$1;->this$0:Lru/okei/timetable/alarm/AlarmHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/okei/timetable/alarm/AlarmHost;->close(Z)V

    return-void
.end method

.method public onSnoozed()V
    .locals 2

    .line 82
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost$1;->this$0:Lru/okei/timetable/alarm/AlarmHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/okei/timetable/alarm/AlarmHost;->close(Z)V

    return-void
.end method
