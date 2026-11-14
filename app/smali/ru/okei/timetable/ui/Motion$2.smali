.class Lru/okei/timetable/ui/Motion$2;
.super Ljava/lang/Object;
.source "Motion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ui/Motion;->stagger(Landroid/view/ViewGroup;JFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$animated:I

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$shiftDp:F

.field final synthetic val$stepMs:J


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;IJF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lru/okei/timetable/ui/Motion$2;->val$parent:Landroid/view/ViewGroup;

    iput p2, p0, Lru/okei/timetable/ui/Motion$2;->val$animated:I

    iput-wide p3, p0, Lru/okei/timetable/ui/Motion$2;->val$stepMs:J

    iput p5, p0, Lru/okei/timetable/ui/Motion$2;->val$shiftDp:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 103
    :goto_0
    iget-object v1, p0, Lru/okei/timetable/ui/Motion$2;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 104
    iget-object v1, p0, Lru/okei/timetable/ui/Motion$2;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 105
    iget v2, p0, Lru/okei/timetable/ui/Motion$2;->val$animated:I

    if-ge v0, v2, :cond_0

    int-to-long v2, v0

    .line 106
    iget-wide v4, p0, Lru/okei/timetable/ui/Motion$2;->val$stepMs:J

    mul-long v2, v2, v4

    iget v4, p0, Lru/okei/timetable/ui/Motion$2;->val$shiftDp:F

    invoke-static {v1, v2, v3, v4}, Lru/okei/timetable/ui/Motion;->appear(Landroid/view/View;JF)V

    goto :goto_1

    .line 108
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 109
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x0

    .line 110
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
