.class Lru/okei/timetable/SetupActivity$1;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SetupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SetupActivity;


# direct methods
.method constructor <init>(Lru/okei/timetable/SetupActivity;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lru/okei/timetable/SetupActivity$1;->this$0:Lru/okei/timetable/SetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-static {p1}, Lru/okei/timetable/ui/Motion;->press(Landroid/view/View;)V

    .line 61
    iget-object p1, p0, Lru/okei/timetable/SetupActivity$1;->this$0:Lru/okei/timetable/SetupActivity;

    invoke-virtual {p1}, Lru/okei/timetable/SetupActivity;->finish()V

    return-void
.end method
