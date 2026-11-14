.class Lru/okei/timetable/ShareActivity$5;
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

    .line 138
    iput-object p1, p0, Lru/okei/timetable/ShareActivity$5;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 141
    invoke-static {p1}, Lru/okei/timetable/ui/Motion;->press(Landroid/view/View;)V

    .line 142
    iget-object p1, p0, Lru/okei/timetable/ShareActivity$5;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {p1}, Lru/okei/timetable/ShareActivity;->-$$Nest$mcopyText(Lru/okei/timetable/ShareActivity;)V

    return-void
.end method
