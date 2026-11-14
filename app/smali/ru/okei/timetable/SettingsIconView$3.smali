.class Lru/okei/timetable/SettingsIconView$3;
.super Ljava/lang/Object;
.source "SettingsIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$glide:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsIconView;Landroid/animation/ValueAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lru/okei/timetable/SettingsIconView$3;->this$0:Lru/okei/timetable/SettingsIconView;

    iput-object p2, p0, Lru/okei/timetable/SettingsIconView$3;->val$glide:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 98
    iget-object v0, p0, Lru/okei/timetable/SettingsIconView$3;->val$glide:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
