.class Lru/okei/timetable/ui/SplitBar$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SplitBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ui/SplitBar;->animateSplit(JLjava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/ui/SplitBar;

.field final synthetic val$backTo:F

.field final synthetic val$done:Ljava/lang/Runnable;

.field final synthetic val$nextTo:F

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lru/okei/timetable/ui/SplitBar;FFFLjava/lang/Runnable;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lru/okei/timetable/ui/SplitBar$5;->this$0:Lru/okei/timetable/ui/SplitBar;

    iput p2, p0, Lru/okei/timetable/ui/SplitBar$5;->val$to:F

    iput p3, p0, Lru/okei/timetable/ui/SplitBar$5;->val$nextTo:F

    iput p4, p0, Lru/okei/timetable/ui/SplitBar$5;->val$backTo:F

    iput-object p5, p0, Lru/okei/timetable/ui/SplitBar$5;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 174
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$5;->this$0:Lru/okei/timetable/ui/SplitBar;

    iget v0, p0, Lru/okei/timetable/ui/SplitBar$5;->val$to:F

    invoke-static {p1, v0}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputboundary(Lru/okei/timetable/ui/SplitBar;F)V

    .line 175
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$5;->this$0:Lru/okei/timetable/ui/SplitBar;

    iget v0, p0, Lru/okei/timetable/ui/SplitBar$5;->val$nextTo:F

    invoke-static {p1, v0}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputnextX(Lru/okei/timetable/ui/SplitBar;F)V

    .line 176
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$5;->this$0:Lru/okei/timetable/ui/SplitBar;

    iget v0, p0, Lru/okei/timetable/ui/SplitBar$5;->val$backTo:F

    invoke-static {p1, v0}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputbackX(Lru/okei/timetable/ui/SplitBar;F)V

    .line 177
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$5;->this$0:Lru/okei/timetable/ui/SplitBar;

    invoke-virtual {p1}, Lru/okei/timetable/ui/SplitBar;->invalidate()V

    .line 178
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$5;->val$done:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 179
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
