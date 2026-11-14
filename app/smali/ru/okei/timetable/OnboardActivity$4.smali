.class Lru/okei/timetable/OnboardActivity$4;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity;->goTo(I)V
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

    .line 222
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$4;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 225
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$4;->this$0:Lru/okei/timetable/OnboardActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fputpage(Lru/okei/timetable/OnboardActivity;I)V

    .line 226
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$4;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0, v1}, Lru/okei/timetable/OnboardActivity;->-$$Nest$mbuildContent(Lru/okei/timetable/OnboardActivity;Z)V

    .line 227
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$4;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetbar(Lru/okei/timetable/OnboardActivity;)Lru/okei/timetable/ui/SplitBar;

    move-result-object v0

    invoke-virtual {v0}, Lru/okei/timetable/ui/SplitBar;->showSingle()V

    .line 228
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$4;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetbar(Lru/okei/timetable/OnboardActivity;)Lru/okei/timetable/ui/SplitBar;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$4;->this$0:Lru/okei/timetable/OnboardActivity;

    const v2, 0x7f0600cf

    invoke-virtual {v1, v2}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/SplitBar;->setNextText(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$4;->this$0:Lru/okei/timetable/OnboardActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fputintroPlayed(Lru/okei/timetable/OnboardActivity;Z)V

    return-void
.end method
