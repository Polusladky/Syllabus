.class Lru/okei/timetable/OnboardActivity$15$1;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/OnboardActivity$15;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity$15;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$15$1;->this$1:Lru/okei/timetable/OnboardActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 612
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$15$1;->this$1:Lru/okei/timetable/OnboardActivity$15;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$15;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetgroupInput(Lru/okei/timetable/OnboardActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAlpha(F)V

    return-void
.end method
