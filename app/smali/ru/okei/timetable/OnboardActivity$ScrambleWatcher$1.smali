.class Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity$ScrambleWatcher;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/OnboardActivity$ScrambleWatcher;

.field final synthetic val$real:Ljava/lang/String;

.field final synthetic val$ticks:[I


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity$ScrambleWatcher;[ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 652
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;->this$1:Lru/okei/timetable/OnboardActivity$ScrambleWatcher;

    iput-object p2, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;->val$ticks:[I

    iput-object p3, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;->val$real:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 655
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;->val$ticks:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 656
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;->this$1:Lru/okei/timetable/OnboardActivity$ScrambleWatcher;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetgroupInput(Lru/okei/timetable/OnboardActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;->val$real:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;->this$1:Lru/okei/timetable/OnboardActivity$ScrambleWatcher;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetgroupInput(Lru/okei/timetable/OnboardActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;->val$real:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 658
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;->this$1:Lru/okei/timetable/OnboardActivity$ScrambleWatcher;

    invoke-static {v0, v1}, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;->-$$Nest$fputguard(Lru/okei/timetable/OnboardActivity$ScrambleWatcher;Z)V

    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;->val$real:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 662
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;->this$1:Lru/okei/timetable/OnboardActivity$ScrambleWatcher;

    iget-object v2, v2, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v2}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetrandom(Lru/okei/timetable/OnboardActivity;)Ljava/util/Random;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const-string v3, "@#%&$?!/\\|<>*+=-~"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 663
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;->this$1:Lru/okei/timetable/OnboardActivity$ScrambleWatcher;

    iget-object v2, v2, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v2}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetgroupInput(Lru/okei/timetable/OnboardActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;->this$1:Lru/okei/timetable/OnboardActivity$ScrambleWatcher;

    iget-object v2, v2, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v2}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetgroupInput(Lru/okei/timetable/OnboardActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 665
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;->val$ticks:[I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 666
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;->this$1:Lru/okei/timetable/OnboardActivity$ScrambleWatcher;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetmain(Lru/okei/timetable/OnboardActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x6e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
