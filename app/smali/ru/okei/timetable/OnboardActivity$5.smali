.class Lru/okei/timetable/OnboardActivity$5;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity;->playIntro()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/OnboardActivity;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$5;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 256
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$5;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetpage(Lru/okei/timetable/OnboardActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$5;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetbar(Lru/okei/timetable/OnboardActivity;)Lru/okei/timetable/ui/SplitBar;

    move-result-object v0

    const-wide/16 v1, 0x6a4

    invoke-virtual {v0, v1, v2}, Lru/okei/timetable/ui/SplitBar;->animateBorder(J)V

    .line 260
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$5;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetmain(Lru/okei/timetable/OnboardActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/OnboardActivity$5$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/OnboardActivity$5$1;-><init>(Lru/okei/timetable/OnboardActivity$5;)V

    const-wide/16 v2, 0x708

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
