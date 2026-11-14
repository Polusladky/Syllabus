.class Lru/okei/timetable/ui/SplitBar$4;
.super Ljava/lang/Object;
.source "SplitBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$backFrom:F

.field final synthetic val$backTo:F

.field final synthetic val$fired:[Z

.field final synthetic val$from:F

.field final synthetic val$midway:Ljava/lang/Runnable;

.field final synthetic val$nextFrom:F

.field final synthetic val$nextTo:F

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lru/okei/timetable/ui/SplitBar;FFFFFFLjava/lang/Runnable;[Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lru/okei/timetable/ui/SplitBar$4;->this$0:Lru/okei/timetable/ui/SplitBar;

    iput p2, p0, Lru/okei/timetable/ui/SplitBar$4;->val$from:F

    iput p3, p0, Lru/okei/timetable/ui/SplitBar$4;->val$to:F

    iput p4, p0, Lru/okei/timetable/ui/SplitBar$4;->val$nextFrom:F

    iput p5, p0, Lru/okei/timetable/ui/SplitBar$4;->val$nextTo:F

    iput p6, p0, Lru/okei/timetable/ui/SplitBar$4;->val$backFrom:F

    iput p7, p0, Lru/okei/timetable/ui/SplitBar$4;->val$backTo:F

    iput-object p8, p0, Lru/okei/timetable/ui/SplitBar$4;->val$midway:Ljava/lang/Runnable;

    iput-object p9, p0, Lru/okei/timetable/ui/SplitBar$4;->val$fired:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 160
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 161
    iget-object v0, p0, Lru/okei/timetable/ui/SplitBar$4;->this$0:Lru/okei/timetable/ui/SplitBar;

    iget v1, p0, Lru/okei/timetable/ui/SplitBar$4;->val$from:F

    iget v2, p0, Lru/okei/timetable/ui/SplitBar$4;->val$to:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputboundary(Lru/okei/timetable/ui/SplitBar;F)V

    .line 162
    iget-object v0, p0, Lru/okei/timetable/ui/SplitBar$4;->this$0:Lru/okei/timetable/ui/SplitBar;

    iget v1, p0, Lru/okei/timetable/ui/SplitBar$4;->val$nextFrom:F

    iget v2, p0, Lru/okei/timetable/ui/SplitBar$4;->val$nextTo:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputnextX(Lru/okei/timetable/ui/SplitBar;F)V

    .line 163
    iget-object v0, p0, Lru/okei/timetable/ui/SplitBar$4;->this$0:Lru/okei/timetable/ui/SplitBar;

    iget v1, p0, Lru/okei/timetable/ui/SplitBar$4;->val$backFrom:F

    iget v2, p0, Lru/okei/timetable/ui/SplitBar$4;->val$backTo:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputbackX(Lru/okei/timetable/ui/SplitBar;F)V

    .line 164
    iget-object v0, p0, Lru/okei/timetable/ui/SplitBar$4;->val$midway:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/okei/timetable/ui/SplitBar$4;->val$fired:[Z

    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-nez v3, :cond_0

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v3

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 165
    aput-boolean p1, v1, v2

    .line 166
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 168
    :cond_0
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$4;->this$0:Lru/okei/timetable/ui/SplitBar;

    invoke-virtual {p1}, Lru/okei/timetable/ui/SplitBar;->invalidate()V

    return-void
.end method
