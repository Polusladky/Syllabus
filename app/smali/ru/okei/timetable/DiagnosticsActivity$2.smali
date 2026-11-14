.class Lru/okei/timetable/DiagnosticsActivity$2;
.super Ljava/lang/Object;
.source "DiagnosticsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/DiagnosticsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/DiagnosticsActivity;


# direct methods
.method constructor <init>(Lru/okei/timetable/DiagnosticsActivity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lru/okei/timetable/DiagnosticsActivity$2;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-static {p1}, Lru/okei/timetable/ui/Motion;->press(Landroid/view/View;)V

    .line 100
    iget-object p1, p0, Lru/okei/timetable/DiagnosticsActivity$2;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    invoke-virtual {p1}, Lru/okei/timetable/DiagnosticsActivity;->finish()V

    return-void
.end method
