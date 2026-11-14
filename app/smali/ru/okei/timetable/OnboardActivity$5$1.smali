.class Lru/okei/timetable/OnboardActivity$5$1;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/OnboardActivity$5;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity$5;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$5$1;->this$1:Lru/okei/timetable/OnboardActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 263
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$5$1;->this$1:Lru/okei/timetable/OnboardActivity$5;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$5;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetpage(Lru/okei/timetable/OnboardActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$5$1;->this$1:Lru/okei/timetable/OnboardActivity$5;

    iget-object v1, v0, Lru/okei/timetable/OnboardActivity$5;->this$0:Lru/okei/timetable/OnboardActivity;

    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$5$1;->this$1:Lru/okei/timetable/OnboardActivity$5;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$5;->this$0:Lru/okei/timetable/OnboardActivity;

    const v2, 0x7f0600cf

    invoke-virtual {v0, v2}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x5a

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lru/okei/timetable/OnboardActivity;->-$$Nest$mtypeBarText(Lru/okei/timetable/OnboardActivity;Ljava/lang/String;JJLjava/lang/Runnable;)V

    .line 267
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$5$1;->this$1:Lru/okei/timetable/OnboardActivity$5;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$5;->this$0:Lru/okei/timetable/OnboardActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fputintroPlayed(Lru/okei/timetable/OnboardActivity;Z)V

    return-void
.end method
