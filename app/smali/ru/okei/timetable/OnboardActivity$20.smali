.class Lru/okei/timetable/OnboardActivity$20;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity;->scrambleTo(Landroid/widget/TextView;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/OnboardActivity;

.field final synthetic val$color:I

.field final synthetic val$frame:I

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;ILandroid/widget/TextView;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 831
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$20;->this$0:Lru/okei/timetable/OnboardActivity;

    iput p2, p0, Lru/okei/timetable/OnboardActivity$20;->val$frame:I

    iput-object p3, p0, Lru/okei/timetable/OnboardActivity$20;->val$view:Landroid/widget/TextView;

    iput-object p4, p0, Lru/okei/timetable/OnboardActivity$20;->val$text:Ljava/lang/String;

    iput p5, p0, Lru/okei/timetable/OnboardActivity$20;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 834
    iget v0, p0, Lru/okei/timetable/OnboardActivity$20;->val$frame:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 835
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$20;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$20;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$20;->val$view:Landroid/widget/TextView;

    iget v1, p0, Lru/okei/timetable/OnboardActivity$20;->val$color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 839
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 840
    :goto_0
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity$20;->val$text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 841
    iget-object v2, p0, Lru/okei/timetable/OnboardActivity$20;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v2}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetrandom(Lru/okei/timetable/OnboardActivity;)Ljava/util/Random;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const-string v3, "@#%&$?!/\\|<>*+=-~"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 843
    :cond_1
    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$20;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
