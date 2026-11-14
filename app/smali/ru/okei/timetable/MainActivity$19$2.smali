.class Lru/okei/timetable/MainActivity$19$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/MainActivity$19;

.field final synthetic val$error:Ljava/lang/Exception;

.field final synthetic val$failedReport:Lru/okei/timetable/data/ParserHealth$Report;


# direct methods
.method constructor <init>(Lru/okei/timetable/MainActivity$19;Lru/okei/timetable/data/ParserHealth$Report;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 887
    iput-object p1, p0, Lru/okei/timetable/MainActivity$19$2;->this$1:Lru/okei/timetable/MainActivity$19;

    iput-object p2, p0, Lru/okei/timetable/MainActivity$19$2;->val$failedReport:Lru/okei/timetable/data/ParserHealth$Report;

    iput-object p3, p0, Lru/okei/timetable/MainActivity$19$2;->val$error:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 890
    iget-object v0, p0, Lru/okei/timetable/MainActivity$19$2;->this$1:Lru/okei/timetable/MainActivity$19;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/okei/timetable/MainActivity;->-$$Nest$fputbusy(Lru/okei/timetable/MainActivity;Z)V

    .line 891
    iget-object v0, p0, Lru/okei/timetable/MainActivity$19$2;->this$1:Lru/okei/timetable/MainActivity$19;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0, v1}, Lru/okei/timetable/MainActivity;->-$$Nest$fputloading(Lru/okei/timetable/MainActivity;Z)V

    .line 892
    iget-object v0, p0, Lru/okei/timetable/MainActivity$19$2;->val$failedReport:Lru/okei/timetable/data/ParserHealth$Report;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/okei/timetable/data/ParserHealth$Report;->broken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lru/okei/timetable/MainActivity$19$2;->this$1:Lru/okei/timetable/MainActivity$19;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    iget-object v1, p0, Lru/okei/timetable/MainActivity$19$2;->val$failedReport:Lru/okei/timetable/data/ParserHealth$Report;

    invoke-static {v0, v1}, Lru/okei/timetable/MainActivity;->-$$Nest$fputhealth(Lru/okei/timetable/MainActivity;Lru/okei/timetable/data/ParserHealth$Report;)V

    .line 895
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity$19$2;->this$1:Lru/okei/timetable/MainActivity$19;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$19;->this$0:Lru/okei/timetable/MainActivity;

    iget-object v1, p0, Lru/okei/timetable/MainActivity$19$2;->val$error:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lru/okei/timetable/MainActivity;->-$$Nest$monFailure(Lru/okei/timetable/MainActivity;Ljava/lang/Exception;)V

    return-void
.end method
