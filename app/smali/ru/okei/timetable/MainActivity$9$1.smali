.class Lru/okei/timetable/MainActivity$9$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/MainActivity$9;


# direct methods
.method constructor <init>(Lru/okei/timetable/MainActivity$9;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lru/okei/timetable/MainActivity$9$1;->this$1:Lru/okei/timetable/MainActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 277
    iget-object v0, p0, Lru/okei/timetable/MainActivity$9$1;->this$1:Lru/okei/timetable/MainActivity$9;

    iget-object v0, v0, Lru/okei/timetable/MainActivity$9;->this$0:Lru/okei/timetable/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/okei/timetable/MainActivity$9$1;->this$1:Lru/okei/timetable/MainActivity$9;

    iget-object v2, v2, Lru/okei/timetable/MainActivity$9;->this$0:Lru/okei/timetable/MainActivity;

    const-class v3, Lru/okei/timetable/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lru/okei/timetable/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
