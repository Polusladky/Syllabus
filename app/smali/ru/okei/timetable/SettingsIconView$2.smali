.class Lru/okei/timetable/SettingsIconView$2;
.super Ljava/lang/Object;
.source "SettingsIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsIconView;->playAppear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SettingsIconView;

.field final synthetic val$start:[F


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsIconView;[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lru/okei/timetable/SettingsIconView$2;->this$0:Lru/okei/timetable/SettingsIconView;

    iput-object p2, p0, Lru/okei/timetable/SettingsIconView$2;->val$start:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 87
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 88
    iget-object v0, p0, Lru/okei/timetable/SettingsIconView$2;->this$0:Lru/okei/timetable/SettingsIconView;

    const/high16 v1, 0x40200000    # 2.5f

    mul-float v1, v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Lru/okei/timetable/SettingsIconView;->-$$Nest$fputknobs(Lru/okei/timetable/SettingsIconView;F)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lru/okei/timetable/SettingsIconView$2;->this$0:Lru/okei/timetable/SettingsIconView;

    invoke-static {v1}, Lru/okei/timetable/SettingsIconView;->-$$Nest$fgetknob(Lru/okei/timetable/SettingsIconView;)[F

    move-result-object v1

    iget-object v2, p0, Lru/okei/timetable/SettingsIconView$2;->val$start:[F

    aget v2, v2, v0

    invoke-static {}, Lru/okei/timetable/SettingsIconView;->-$$Nest$sfgetTARGETS()[F

    move-result-object v3

    aget v3, v3, v0

    iget-object v4, p0, Lru/okei/timetable/SettingsIconView$2;->val$start:[F

    aget v4, v4, v0

    sub-float/2addr v3, v4

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lru/okei/timetable/SettingsIconView$2;->this$0:Lru/okei/timetable/SettingsIconView;

    invoke-virtual {p1}, Lru/okei/timetable/SettingsIconView;->invalidate()V

    return-void
.end method
