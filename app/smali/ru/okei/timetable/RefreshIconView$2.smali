.class Lru/okei/timetable/RefreshIconView$2;
.super Ljava/lang/Object;
.source "RefreshIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/RefreshIconView;->playAppear()V
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

    .line 105
    iput-object p1, p0, Lru/okei/timetable/RefreshIconView$2;->this$0:Lru/okei/timetable/RefreshIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lru/okei/timetable/RefreshIconView$2;->this$0:Lru/okei/timetable/RefreshIconView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lru/okei/timetable/RefreshIconView;->-$$Nest$fputreveal(Lru/okei/timetable/RefreshIconView;F)V

    .line 109
    iget-object p1, p0, Lru/okei/timetable/RefreshIconView$2;->this$0:Lru/okei/timetable/RefreshIconView;

    invoke-virtual {p1}, Lru/okei/timetable/RefreshIconView;->invalidate()V

    return-void
.end method
