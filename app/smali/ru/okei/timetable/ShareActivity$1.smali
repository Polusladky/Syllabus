.class Lru/okei/timetable/ShareActivity$1;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/ShareActivity;


# direct methods
.method constructor <init>(Lru/okei/timetable/ShareActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lru/okei/timetable/ShareActivity$1;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 82
    :goto_0
    iget-object v1, p0, Lru/okei/timetable/ShareActivity$1;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {v1}, Lru/okei/timetable/ShareActivity;->-$$Nest$fgetselected(Lru/okei/timetable/ShareActivity;)[Z

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lru/okei/timetable/ShareActivity$1;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {v1}, Lru/okei/timetable/ShareActivity;->-$$Nest$fgetselected(Lru/okei/timetable/ShareActivity;)[Z

    move-result-object v1

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p1}, Lru/okei/timetable/ui/Motion;->press(Landroid/view/View;)V

    .line 86
    iget-object p1, p0, Lru/okei/timetable/ShareActivity$1;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {p1}, Lru/okei/timetable/ShareActivity;->-$$Nest$mbuild(Lru/okei/timetable/ShareActivity;)V

    return-void
.end method
