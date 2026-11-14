.class Lru/okei/timetable/OnboardActivity$12;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity;->pageGroup(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/OnboardActivity;

.field final synthetic val$note:Landroid/widget/TextView;

.field final synthetic val$shelf:Landroid/widget/FrameLayout;

.field final synthetic val$shelfView:Lru/okei/timetable/ui/Shelf;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;Landroid/widget/FrameLayout;Lru/okei/timetable/ui/Shelf;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 558
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$12;->this$0:Lru/okei/timetable/OnboardActivity;

    iput-object p2, p0, Lru/okei/timetable/OnboardActivity$12;->val$shelf:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lru/okei/timetable/OnboardActivity$12;->val$shelfView:Lru/okei/timetable/ui/Shelf;

    iput-object p4, p0, Lru/okei/timetable/OnboardActivity$12;->val$note:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 561
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$12;->val$shelf:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 562
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$12;->val$shelfView:Lru/okei/timetable/ui/Shelf;

    const-wide/16 v1, 0x1a4

    invoke-virtual {v0, v1, v2}, Lru/okei/timetable/ui/Shelf;->grow(J)V

    .line 563
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$12;->this$0:Lru/okei/timetable/OnboardActivity;

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$12;->val$note:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lru/okei/timetable/OnboardActivity;->-$$Nest$mfadeIn(Lru/okei/timetable/OnboardActivity;Landroid/view/View;J)V

    return-void
.end method
