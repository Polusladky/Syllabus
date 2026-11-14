.class Lru/okei/timetable/MainActivity$30;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity;->animateScrollTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/MainActivity;

.field final synthetic val$targetY:I


# direct methods
.method constructor <init>(Lru/okei/timetable/MainActivity;I)V
    .locals 0

    .line 1314
    iput-object p1, p0, Lru/okei/timetable/MainActivity$30;->this$0:Lru/okei/timetable/MainActivity;

    iput p2, p0, Lru/okei/timetable/MainActivity$30;->val$targetY:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1317
    iget-object p1, p0, Lru/okei/timetable/MainActivity$30;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {p1}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetscroll(Lru/okei/timetable/MainActivity;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p1

    .line 1318
    iget v0, p0, Lru/okei/timetable/MainActivity$30;->val$targetY:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lru/okei/timetable/MainActivity$30;->this$0:Lru/okei/timetable/MainActivity;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lru/okei/timetable/MainActivity;->-$$Nest$mdp(Lru/okei/timetable/MainActivity;F)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 1319
    iget-object p1, p0, Lru/okei/timetable/MainActivity$30;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {p1}, Lru/okei/timetable/MainActivity;->-$$Nest$mscrollToToday(Lru/okei/timetable/MainActivity;)V

    .line 1320
    iget-object p1, p0, Lru/okei/timetable/MainActivity$30;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {p1}, Lru/okei/timetable/MainActivity;->-$$Nest$mupdateRowsVisibility(Lru/okei/timetable/MainActivity;)V

    return-void

    .line 1323
    :cond_0
    iget-object p1, p0, Lru/okei/timetable/MainActivity$30;->this$0:Lru/okei/timetable/MainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fputtodayScrollDone(Lru/okei/timetable/MainActivity;Z)V

    .line 1324
    iget-object p1, p0, Lru/okei/timetable/MainActivity$30;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {p1}, Lru/okei/timetable/MainActivity;->-$$Nest$mupdateRowsVisibility(Lru/okei/timetable/MainActivity;)V

    return-void
.end method
