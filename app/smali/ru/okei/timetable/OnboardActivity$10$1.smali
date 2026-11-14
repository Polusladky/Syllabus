.class Lru/okei/timetable/OnboardActivity$10$1;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/OnboardActivity$10;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity$10;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$10$1;->this$1:Lru/okei/timetable/OnboardActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 422
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$10$1;->this$1:Lru/okei/timetable/OnboardActivity$10;

    iget v0, v0, Lru/okei/timetable/OnboardActivity$10;->val$gen:I

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$10$1;->this$1:Lru/okei/timetable/OnboardActivity$10;

    iget-object v1, v1, Lru/okei/timetable/OnboardActivity$10;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v1}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetgeneration(Lru/okei/timetable/OnboardActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$10$1;->this$1:Lru/okei/timetable/OnboardActivity$10;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$10;->val$done:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$10$1;->this$1:Lru/okei/timetable/OnboardActivity$10;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$10;->val$done:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
