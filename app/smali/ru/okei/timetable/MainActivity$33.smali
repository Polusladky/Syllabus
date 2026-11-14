.class Lru/okei/timetable/MainActivity$33;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity;->openDebugScreen(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/MainActivity;

.field final synthetic val$next:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lru/okei/timetable/MainActivity;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1690
    iput-object p1, p0, Lru/okei/timetable/MainActivity$33;->this$0:Lru/okei/timetable/MainActivity;

    iput-object p2, p0, Lru/okei/timetable/MainActivity$33;->val$next:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1694
    :try_start_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity$33;->this$0:Lru/okei/timetable/MainActivity;

    iget-object v1, p0, Lru/okei/timetable/MainActivity$33;->val$next:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lru/okei/timetable/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MainActivity"

    .line 1696
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
