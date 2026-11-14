.class Lru/okei/timetable/OnboardActivity$17;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity;->pagePermissions(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/OnboardActivity;

.field final synthetic val$title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 686
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$17;->this$0:Lru/okei/timetable/OnboardActivity;

    iput-object p2, p0, Lru/okei/timetable/OnboardActivity$17;->val$title:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 689
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$17;->val$title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$17;->this$0:Lru/okei/timetable/OnboardActivity;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lru/okei/timetable/OnboardActivity;->-$$Nest$mdp(Lru/okei/timetable/OnboardActivity;F)I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    return-void

    .line 693
    :cond_0
    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$17;->val$title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lru/okei/timetable/OnboardActivity$17;->val$title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    int-to-float v0, v0

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    .line 695
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity$17;->val$title:Landroid/widget/TextView;

    const/high16 v3, 0x41500000    # 13.0f

    mul-float v0, v0, v3

    div-float/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    .line 696
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x2

    .line 695
    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method
