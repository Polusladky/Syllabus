.class Lru/okei/timetable/SettingsRows$1;
.super Ljava/lang/Object;
.source "SettingsRows.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsRows;->button(Ljava/lang/String;Lru/okei/timetable/SettingsRows$Action;)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SettingsRows;

.field final synthetic val$action:Lru/okei/timetable/SettingsRows$Action;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsRows;Landroid/widget/TextView;Lru/okei/timetable/SettingsRows$Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lru/okei/timetable/SettingsRows$1;->this$0:Lru/okei/timetable/SettingsRows;

    iput-object p2, p0, Lru/okei/timetable/SettingsRows$1;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lru/okei/timetable/SettingsRows$1;->val$action:Lru/okei/timetable/SettingsRows$Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lru/okei/timetable/SettingsRows$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f59999a    # 0.85f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x46

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lru/okei/timetable/SettingsRows$1$1;

    invoke-direct {v0, p0}, Lru/okei/timetable/SettingsRows$1$1;-><init>(Lru/okei/timetable/SettingsRows$1;)V

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 83
    iget-object p1, p0, Lru/okei/timetable/SettingsRows$1;->val$view:Landroid/widget/TextView;

    invoke-static {p1}, Lru/okei/timetable/Haptics;->tick(Landroid/view/View;)V

    .line 84
    iget-object p1, p0, Lru/okei/timetable/SettingsRows$1;->val$action:Lru/okei/timetable/SettingsRows$Action;

    invoke-interface {p1}, Lru/okei/timetable/SettingsRows$Action;->run()V

    return-void
.end method
