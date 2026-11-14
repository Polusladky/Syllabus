.class Lru/okei/timetable/OnboardActivity$24;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity;->typeText(Landroid/widget/TextView;Ljava/lang/String;JJLjava/lang/Runnable;)V
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
.method constructor <init>(Lru/okei/timetable/OnboardActivity;Landroid/widget/TextView;Ljava/lang/String;JLjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 951
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$24;->this$0:Lru/okei/timetable/OnboardActivity;

    iput-object p2, p0, Lru/okei/timetable/OnboardActivity$24;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lru/okei/timetable/OnboardActivity$24;->val$text:Ljava/lang/String;

    iput-wide p4, p0, Lru/okei/timetable/OnboardActivity$24;->val$perChar:J

    iput-object p6, p0, Lru/okei/timetable/OnboardActivity$24;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 956
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$24;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$24;->val$text:Ljava/lang/String;

    iget v2, p0, Lru/okei/timetable/OnboardActivity$24;->index:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    iget v0, p0, Lru/okei/timetable/OnboardActivity$24;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lru/okei/timetable/OnboardActivity$24;->index:I

    .line 958
    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$24;->val$text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 959
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$24;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetmain(Lru/okei/timetable/OnboardActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lru/okei/timetable/OnboardActivity$24;->val$perChar:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 960
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$24;->val$done:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 961
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method
