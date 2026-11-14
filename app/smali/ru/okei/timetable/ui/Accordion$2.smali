.class Lru/okei/timetable/ui/Accordion$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Accordion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ui/Accordion;->toggle(Landroid/widget/LinearLayout;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic val$body:Landroid/widget/LinearLayout;

.field final synthetic val$open:Z

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;IZ)V
    .locals 0

    .line 162
    iput-object p1, p0, Lru/okei/timetable/ui/Accordion$2;->val$body:Landroid/widget/LinearLayout;

    iput p2, p0, Lru/okei/timetable/ui/Accordion$2;->val$token:I

    iput-boolean p3, p0, Lru/okei/timetable/ui/Accordion$2;->val$open:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lru/okei/timetable/ui/Accordion$2;->cancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 172
    iget-boolean p1, p0, Lru/okei/timetable/ui/Accordion$2;->cancelled:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lru/okei/timetable/ui/Accordion$2;->val$body:Landroid/widget/LinearLayout;

    iget v0, p0, Lru/okei/timetable/ui/Accordion$2;->val$token:I

    invoke-static {p1, v0}, Lru/okei/timetable/ui/Accordion;->-$$Nest$smmine(Landroid/view/View;I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    iget-object p1, p0, Lru/okei/timetable/ui/Accordion$2;->val$body:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 177
    iget-boolean v0, p0, Lru/okei/timetable/ui/Accordion$2;->val$open:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 178
    iget-object v0, p0, Lru/okei/timetable/ui/Accordion$2;->val$body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    :cond_2
    iget-object p1, p0, Lru/okei/timetable/ui/Accordion$2;->val$body:Landroid/widget/LinearLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 181
    iget-boolean p1, p0, Lru/okei/timetable/ui/Accordion$2;->val$open:Z

    if-nez p1, :cond_3

    .line 182
    iget-object p1, p0, Lru/okei/timetable/ui/Accordion$2;->val$body:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method
