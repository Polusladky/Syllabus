.class Lru/okei/timetable/ui/SplitBar$6;
.super Ljava/lang/Object;
.source "SplitBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$nextFrom:F

.field final synthetic val$startLeft:F


# direct methods
.method constructor <init>(Lru/okei/timetable/ui/SplitBar;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lru/okei/timetable/ui/SplitBar$6;->this$0:Lru/okei/timetable/ui/SplitBar;

    iput p2, p0, Lru/okei/timetable/ui/SplitBar$6;->val$startLeft:F

    iput p3, p0, Lru/okei/timetable/ui/SplitBar$6;->val$nextFrom:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 200
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 201
    iget-object v0, p0, Lru/okei/timetable/ui/SplitBar$6;->this$0:Lru/okei/timetable/ui/SplitBar;

    iget v1, p0, Lru/okei/timetable/ui/SplitBar$6;->val$startLeft:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, p1

    mul-float v1, v1, v3

    invoke-static {v0, v1}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputmergeLeft(Lru/okei/timetable/ui/SplitBar;F)V

    .line 202
    iget-object v0, p0, Lru/okei/timetable/ui/SplitBar$6;->this$0:Lru/okei/timetable/ui/SplitBar;

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v1, v1, p1

    sub-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputmergeLineProgress(Lru/okei/timetable/ui/SplitBar;F)V

    .line 203
    iget-object v0, p0, Lru/okei/timetable/ui/SplitBar$6;->this$0:Lru/okei/timetable/ui/SplitBar;

    iget v1, p0, Lru/okei/timetable/ui/SplitBar$6;->val$nextFrom:F

    invoke-virtual {v0}, Lru/okei/timetable/ui/SplitBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lru/okei/timetable/ui/SplitBar$6;->val$nextFrom:F

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputnextX(Lru/okei/timetable/ui/SplitBar;F)V

    .line 204
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$6;->this$0:Lru/okei/timetable/ui/SplitBar;

    const-string v0, ""

    invoke-static {p1, v0}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputbackText(Lru/okei/timetable/ui/SplitBar;Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$6;->this$0:Lru/okei/timetable/ui/SplitBar;

    invoke-virtual {p1}, Lru/okei/timetable/ui/SplitBar;->invalidate()V

    return-void
.end method
