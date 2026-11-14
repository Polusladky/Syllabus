.class Lru/okei/timetable/OnboardActivity$8$1;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/OnboardActivity$8;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity$8;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$8$1;->this$1:Lru/okei/timetable/OnboardActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 373
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$8$1;->this$1:Lru/okei/timetable/OnboardActivity$8;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$8;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetbar(Lru/okei/timetable/OnboardActivity;)Lru/okei/timetable/ui/SplitBar;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/OnboardActivity$8$1$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/OnboardActivity$8$1$1;-><init>(Lru/okei/timetable/OnboardActivity$8$1;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x2f8

    invoke-virtual {v0, v3, v4, v1, v2}, Lru/okei/timetable/ui/SplitBar;->animateSplit(JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
