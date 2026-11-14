.class Lru/okei/timetable/DiagnosticsActivity$8;
.super Ljava/lang/Object;
.source "DiagnosticsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/DiagnosticsActivity;->show(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/DiagnosticsActivity;

.field final synthetic val$collected:Ljava/util/List;


# direct methods
.method constructor <init>(Lru/okei/timetable/DiagnosticsActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lru/okei/timetable/DiagnosticsActivity$8;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    iput-object p2, p0, Lru/okei/timetable/DiagnosticsActivity$8;->val$collected:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 185
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity$8;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    iget-object v1, p0, Lru/okei/timetable/DiagnosticsActivity$8;->val$collected:Ljava/util/List;

    invoke-static {v0, v1}, Lru/okei/timetable/DiagnosticsActivity;->-$$Nest$mcopy(Lru/okei/timetable/DiagnosticsActivity;Ljava/util/List;)V

    return-void
.end method
