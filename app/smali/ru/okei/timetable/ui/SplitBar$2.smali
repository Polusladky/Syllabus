.class Lru/okei/timetable/ui/SplitBar$2;
.super Ljava/lang/Object;
.source "SplitBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ui/SplitBar;->animateSeam(JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/ui/SplitBar;


# direct methods
.method constructor <init>(Lru/okei/timetable/ui/SplitBar;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lru/okei/timetable/ui/SplitBar$2;->this$0:Lru/okei/timetable/ui/SplitBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lru/okei/timetable/ui/SplitBar$2;->this$0:Lru/okei/timetable/ui/SplitBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lru/okei/timetable/ui/SplitBar;->-$$Nest$fputseamProgress(Lru/okei/timetable/ui/SplitBar;F)V

    .line 126
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$2;->this$0:Lru/okei/timetable/ui/SplitBar;

    invoke-virtual {p1}, Lru/okei/timetable/ui/SplitBar;->invalidate()V

    return-void
.end method
