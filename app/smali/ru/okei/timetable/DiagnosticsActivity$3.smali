.class Lru/okei/timetable/DiagnosticsActivity$3;
.super Ljava/lang/Object;
.source "DiagnosticsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/DiagnosticsActivity;->reload()V
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

    .line 125
    iput-object p1, p0, Lru/okei/timetable/DiagnosticsActivity$3;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 128
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity$3;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    invoke-static {v0}, Lru/okei/timetable/Diagnostics;->collect(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lru/okei/timetable/DiagnosticsActivity$3;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    new-instance v2, Lru/okei/timetable/DiagnosticsActivity$3$1;

    invoke-direct {v2, p0, v0}, Lru/okei/timetable/DiagnosticsActivity$3$1;-><init>(Lru/okei/timetable/DiagnosticsActivity$3;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lru/okei/timetable/DiagnosticsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
