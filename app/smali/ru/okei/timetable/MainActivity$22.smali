.class Lru/okei/timetable/MainActivity$22;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity;->applyPendingHighlight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/MainActivity;

.field final synthetic val$day:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/okei/timetable/MainActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1056
    iput-object p1, p0, Lru/okei/timetable/MainActivity$22;->this$0:Lru/okei/timetable/MainActivity;

    iput-object p2, p0, Lru/okei/timetable/MainActivity$22;->val$day:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1059
    iget-object v0, p0, Lru/okei/timetable/MainActivity$22;->this$0:Lru/okei/timetable/MainActivity;

    iget-object v1, p0, Lru/okei/timetable/MainActivity$22;->val$day:Ljava/lang/String;

    invoke-static {v0, v1}, Lru/okei/timetable/MainActivity;->-$$Nest$mhighlightDay(Lru/okei/timetable/MainActivity;Ljava/lang/String;)V

    return-void
.end method
