.class Lru/okei/timetable/OnboardActivity$13;
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

.field final synthetic val$hint:Landroid/widget/TextView;

.field final synthetic val$label:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 566
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$13;->this$0:Lru/okei/timetable/OnboardActivity;

    iput-object p2, p0, Lru/okei/timetable/OnboardActivity$13;->val$label:Landroid/widget/TextView;

    iput-object p3, p0, Lru/okei/timetable/OnboardActivity$13;->val$hint:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 569
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$13;->this$0:Lru/okei/timetable/OnboardActivity;

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$13;->val$label:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lru/okei/timetable/OnboardActivity;->-$$Nest$mfadeIn(Lru/okei/timetable/OnboardActivity;Landroid/view/View;J)V

    .line 570
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$13;->this$0:Lru/okei/timetable/OnboardActivity;

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$13;->val$hint:Landroid/widget/TextView;

    const-wide/16 v2, 0x3c

    invoke-static {v0, v1, v2, v3}, Lru/okei/timetable/OnboardActivity;->-$$Nest$mfadeIn(Lru/okei/timetable/OnboardActivity;Landroid/view/View;J)V

    .line 571
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$13;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetgroupInput(Lru/okei/timetable/OnboardActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAlpha(F)V

    return-void
.end method
