.class Lru/okei/timetable/ui/SplitBar$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SplitBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ui/SplitBar;->animateMerge(JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/ui/SplitBar;

.field final synthetic val$done:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lru/okei/timetable/ui/SplitBar;Ljava/lang/Runnable;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lru/okei/timetable/ui/SplitBar$7;->this$0:Lru/okei/timetable/ui/SplitBar;

    iput-object p2, p0, Lru/okei/timetable/ui/SplitBar$7;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 211
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$7;->this$0:Lru/okei/timetable/ui/SplitBar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputsingle(Lru/okei/timetable/ui/SplitBar;Z)V

    .line 212
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$7;->this$0:Lru/okei/timetable/ui/SplitBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputmerging(Lru/okei/timetable/ui/SplitBar;Z)V

    .line 213
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$7;->this$0:Lru/okei/timetable/ui/SplitBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputseamProgress(Lru/okei/timetable/ui/SplitBar;F)V

    .line 214
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$7;->this$0:Lru/okei/timetable/ui/SplitBar;

    invoke-virtual {p1}, Lru/okei/timetable/ui/SplitBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v1}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputboundary(Lru/okei/timetable/ui/SplitBar;F)V

    .line 215
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$7;->this$0:Lru/okei/timetable/ui/SplitBar;

    invoke-virtual {p1}, Lru/okei/timetable/ui/SplitBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {p1, v1}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputnextX(Lru/okei/timetable/ui/SplitBar;F)V

    .line 216
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$7;->this$0:Lru/okei/timetable/ui/SplitBar;

    invoke-static {p1, v0}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputbackX(Lru/okei/timetable/ui/SplitBar;F)V

    .line 217
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$7;->this$0:Lru/okei/timetable/ui/SplitBar;

    const-string v0, ""

    invoke-static {p1, v0}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputbackText(Lru/okei/timetable/ui/SplitBar;Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$7;->this$0:Lru/okei/timetable/ui/SplitBar;

    invoke-virtual {p1}, Lru/okei/timetable/ui/SplitBar;->invalidate()V

    .line 219
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$7;->val$done:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 220
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
