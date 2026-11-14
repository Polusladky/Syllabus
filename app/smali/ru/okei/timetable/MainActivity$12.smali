.class Lru/okei/timetable/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity;->handleDebugNotify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/MainActivity;


# direct methods
.method constructor <init>(Lru/okei/timetable/MainActivity;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lru/okei/timetable/MainActivity$12;->this$0:Lru/okei/timetable/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 412
    iget-object v0, p0, Lru/okei/timetable/MainActivity$12;->this$0:Lru/okei/timetable/MainActivity;

    const-string v1, "\u041f\u0420\u041e\u0412\u0415\u0420\u041a\u0410 \u0418\u041a\u041e\u041d\u041a\u0418"

    invoke-static {v0, v1}, Lru/okei/timetable/Notifier;->showScheduleUpdated(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
