.class Lru/okei/timetable/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 97
    iput-object p1, p0, Lru/okei/timetable/MainActivity$1;->this$0:Lru/okei/timetable/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 100
    iget-object v0, p0, Lru/okei/timetable/MainActivity$1;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$mupdateRowsVisibility(Lru/okei/timetable/MainActivity;)V

    .line 101
    iget-object v0, p0, Lru/okei/timetable/MainActivity$1;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetmain(Lru/okei/timetable/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
