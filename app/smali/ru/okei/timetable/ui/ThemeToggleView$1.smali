.class Lru/okei/timetable/ui/ThemeToggleView$1;
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

    .line 60
    iput-object p1, p0, Lru/okei/timetable/ui/ThemeToggleView$1;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 63
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView$1;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v0}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgetstep(Lru/okei/timetable/ui/ThemeToggleView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fputstep(Lru/okei/timetable/ui/ThemeToggleView;I)V

    .line 64
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView$1;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v0}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgetstep(Lru/okei/timetable/ui/ThemeToggleView;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fputappear(Lru/okei/timetable/ui/ThemeToggleView;F)V

    .line 66
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView$1;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v0}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgetmorphFrom(Lru/okei/timetable/ui/ThemeToggleView;)F

    move-result v1

    iget-object v2, p0, Lru/okei/timetable/ui/ThemeToggleView$1;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v2}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgetmorphTo(Lru/okei/timetable/ui/ThemeToggleView;)F

    move-result v2

    iget-object v3, p0, Lru/okei/timetable/ui/ThemeToggleView$1;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v3}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgetmorphFrom(Lru/okei/timetable/ui/ThemeToggleView;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lru/okei/timetable/ui/ThemeToggleView$1;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v3}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgetappear(Lru/okei/timetable/ui/ThemeToggleView;)F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fputmorph(Lru/okei/timetable/ui/ThemeToggleView;F)V

    .line 67
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView$1;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-virtual {v0}, Lru/okei/timetable/ui/ThemeToggleView;->invalidate()V

    .line 68
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView$1;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v0}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgetstep(Lru/okei/timetable/ui/ThemeToggleView;)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lru/okei/timetable/ui/ThemeToggleView$1;->this$0:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-static {v0}, Lru/okei/timetable/ui/ThemeToggleView;->-$$Nest$fgethandler(Lru/okei/timetable/ui/ThemeToggleView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2d

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
