.class Lru/okei/timetable/RefreshIconView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RefreshIconView.java"


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

    .line 112
    iput-object p1, p0, Lru/okei/timetable/RefreshIconView$3;->this$0:Lru/okei/timetable/RefreshIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 115
    iget-object p1, p0, Lru/okei/timetable/RefreshIconView$3;->this$0:Lru/okei/timetable/RefreshIconView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lru/okei/timetable/RefreshIconView;->-$$Nest$fputreveal(Lru/okei/timetable/RefreshIconView;F)V

    .line 116
    iget-object p1, p0, Lru/okei/timetable/RefreshIconView$3;->this$0:Lru/okei/timetable/RefreshIconView;

    invoke-virtual {p1}, Lru/okei/timetable/RefreshIconView;->invalidate()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 117
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x78

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 119
    new-instance v0, Lru/okei/timetable/RefreshIconView$3$1;

    invoke-direct {v0, p0}, Lru/okei/timetable/RefreshIconView$3$1;-><init>(Lru/okei/timetable/RefreshIconView$3;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 126
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
