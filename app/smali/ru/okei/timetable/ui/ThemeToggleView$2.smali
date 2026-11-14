.class Lru/okei/timetable/ui/ThemeToggleView$2;
.super Ljava/lang/Object;
.source "ThemeToggleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/ui/ThemeToggleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/ui/ThemeToggleView;


# direct methods
.method constructor <init>(Lru/okei/timetable/ui/ThemeToggleView;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lru/okei/timetable/ui/ThemeToggleView$2;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 77
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView$2;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v0}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgetstep(Lru/okei/timetable/ui/ThemeToggleView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fputstep(Lru/okei/timetable/ui/ThemeToggleView;I)V

    .line 78
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView$2;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v0}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgetstep(Lru/okei/timetable/ui/ThemeToggleView;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 79
    iget-object v1, p0, Lru/okei/timetable/ui/ThemeToggleView$2;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v1}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgetmorphFrom(Lru/okei/timetable/ui/ThemeToggleView;)F

    move-result v2

    iget-object v3, p0, Lru/okei/timetable/ui/ThemeToggleView$2;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v3}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgetmorphTo(Lru/okei/timetable/ui/ThemeToggleView;)F

    move-result v3

    iget-object v4, p0, Lru/okei/timetable/ui/ThemeToggleView$2;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v4}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgetmorphFrom(Lru/okei/timetable/ui/ThemeToggleView;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fputmorph(Lru/okei/timetable/ui/ThemeToggleView;F)V

    .line 80
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView$2;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-virtual {v0}, Lru/okei/timetable/ui/ThemeToggleView;->invalidate()V

    .line 81
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView$2;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v0}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgetstep(Lru/okei/timetable/ui/ThemeToggleView;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView$2;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v0}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgethandler(Lru/okei/timetable/ui/ThemeToggleView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2d

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView$2;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v0}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgetlistener(Lru/okei/timetable/ui/ThemeToggleView;)Lru/okei/timetable/ui/ThemeToggleView$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView$2;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v0}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgetlistener(Lru/okei/timetable/ui/ThemeToggleView;)Lru/okei/timetable/ui/ThemeToggleView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lru/okei/timetable/ui/ThemeToggleView$Listener;->onToggle()V

    :cond_1
    :goto_0
    return-void
.end method
