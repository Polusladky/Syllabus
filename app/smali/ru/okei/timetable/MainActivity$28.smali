.class Lru/okei/timetable/MainActivity$28;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity;->scrollToToday(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/MainActivity;

.field final synthetic val$attempt:I


# direct methods
.method constructor <init>(Lru/okei/timetable/MainActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1277
    iput-object p1, p0, Lru/okei/timetable/MainActivity$28;->this$0:Lru/okei/timetable/MainActivity;

    iput p2, p0, Lru/okei/timetable/MainActivity$28;->val$attempt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1280
    iget-object v0, p0, Lru/okei/timetable/MainActivity$28;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgettodayBlock(Lru/okei/timetable/MainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/okei/timetable/MainActivity$28;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetscroll(Lru/okei/timetable/MainActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [I

    new-array v0, v0, [I

    .line 1288
    iget-object v3, p0, Lru/okei/timetable/MainActivity$28;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v3}, Lru/okei/timetable/MainActivity;->-$$Nest$fgettodayBlock(Lru/okei/timetable/MainActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1289
    iget-object v3, p0, Lru/okei/timetable/MainActivity$28;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v3}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetscroll(Lru/okei/timetable/MainActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 1290
    iget-object v3, p0, Lru/okei/timetable/MainActivity$28;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v3}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetscroll(Lru/okei/timetable/MainActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    aget v2, v2, v1

    add-int/2addr v3, v2

    aget v0, v0, v1

    sub-int/2addr v3, v0

    iget-object v0, p0, Lru/okei/timetable/MainActivity$28;->this$0:Lru/okei/timetable/MainActivity;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lru/okei/timetable/MainActivity;->-$$Nest$mdp(Lru/okei/timetable/MainActivity;F)I

    move-result v0

    sub-int/2addr v3, v0

    .line 1291
    iget-object v0, p0, Lru/okei/timetable/MainActivity$28;->this$0:Lru/okei/timetable/MainActivity;

    const/4 v1, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lru/okei/timetable/MainActivity;->-$$Nest$manimateScrollTo(Lru/okei/timetable/MainActivity;I)V

    return-void

    .line 1281
    :cond_1
    :goto_0
    iget v0, p0, Lru/okei/timetable/MainActivity$28;->val$attempt:I

    const/16 v2, 0x19

    if-ge v0, v2, :cond_2

    .line 1282
    iget-object v2, p0, Lru/okei/timetable/MainActivity$28;->this$0:Lru/okei/timetable/MainActivity;

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Lru/okei/timetable/MainActivity;->-$$Nest$mscrollToToday(Lru/okei/timetable/MainActivity;I)V

    :cond_2
    return-void
.end method
