.class Lru/okei/timetable/OnboardActivity$1;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Lru/okei/timetable/ui/SplitBar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 104
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$1;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 2

    .line 114
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$1;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetanimating(Lru/okei/timetable/OnboardActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$1;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetpage(Lru/okei/timetable/OnboardActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 115
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$1;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetpage(Lru/okei/timetable/OnboardActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lru/okei/timetable/OnboardActivity;->-$$Nest$mgoTo(Lru/okei/timetable/OnboardActivity;I)V

    :cond_0
    return-void
.end method

.method public onNext()V
    .locals 1

    .line 107
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$1;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetanimating(Lru/okei/timetable/OnboardActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$1;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$monNext(Lru/okei/timetable/OnboardActivity;)V

    :cond_0
    return-void
.end method
