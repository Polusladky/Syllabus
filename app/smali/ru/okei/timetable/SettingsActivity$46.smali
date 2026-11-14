.class Lru/okei/timetable/SettingsActivity$46;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsActivity;->scramble(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private frame:I

.field final synthetic this$0:Lru/okei/timetable/SettingsActivity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$letters:Ljava/lang/String;

.field final synthetic val$random:Ljava/util/Random;

.field final synthetic val$target:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/util/Random;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 844
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$46;->this$0:Lru/okei/timetable/SettingsActivity;

    iput-object p2, p0, Lru/okei/timetable/SettingsActivity$46;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lru/okei/timetable/SettingsActivity$46;->val$target:Ljava/lang/String;

    iput-object p4, p0, Lru/okei/timetable/SettingsActivity$46;->val$random:Ljava/util/Random;

    iput-object p5, p0, Lru/okei/timetable/SettingsActivity$46;->val$letters:Ljava/lang/String;

    iput-object p6, p0, Lru/okei/timetable/SettingsActivity$46;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 849
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$46;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$46;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v1}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fgetgroupCodeView(Lru/okei/timetable/SettingsActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 852
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$46;->val$target:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lru/okei/timetable/SettingsActivity$46;->frame:I

    mul-int v1, v1, v2

    const/16 v2, 0xc

    div-int/2addr v1, v2

    const/4 v3, 0x0

    .line 854
    :goto_0
    iget-object v4, p0, Lru/okei/timetable/SettingsActivity$46;->val$target:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 855
    iget-object v4, p0, Lru/okei/timetable/SettingsActivity$46;->val$target:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v3, v1, :cond_1

    .line 857
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 858
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 859
    iget-object v4, p0, Lru/okei/timetable/SettingsActivity$46;->val$random:Ljava/util/Random;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 860
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 861
    iget-object v4, p0, Lru/okei/timetable/SettingsActivity$46;->val$letters:Ljava/lang/String;

    iget-object v5, p0, Lru/okei/timetable/SettingsActivity$46;->val$random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 863
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 866
    :cond_4
    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$46;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    iget v0, p0, Lru/okei/timetable/SettingsActivity$46;->frame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lru/okei/timetable/SettingsActivity$46;->frame:I

    if-gt v0, v2, :cond_5

    .line 869
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$46;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x37

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 871
    :cond_5
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$46;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$46;->val$target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
