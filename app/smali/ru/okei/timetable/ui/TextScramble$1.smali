.class Lru/okei/timetable/ui/TextScramble$1;
.super Ljava/lang/Object;
.source "TextScramble.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ui/TextScramble;->animate(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private frame:I

.field final synthetic val$frames:I

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$random:Ljava/util/Random;

.field final synthetic val$target:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/Random;Landroid/widget/TextView;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lru/okei/timetable/ui/TextScramble$1;->val$target:Ljava/lang/String;

    iput p2, p0, Lru/okei/timetable/ui/TextScramble$1;->val$frames:I

    iput-object p3, p0, Lru/okei/timetable/ui/TextScramble$1;->val$random:Ljava/util/Random;

    iput-object p4, p0, Lru/okei/timetable/ui/TextScramble$1;->val$view:Landroid/widget/TextView;

    iput-object p5, p0, Lru/okei/timetable/ui/TextScramble$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    iget-object v1, p0, Lru/okei/timetable/ui/TextScramble$1;->val$target:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lru/okei/timetable/ui/TextScramble$1;->frame:I

    mul-int v1, v1, v2

    iget v2, p0, Lru/okei/timetable/ui/TextScramble$1;->val$frames:I

    div-int/2addr v1, v2

    const/4 v2, 0x0

    .line 35
    :goto_0
    iget-object v3, p0, Lru/okei/timetable/ui/TextScramble$1;->val$target:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 36
    iget-object v3, p0, Lru/okei/timetable/ui/TextScramble$1;->val$target:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v2, v1, :cond_3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 40
    iget-object v3, p0, Lru/okei/timetable/ui/TextScramble$1;->val$random:Ljava/util/Random;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 41
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 42
    iget-object v3, p0, Lru/okei/timetable/ui/TextScramble$1;->val$random:Ljava/util/Random;

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const-string v4, "\u0410\u0411\u0412\u0413\u0414\u0415\u0416\u0417\u0418\u041a\u041b\u041c\u041d\u041e\u041f\u0420\u0421\u0422\u0423\u0424\u0425\u0426\u0427\u0428\u0429\u042d\u042e\u042f0123456789"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 38
    :cond_3
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_4
    iget-object v1, p0, Lru/okei/timetable/ui/TextScramble$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget v0, p0, Lru/okei/timetable/ui/TextScramble$1;->frame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lru/okei/timetable/ui/TextScramble$1;->frame:I

    .line 49
    iget v1, p0, Lru/okei/timetable/ui/TextScramble$1;->val$frames:I

    if-gt v0, v1, :cond_5

    .line 50
    iget-object v0, p0, Lru/okei/timetable/ui/TextScramble$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x2d

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 52
    :cond_5
    iget-object v0, p0, Lru/okei/timetable/ui/TextScramble$1;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lru/okei/timetable/ui/TextScramble$1;->val$target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
