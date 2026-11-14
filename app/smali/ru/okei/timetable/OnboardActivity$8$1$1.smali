.class Lru/okei/timetable/OnboardActivity$8$1$1;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lru/okei/timetable/OnboardActivity$8$1;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity$8$1;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$8$1$1;->this$2:Lru/okei/timetable/OnboardActivity$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 376
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$8$1$1;->this$2:Lru/okei/timetable/OnboardActivity$8$1;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$8$1;->this$1:Lru/okei/timetable/OnboardActivity$8;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$8;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$mtypeBackLabel(Lru/okei/timetable/OnboardActivity;)V

    return-void
.end method
