.class Lru/okei/timetable/ui/Accordion$1;
.super Ljava/lang/Object;
.source "Accordion.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ui/Accordion;->toggle(Landroid/widget/LinearLayout;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Landroid/widget/LinearLayout;

.field final synthetic val$from:I

.field final synthetic val$open:Z

.field final synthetic val$to:I

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;IZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lru/okei/timetable/ui/Accordion$1;->val$body:Landroid/widget/LinearLayout;

    iput p2, p0, Lru/okei/timetable/ui/Accordion$1;->val$token:I

    iput-boolean p3, p0, Lru/okei/timetable/ui/Accordion$1;->val$open:Z

    iput p4, p0, Lru/okei/timetable/ui/Accordion$1;->val$from:I

    iput p5, p0, Lru/okei/timetable/ui/Accordion$1;->val$to:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 147
    iget-object v0, p0, Lru/okei/timetable/ui/Accordion$1;->val$body:Landroid/widget/LinearLayout;

    iget v1, p0, Lru/okei/timetable/ui/Accordion$1;->val$token:I

    invoke-static {v0, v1}, Lru/okei/timetable/ui/Accordion;->-$$Nest$smmine(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 153
    iget-boolean v0, p0, Lru/okei/timetable/ui/Accordion$1;->val$open:Z

    iget v0, p0, Lru/okei/timetable/ui/Accordion$1;->val$from:I

    int-to-float v1, v0

    iget v2, p0, Lru/okei/timetable/ui/Accordion$1;->val$to:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 154
    iget-object v1, p0, Lru/okei/timetable/ui/Accordion$1;->val$body:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 156
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    iget-object v0, p0, Lru/okei/timetable/ui/Accordion$1;->val$body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/ui/Accordion$1;->val$body:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lru/okei/timetable/ui/Accordion$1;->val$open:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    const v1, 0x3f59999a    # 0.85f

    div-float/2addr p1, v1

    const v1, 0x3e19999a    # 0.15f

    add-float/2addr p1, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_2
    sub-float p1, v2, p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method
