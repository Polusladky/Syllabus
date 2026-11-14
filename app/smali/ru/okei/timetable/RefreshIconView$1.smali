.class Lru/okei/timetable/RefreshIconView$1;
.super Ljava/lang/Object;
.source "RefreshIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/RefreshIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/RefreshIconView;


# direct methods
.method constructor <init>(Lru/okei/timetable/RefreshIconView;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lru/okei/timetable/RefreshIconView$1;->this$0:Lru/okei/timetable/RefreshIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 50
    iget-object v0, p0, Lru/okei/timetable/RefreshIconView$1;->this$0:Lru/okei/timetable/RefreshIconView;

    invoke-static {v0}, Lru/okei/timetable/RefreshIconView;->-$$Nest$fgetspinning(Lru/okei/timetable/RefreshIconView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/RefreshIconView$1;->this$0:Lru/okei/timetable/RefreshIconView;

    invoke-static {v0}, Lru/okei/timetable/RefreshIconView;->-$$Nest$fgetstepIndex(Lru/okei/timetable/RefreshIconView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lru/okei/timetable/RefreshIconView;->-$$Nest$fputstepIndex(Lru/okei/timetable/RefreshIconView;I)V

    .line 54
    iget-object v0, p0, Lru/okei/timetable/RefreshIconView$1;->this$0:Lru/okei/timetable/RefreshIconView;

    invoke-static {v0}, Lru/okei/timetable/RefreshIconView;->-$$Nest$fgetstepIndex(Lru/okei/timetable/RefreshIconView;)I

    move-result v0

    const/16 v1, 0x11

    const/high16 v2, 0x42340000    # 45.0f

    if-le v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lru/okei/timetable/RefreshIconView$1;->this$0:Lru/okei/timetable/RefreshIconView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/okei/timetable/RefreshIconView;->-$$Nest$fputspinning(Lru/okei/timetable/RefreshIconView;Z)V

    .line 56
    iget-object v0, p0, Lru/okei/timetable/RefreshIconView$1;->this$0:Lru/okei/timetable/RefreshIconView;

    invoke-static {v0, v2}, Lru/okei/timetable/RefreshIconView;->-$$Nest$fputangle(Lru/okei/timetable/RefreshIconView;F)V

    .line 57
    iget-object v0, p0, Lru/okei/timetable/RefreshIconView$1;->this$0:Lru/okei/timetable/RefreshIconView;

    invoke-virtual {v0}, Lru/okei/timetable/RefreshIconView;->invalidate()V

    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/RefreshIconView$1;->this$0:Lru/okei/timetable/RefreshIconView;

    invoke-static {v0}, Lru/okei/timetable/RefreshIconView;->-$$Nest$fgetstepIndex(Lru/okei/timetable/RefreshIconView;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41b00000    # 22.0f

    mul-float v1, v1, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lru/okei/timetable/RefreshIconView;->-$$Nest$fputangle(Lru/okei/timetable/RefreshIconView;F)V

    .line 61
    iget-object v0, p0, Lru/okei/timetable/RefreshIconView$1;->this$0:Lru/okei/timetable/RefreshIconView;

    invoke-virtual {v0}, Lru/okei/timetable/RefreshIconView;->invalidate()V

    .line 62
    iget-object v0, p0, Lru/okei/timetable/RefreshIconView$1;->this$0:Lru/okei/timetable/RefreshIconView;

    invoke-static {v0}, Lru/okei/timetable/RefreshIconView;->-$$Nest$fgethandler(Lru/okei/timetable/RefreshIconView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x45

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
