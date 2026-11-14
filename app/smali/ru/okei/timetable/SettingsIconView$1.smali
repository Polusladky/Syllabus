.class Lru/okei/timetable/SettingsIconView$1;
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


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsIconView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lru/okei/timetable/SettingsIconView$1;->this$0:Lru/okei/timetable/SettingsIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lru/okei/timetable/SettingsIconView$1;->this$0:Lru/okei/timetable/SettingsIconView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lru/okei/timetable/SettingsIconView;->-$$Nest$fputstrips(Lru/okei/timetable/SettingsIconView;F)V

    .line 72
    iget-object p1, p0, Lru/okei/timetable/SettingsIconView$1;->this$0:Lru/okei/timetable/SettingsIconView;

    invoke-virtual {p1}, Lru/okei/timetable/SettingsIconView;->invalidate()V

    return-void
.end method
