.class Lru/okei/timetable/SetupActivity$7;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SetupActivity;->addRow(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SetupActivity;

.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lru/okei/timetable/SetupActivity;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lru/okei/timetable/SetupActivity$7;->this$0:Lru/okei/timetable/SetupActivity;

    iput-object p2, p0, Lru/okei/timetable/SetupActivity$7;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 175
    invoke-static {p1}, Lru/okei/timetable/Haptics;->tick(Landroid/view/View;)V

    .line 176
    invoke-static {p1}, Lru/okei/timetable/ui/Motion;->press(Landroid/view/View;)V

    .line 177
    iget-object p1, p0, Lru/okei/timetable/SetupActivity$7;->val$action:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
