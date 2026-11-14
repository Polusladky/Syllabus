.class Lru/okei/timetable/OnboardActivity$15;
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

.field final synthetic val$example:Landroid/widget/TextView;

.field final synthetic val$filled:Z


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;ZLandroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 602
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$15;->this$0:Lru/okei/timetable/OnboardActivity;

    iput-boolean p2, p0, Lru/okei/timetable/OnboardActivity$15;->val$filled:Z

    iput-object p3, p0, Lru/okei/timetable/OnboardActivity$15;->val$example:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 605
    iget-boolean v0, p0, Lru/okei/timetable/OnboardActivity$15;->val$filled:Z

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$15;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetgroupInput(Lru/okei/timetable/OnboardActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAlpha(F)V

    .line 607
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$15;->val$example:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity$15;->this$0:Lru/okei/timetable/OnboardActivity;

    iget-object v3, p0, Lru/okei/timetable/OnboardActivity$15;->val$example:Landroid/widget/TextView;

    const v0, 0x7f0600ca

    invoke-virtual {v2, v0}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x5f

    new-instance v9, Lru/okei/timetable/OnboardActivity$15$1;

    invoke-direct {v9, p0}, Lru/okei/timetable/OnboardActivity$15$1;-><init>(Lru/okei/timetable/OnboardActivity$15;)V

    invoke-static/range {v2 .. v9}, Lru/okei/timetable/OnboardActivity;->-$$Nest$mtypeTextScramble(Lru/okei/timetable/OnboardActivity;Landroid/widget/TextView;Ljava/lang/String;JJLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method
