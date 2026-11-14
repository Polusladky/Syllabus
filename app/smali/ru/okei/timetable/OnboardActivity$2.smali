.class Lru/okei/timetable/OnboardActivity$2;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 134
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$2;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 137
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$2;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetdots(Lru/okei/timetable/OnboardActivity;)Lru/okei/timetable/ui/OnboardDots;

    move-result-object v0

    invoke-virtual {v0}, Lru/okei/timetable/ui/OnboardDots;->appear()V

    return-void
.end method
