.class Lru/okei/timetable/RefreshIconView$3$1;
.super Ljava/lang/Object;
.source "RefreshIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/RefreshIconView$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/RefreshIconView$3;


# direct methods
.method constructor <init>(Lru/okei/timetable/RefreshIconView$3;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lru/okei/timetable/RefreshIconView$3$1;->this$1:Lru/okei/timetable/RefreshIconView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lru/okei/timetable/RefreshIconView$3$1;->this$1:Lru/okei/timetable/RefreshIconView$3;

    iget-object v0, v0, Lru/okei/timetable/RefreshIconView$3;->this$0:Lru/okei/timetable/RefreshIconView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lru/okei/timetable/RefreshIconView;->-$$Nest$fputplug(Lru/okei/timetable/RefreshIconView;F)V

    .line 123
    iget-object p1, p0, Lru/okei/timetable/RefreshIconView$3$1;->this$1:Lru/okei/timetable/RefreshIconView$3;

    iget-object p1, p1, Lru/okei/timetable/RefreshIconView$3;->this$0:Lru/okei/timetable/RefreshIconView;

    invoke-virtual {p1}, Lru/okei/timetable/RefreshIconView;->invalidate()V

    return-void
.end method
