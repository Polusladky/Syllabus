.class Lru/okei/timetable/SettingsIconView$4;
.super Ljava/lang/Object;
.source "SettingsIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsIconView;->playShuffle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SettingsIconView;

.field final synthetic val$from:[F

.field final synthetic val$to:[F


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsIconView;[F[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lru/okei/timetable/SettingsIconView$4;->this$0:Lru/okei/timetable/SettingsIconView;

    iput-object p2, p0, Lru/okei/timetable/SettingsIconView$4;->val$from:[F

    iput-object p3, p0, Lru/okei/timetable/SettingsIconView$4;->val$to:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 115
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lru/okei/timetable/SettingsIconView$4;->this$0:Lru/okei/timetable/SettingsIconView;

    invoke-static {v1}, Lru/okei/timetable/SettingsIconView;->-$$Nest$fgetknob(Lru/okei/timetable/SettingsIconView;)[F

    move-result-object v1

    iget-object v2, p0, Lru/okei/timetable/SettingsIconView$4;->val$from:[F

    aget v2, v2, v0

    iget-object v3, p0, Lru/okei/timetable/SettingsIconView$4;->val$to:[F

    aget v3, v3, v0

    sub-float/2addr v3, v2

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lru/okei/timetable/SettingsIconView$4;->this$0:Lru/okei/timetable/SettingsIconView;

    invoke-virtual {p1}, Lru/okei/timetable/SettingsIconView;->invalidate()V

    return-void
.end method
