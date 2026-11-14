.class Lru/okei/timetable/OnboardActivity$8;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity;->playSplit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/OnboardActivity;

.field final synthetic val$gen:I


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 362
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$8;->this$0:Lru/okei/timetable/OnboardActivity;

    iput p2, p0, Lru/okei/timetable/OnboardActivity$8;->val$gen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 365
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$8;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetpage(Lru/okei/timetable/OnboardActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lru/okei/timetable/OnboardActivity$8;->val$gen:I

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$8;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v1}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetgeneration(Lru/okei/timetable/OnboardActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$8;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetbar(Lru/okei/timetable/OnboardActivity;)Lru/okei/timetable/ui/SplitBar;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/OnboardActivity$8$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/OnboardActivity$8$1;-><init>(Lru/okei/timetable/OnboardActivity$8;)V

    const-wide/16 v2, 0x140

    invoke-virtual {v0, v2, v3, v1}, Lru/okei/timetable/ui/SplitBar;->animateSeam(JLjava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
