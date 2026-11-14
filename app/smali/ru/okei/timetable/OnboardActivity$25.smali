.class Lru/okei/timetable/OnboardActivity$25;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity;->typeTextScramble(Landroid/widget/TextView;Ljava/lang/String;JJLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lru/okei/timetable/OnboardActivity;

.field final synthetic val$done:Ljava/lang/Runnable;

.field final synthetic val$perChar:J

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;Ljava/lang/String;Landroid/widget/TextView;JLjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 970
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$25;->this$0:Lru/okei/timetable/OnboardActivity;

    iput-object p2, p0, Lru/okei/timetable/OnboardActivity$25;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lru/okei/timetable/OnboardActivity$25;->val$view:Landroid/widget/TextView;

    iput-wide p4, p0, Lru/okei/timetable/OnboardActivity$25;->val$perChar:J

    iput-object p6, p0, Lru/okei/timetable/OnboardActivity$25;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$25;->val$text:Ljava/lang/String;

    iget v2, p0, Lru/okei/timetable/OnboardActivity$25;->index:I

    .line 976
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 977
    iget v1, p0, Lru/okei/timetable/OnboardActivity$25;->index:I

    iget-object v2, p0, Lru/okei/timetable/OnboardActivity$25;->val$text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 978
    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$25;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v1}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetrandom(Lru/okei/timetable/OnboardActivity;)Ljava/util/Random;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const-string v2, "@#%&$?!/\\|<>*+=-~"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 980
    :cond_0
    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$25;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    iget v0, p0, Lru/okei/timetable/OnboardActivity$25;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lru/okei/timetable/OnboardActivity$25;->index:I

    .line 982
    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$25;->val$text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_1

    .line 983
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$25;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetmain(Lru/okei/timetable/OnboardActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lru/okei/timetable/OnboardActivity$25;->val$perChar:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 985
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$25;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$25;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$25;->val$done:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 987
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method
