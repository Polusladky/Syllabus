.class Lru/okei/timetable/OnboardActivity$6;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity;->buildContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/OnboardActivity;

.field final synthetic val$inFrom:F

.field final synthetic val$incoming:Landroid/view/View;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;Landroid/view/View;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 306
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$6;->this$0:Lru/okei/timetable/OnboardActivity;

    iput-object p2, p0, Lru/okei/timetable/OnboardActivity$6;->val$incoming:Landroid/view/View;

    iput p3, p0, Lru/okei/timetable/OnboardActivity$6;->val$inFrom:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 309
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$6;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetholder(Lru/okei/timetable/OnboardActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 310
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$6;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetholder(Lru/okei/timetable/OnboardActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$6;->val$incoming:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 311
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$6;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetholder(Lru/okei/timetable/OnboardActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget v1, p0, Lru/okei/timetable/OnboardActivity$6;->val$inFrom:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 312
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$6;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetholder(Lru/okei/timetable/OnboardActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    .line 313
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/OnboardActivity$6$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/OnboardActivity$6$1;-><init>(Lru/okei/timetable/OnboardActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
