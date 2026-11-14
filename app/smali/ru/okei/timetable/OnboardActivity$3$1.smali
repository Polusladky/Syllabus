.class Lru/okei/timetable/OnboardActivity$3$1;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/OnboardActivity$3;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity$3;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$3$1;->this$1:Lru/okei/timetable/OnboardActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 192
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$3$1;->this$1:Lru/okei/timetable/OnboardActivity$3;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$3;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgeterrorView(Lru/okei/timetable/OnboardActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$3$1;->this$1:Lru/okei/timetable/OnboardActivity$3;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$3;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgeterrorView(Lru/okei/timetable/OnboardActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
