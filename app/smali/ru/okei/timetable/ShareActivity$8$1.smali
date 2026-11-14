.class Lru/okei/timetable/ShareActivity$8$1;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ShareActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/ShareActivity$8;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lru/okei/timetable/ShareActivity$8;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lru/okei/timetable/ShareActivity$8$1;->this$1:Lru/okei/timetable/ShareActivity$8;

    iput-object p2, p0, Lru/okei/timetable/ShareActivity$8$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 338
    iget-object v0, p0, Lru/okei/timetable/ShareActivity$8$1;->this$1:Lru/okei/timetable/ShareActivity$8;

    iget-object v0, v0, Lru/okei/timetable/ShareActivity$8;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {v0}, Lru/okei/timetable/ShareActivity;->-$$Nest$fgetgo(Lru/okei/timetable/ShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 339
    iget-object v0, p0, Lru/okei/timetable/ShareActivity$8$1;->this$1:Lru/okei/timetable/ShareActivity$8;

    iget-object v0, v0, Lru/okei/timetable/ShareActivity$8;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {v0}, Lru/okei/timetable/ShareActivity;->-$$Nest$fgetgo(Lru/okei/timetable/ShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/ShareActivity$8$1;->this$1:Lru/okei/timetable/ShareActivity$8;

    iget-object v1, v1, Lru/okei/timetable/ShareActivity$8;->this$0:Lru/okei/timetable/ShareActivity;

    const v2, 0x7f0601ce

    invoke-virtual {v1, v2}, Lru/okei/timetable/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v0, p0, Lru/okei/timetable/ShareActivity$8$1;->this$1:Lru/okei/timetable/ShareActivity$8;

    iget-object v0, v0, Lru/okei/timetable/ShareActivity$8;->this$0:Lru/okei/timetable/ShareActivity;

    iget-object v1, p0, Lru/okei/timetable/ShareActivity$8$1;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lru/okei/timetable/ShareActivity;->-$$Nest$msend(Lru/okei/timetable/ShareActivity;Landroid/net/Uri;)V

    return-void
.end method
