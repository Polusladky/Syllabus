.class Lru/okei/timetable/OnboardActivity$22;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity;->pageThanks(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/OnboardActivity;

.field final synthetic val$icon:Lru/okei/timetable/ui/PixelGithubView;

.field final synthetic val$name:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;Lru/okei/timetable/ui/PixelGithubView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 908
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$22;->this$0:Lru/okei/timetable/OnboardActivity;

    iput-object p2, p0, Lru/okei/timetable/OnboardActivity$22;->val$icon:Lru/okei/timetable/ui/PixelGithubView;

    iput-object p3, p0, Lru/okei/timetable/OnboardActivity$22;->val$name:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 911
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$22;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetmain(Lru/okei/timetable/OnboardActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/OnboardActivity$22$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/OnboardActivity$22$1;-><init>(Lru/okei/timetable/OnboardActivity$22;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
