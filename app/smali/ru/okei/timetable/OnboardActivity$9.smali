.class Lru/okei/timetable/OnboardActivity$9;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity;->typeBackLabel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lru/okei/timetable/OnboardActivity;

.field final synthetic val$back:Ljava/lang/String;

.field final synthetic val$gen:I


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 388
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$9;->this$0:Lru/okei/timetable/OnboardActivity;

    iput p2, p0, Lru/okei/timetable/OnboardActivity$9;->val$gen:I

    iput-object p3, p0, Lru/okei/timetable/OnboardActivity$9;->val$back:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 393
    iget v0, p0, Lru/okei/timetable/OnboardActivity$9;->val$gen:I

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$9;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v1}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetgeneration(Lru/okei/timetable/OnboardActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$9;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetbar(Lru/okei/timetable/OnboardActivity;)Lru/okei/timetable/ui/SplitBar;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$9;->val$back:Ljava/lang/String;

    iget v2, p0, Lru/okei/timetable/OnboardActivity$9;->index:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/SplitBar;->setBackText(Ljava/lang/String;)V

    .line 397
    iget v0, p0, Lru/okei/timetable/OnboardActivity$9;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lru/okei/timetable/OnboardActivity$9;->index:I

    .line 398
    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$9;->val$back:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 399
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$9;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetmain(Lru/okei/timetable/OnboardActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x37

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
