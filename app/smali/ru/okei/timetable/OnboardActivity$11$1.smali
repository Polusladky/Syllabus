.class Lru/okei/timetable/OnboardActivity$11$1;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/OnboardActivity$11;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity$11;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$11$1;->this$1:Lru/okei/timetable/OnboardActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 470
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$11$1;->this$1:Lru/okei/timetable/OnboardActivity$11;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$11;->this$0:Lru/okei/timetable/OnboardActivity;

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$11$1;->this$1:Lru/okei/timetable/OnboardActivity$11;

    iget-object v1, v1, Lru/okei/timetable/OnboardActivity$11;->val$sub:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lru/okei/timetable/OnboardActivity;->-$$Nest$mlamp(Lru/okei/timetable/OnboardActivity;Landroid/view/View;)V

    return-void
.end method
