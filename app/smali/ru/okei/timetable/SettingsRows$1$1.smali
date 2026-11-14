.class Lru/okei/timetable/SettingsRows$1$1;
.super Ljava/lang/Object;
.source "SettingsRows.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsRows$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/SettingsRows$1;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsRows$1;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lru/okei/timetable/SettingsRows$1$1;->this$1:Lru/okei/timetable/SettingsRows$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 80
    iget-object v0, p0, Lru/okei/timetable/SettingsRows$1$1;->this$1:Lru/okei/timetable/SettingsRows$1;

    iget-object v0, v0, Lru/okei/timetable/SettingsRows$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
