.class Lru/okei/timetable/MainActivity$26;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity;->revealFirstDays()V
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

    .line 1193
    iput-object p1, p0, Lru/okei/timetable/MainActivity$26;->this$0:Lru/okei/timetable/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1196
    iget-object v0, p0, Lru/okei/timetable/MainActivity$26;->this$0:Lru/okei/timetable/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/okei/timetable/MainActivity;->-$$Nest$fputintroRevealRunning(Lru/okei/timetable/MainActivity;Z)V

    .line 1197
    iget-object v0, p0, Lru/okei/timetable/MainActivity$26;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$mupdateRowsVisibility(Lru/okei/timetable/MainActivity;)V

    return-void
.end method
