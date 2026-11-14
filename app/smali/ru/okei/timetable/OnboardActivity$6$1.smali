.class Lru/okei/timetable/OnboardActivity$6$1;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/OnboardActivity$6;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity$6;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$6$1;->this$1:Lru/okei/timetable/OnboardActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 316
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$6$1;->this$1:Lru/okei/timetable/OnboardActivity$6;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$6;->this$0:Lru/okei/timetable/OnboardActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fputanimating(Lru/okei/timetable/OnboardActivity;Z)V

    return-void
.end method
