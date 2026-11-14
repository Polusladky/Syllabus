.class Lru/okei/timetable/OnboardActivity$22$1;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/OnboardActivity$22;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity$22;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$22$1;->this$1:Lru/okei/timetable/OnboardActivity$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 914
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$22$1;->this$1:Lru/okei/timetable/OnboardActivity$22;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$22;->val$icon:Lru/okei/timetable/ui/PixelGithubView;

    const/16 v1, 0x9

    const-wide/16 v2, 0x5f

    invoke-virtual {v0, v1, v2, v3}, Lru/okei/timetable/ui/PixelGithubView;->revealJerky(IJ)V

    .line 915
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$22$1;->this$1:Lru/okei/timetable/OnboardActivity$22;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$22;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetmain(Lru/okei/timetable/OnboardActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/OnboardActivity$22$1$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/OnboardActivity$22$1$1;-><init>(Lru/okei/timetable/OnboardActivity$22$1;)V

    const-wide/16 v2, 0x1ae

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
