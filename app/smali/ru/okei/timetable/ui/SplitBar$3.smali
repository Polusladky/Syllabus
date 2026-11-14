.class Lru/okei/timetable/ui/SplitBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SplitBar.java"


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

.field final synthetic val$done:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lru/okei/timetable/ui/SplitBar;Ljava/lang/Runnable;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lru/okei/timetable/ui/SplitBar$3;->this$0:Lru/okei/timetable/ui/SplitBar;

    iput-object p2, p0, Lru/okei/timetable/ui/SplitBar$3;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lru/okei/timetable/ui/SplitBar$3;->val$done:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 133
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
