.class Lru/okei/timetable/ui/ShareIconView$2;
.super Ljava/lang/Object;
.source "ShareIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/ui/ShareIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/ui/ShareIconView;


# direct methods
.method constructor <init>(Lru/okei/timetable/ui/ShareIconView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lru/okei/timetable/ui/ShareIconView$2;->this$0:Lru/okei/timetable/ui/ShareIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 65
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView$2;->this$0:Lru/okei/timetable/ui/ShareIconView;

    invoke-static {v0}, Lru/okei/timetable/ui/ShareIconView;->-$$Nest$fgetpressStep(Lru/okei/timetable/ui/ShareIconView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lru/okei/timetable/ui/ShareIconView;->-$$Nest$fputpressStep(Lru/okei/timetable/ui/ShareIconView;I)V

    .line 66
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView$2;->this$0:Lru/okei/timetable/ui/ShareIconView;

    invoke-virtual {v0}, Lru/okei/timetable/ui/ShareIconView;->invalidate()V

    .line 67
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView$2;->this$0:Lru/okei/timetable/ui/ShareIconView;

    invoke-static {v0}, Lru/okei/timetable/ui/ShareIconView;->-$$Nest$fgetpressStep(Lru/okei/timetable/ui/ShareIconView;)I

    move-result v0

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView$2;->this$0:Lru/okei/timetable/ui/ShareIconView;

    invoke-static {v0}, Lru/okei/timetable/ui/ShareIconView;->-$$Nest$fgethandler(Lru/okei/timetable/ui/ShareIconView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x16

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView$2;->this$0:Lru/okei/timetable/ui/ShareIconView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lru/okei/timetable/ui/ShareIconView;->-$$Nest$fputpressStep(Lru/okei/timetable/ui/ShareIconView;I)V

    .line 71
    iget-object v0, p0, Lru/okei/timetable/ui/ShareIconView$2;->this$0:Lru/okei/timetable/ui/ShareIconView;

    invoke-virtual {v0}, Lru/okei/timetable/ui/ShareIconView;->invalidate()V

    :goto_0
    return-void
.end method
