.class Lru/okei/timetable/DiagnosticsActivity$3$1;
.super Ljava/lang/Object;
.source "DiagnosticsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/DiagnosticsActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/DiagnosticsActivity$3;

.field final synthetic val$collected:Ljava/util/List;


# direct methods
.method constructor <init>(Lru/okei/timetable/DiagnosticsActivity$3;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lru/okei/timetable/DiagnosticsActivity$3$1;->this$1:Lru/okei/timetable/DiagnosticsActivity$3;

    iput-object p2, p0, Lru/okei/timetable/DiagnosticsActivity$3$1;->val$collected:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 132
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity$3$1;->this$1:Lru/okei/timetable/DiagnosticsActivity$3;

    iget-object v0, v0, Lru/okei/timetable/DiagnosticsActivity$3;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    invoke-virtual {v0}, Lru/okei/timetable/DiagnosticsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity$3$1;->this$1:Lru/okei/timetable/DiagnosticsActivity$3;

    iget-object v0, v0, Lru/okei/timetable/DiagnosticsActivity$3;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    iget-object v1, p0, Lru/okei/timetable/DiagnosticsActivity$3$1;->val$collected:Ljava/util/List;

    invoke-static {v0, v1}, Lru/okei/timetable/DiagnosticsActivity;->-$$Nest$mshow(Lru/okei/timetable/DiagnosticsActivity;Ljava/util/List;)V

    :cond_0
    return-void
.end method
