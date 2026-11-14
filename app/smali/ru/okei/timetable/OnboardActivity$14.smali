.class Lru/okei/timetable/OnboardActivity$14;
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

.field final synthetic val$shelf:Landroid/widget/FrameLayout;

.field final synthetic val$shelfView:Lru/okei/timetable/ui/Shelf;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;Landroid/widget/FrameLayout;Lru/okei/timetable/ui/Shelf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 592
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$14;->this$0:Lru/okei/timetable/OnboardActivity;

    iput-object p2, p0, Lru/okei/timetable/OnboardActivity$14;->val$shelf:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lru/okei/timetable/OnboardActivity$14;->val$shelfView:Lru/okei/timetable/ui/Shelf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 595
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$14;->val$shelf:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 596
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$14;->val$shelfView:Lru/okei/timetable/ui/Shelf;

    const-wide/16 v2, 0x26c

    invoke-virtual {v0, v2, v3}, Lru/okei/timetable/ui/Shelf;->grow(J)V

    .line 597
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$14;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetgroupInput(Lru/okei/timetable/OnboardActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAlpha(F)V

    return-void
.end method
