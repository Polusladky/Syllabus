.class Lru/okei/timetable/ShareActivity$3;
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

    .line 108
    iput-object p1, p0, Lru/okei/timetable/ShareActivity$3;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lru/okei/timetable/ShareActivity$3;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {v0}, Lru/okei/timetable/ShareActivity;->-$$Nest$fgetasText(Lru/okei/timetable/ShareActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/ShareActivity$3;->this$0:Lru/okei/timetable/ShareActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/okei/timetable/ShareActivity;->-$$Nest$fputasText(Lru/okei/timetable/ShareActivity;Z)V

    .line 115
    invoke-static {p1}, Lru/okei/timetable/ui/Motion;->press(Landroid/view/View;)V

    .line 116
    iget-object p1, p0, Lru/okei/timetable/ShareActivity$3;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {p1}, Lru/okei/timetable/ShareActivity;->-$$Nest$mupdateMode(Lru/okei/timetable/ShareActivity;)V

    return-void
.end method
