.class Lru/okei/timetable/OnboardActivity$3;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/OnboardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private step:I

.field final synthetic this$0:Lru/okei/timetable/OnboardActivity;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$3;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 184
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$3;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgeterrorView(Lru/okei/timetable/OnboardActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$3;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgeterrorView(Lru/okei/timetable/OnboardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    iget v0, p0, Lru/okei/timetable/OnboardActivity$3;->step:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lru/okei/timetable/OnboardActivity$3;->step:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 189
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$3;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgeterrorView(Lru/okei/timetable/OnboardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/OnboardActivity$3$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/OnboardActivity$3$1;-><init>(Lru/okei/timetable/OnboardActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$3;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgeterrorView(Lru/okei/timetable/OnboardActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lru/okei/timetable/OnboardActivity$3;->step:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const v1, 0x3e19999a    # 0.15f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 200
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$3;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetmain(Lru/okei/timetable/OnboardActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method
