.class Lru/okei/timetable/OnboardActivity$10;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity;->playReverseSplit(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lru/okei/timetable/OnboardActivity;

.field final synthetic val$back:Ljava/lang/String;

.field final synthetic val$done:Ljava/lang/Runnable;

.field final synthetic val$gen:I


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 409
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$10;->this$0:Lru/okei/timetable/OnboardActivity;

    iput-object p2, p0, Lru/okei/timetable/OnboardActivity$10;->val$back:Ljava/lang/String;

    iput p3, p0, Lru/okei/timetable/OnboardActivity$10;->val$gen:I

    iput-object p4, p0, Lru/okei/timetable/OnboardActivity$10;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lru/okei/timetable/OnboardActivity$10;->index:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 414
    iget v0, p0, Lru/okei/timetable/OnboardActivity$10;->val$gen:I

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$10;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v1}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetgeneration(Lru/okei/timetable/OnboardActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 417
    :cond_0
    iget v0, p0, Lru/okei/timetable/OnboardActivity$10;->index:I

    if-gtz v0, :cond_1

    .line 418
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$10;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetbar(Lru/okei/timetable/OnboardActivity;)Lru/okei/timetable/ui/SplitBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/SplitBar;->setBackText(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$10;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetbar(Lru/okei/timetable/OnboardActivity;)Lru/okei/timetable/ui/SplitBar;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/OnboardActivity$10$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/OnboardActivity$10$1;-><init>(Lru/okei/timetable/OnboardActivity$10;)V

    const-wide/16 v2, 0x2f8

    invoke-virtual {v0, v2, v3, v1}, Lru/okei/timetable/ui/SplitBar;->animateMerge(JLjava/lang/Runnable;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 432
    iput v0, p0, Lru/okei/timetable/OnboardActivity$10;->index:I

    .line 433
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$10;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetbar(Lru/okei/timetable/OnboardActivity;)Lru/okei/timetable/ui/SplitBar;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$10;->val$back:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lru/okei/timetable/OnboardActivity$10;->index:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/SplitBar;->setBackText(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$10;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetmain(Lru/okei/timetable/OnboardActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
