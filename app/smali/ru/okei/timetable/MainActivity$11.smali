.class Lru/okei/timetable/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity;->createScreen(Landroid/os/Bundle;)V
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

    .line 301
    iput-object p1, p0, Lru/okei/timetable/MainActivity$11;->this$0:Lru/okei/timetable/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 304
    iget-object p1, p0, Lru/okei/timetable/MainActivity$11;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {p1}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetschedule(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/ui/ScheduleState;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lru/okei/timetable/ui/ScheduleState;->revealPending:Z

    .line 305
    iget-object p1, p0, Lru/okei/timetable/MainActivity$11;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {p1, v0}, Lru/okei/timetable/MainActivity;->-$$Nest$mload(Lru/okei/timetable/MainActivity;Z)V

    return-void
.end method
