.class Lru/okei/timetable/ShareActivity$7;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ShareActivity;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/ShareActivity;

.field final synthetic val$index:I

.field final synthetic val$row:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lru/okei/timetable/ShareActivity;ILandroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lru/okei/timetable/ShareActivity$7;->this$0:Lru/okei/timetable/ShareActivity;

    iput p2, p0, Lru/okei/timetable/ShareActivity$7;->val$index:I

    iput-object p3, p0, Lru/okei/timetable/ShareActivity$7;->val$row:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 196
    iget-object v0, p0, Lru/okei/timetable/ShareActivity$7;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {v0}, Lru/okei/timetable/ShareActivity;->-$$Nest$fgetselected(Lru/okei/timetable/ShareActivity;)[Z

    move-result-object v0

    iget v1, p0, Lru/okei/timetable/ShareActivity$7;->val$index:I

    iget-object v2, p0, Lru/okei/timetable/ShareActivity$7;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {v2}, Lru/okei/timetable/ShareActivity;->-$$Nest$fgetselected(Lru/okei/timetable/ShareActivity;)[Z

    move-result-object v2

    iget v3, p0, Lru/okei/timetable/ShareActivity$7;->val$index:I

    aget-boolean v2, v2, v3

    xor-int/lit8 v2, v2, 0x1

    aput-boolean v2, v0, v1

    .line 197
    invoke-static {p1}, Lru/okei/timetable/ui/Motion;->press(Landroid/view/View;)V

    .line 198
    iget-object p1, p0, Lru/okei/timetable/ShareActivity$7;->val$row:Landroid/widget/TextView;

    invoke-static {p1}, Lru/okei/timetable/ui/Motion;->flash(Landroid/view/View;)V

    .line 199
    iget-object p1, p0, Lru/okei/timetable/ShareActivity$7;->this$0:Lru/okei/timetable/ShareActivity;

    iget-object v0, p0, Lru/okei/timetable/ShareActivity$7;->val$row:Landroid/widget/TextView;

    iget v1, p0, Lru/okei/timetable/ShareActivity$7;->val$index:I

    invoke-static {p1, v0, v1}, Lru/okei/timetable/ShareActivity;->-$$Nest$mpaintRow(Lru/okei/timetable/ShareActivity;Landroid/widget/TextView;I)V

    return-void
.end method
