.class Lru/okei/timetable/ShareActivity$2;
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

    .line 91
    iput-object p1, p0, Lru/okei/timetable/ShareActivity$2;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lru/okei/timetable/ShareActivity$2;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {p1}, Lru/okei/timetable/ShareActivity;->-$$Nest$fgetasText(Lru/okei/timetable/ShareActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lru/okei/timetable/ShareActivity$2;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {p1}, Lru/okei/timetable/ShareActivity;->-$$Nest$mshareText(Lru/okei/timetable/ShareActivity;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lru/okei/timetable/ShareActivity$2;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {p1}, Lru/okei/timetable/ShareActivity;->-$$Nest$mshare(Lru/okei/timetable/ShareActivity;)V

    :goto_0
    return-void
.end method
