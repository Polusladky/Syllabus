.class Lru/okei/timetable/DiagnosticsActivity$12;
.super Ljava/lang/Object;
.source "DiagnosticsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/DiagnosticsActivity;->addAction(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/DiagnosticsActivity;

.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lru/okei/timetable/DiagnosticsActivity;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 448
    iput-object p1, p0, Lru/okei/timetable/DiagnosticsActivity$12;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    iput-object p2, p0, Lru/okei/timetable/DiagnosticsActivity$12;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 451
    invoke-static {p1}, Lru/okei/timetable/ui/Motion;->press(Landroid/view/View;)V

    .line 452
    iget-object p1, p0, Lru/okei/timetable/DiagnosticsActivity$12;->val$action:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
