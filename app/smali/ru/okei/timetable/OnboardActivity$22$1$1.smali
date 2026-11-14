.class Lru/okei/timetable/OnboardActivity$22$1$1;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity$22$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lru/okei/timetable/OnboardActivity$22$1;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity$22$1;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$22$1$1;->this$2:Lru/okei/timetable/OnboardActivity$22$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 918
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$22$1$1;->this$2:Lru/okei/timetable/OnboardActivity$22$1;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$22$1;->this$1:Lru/okei/timetable/OnboardActivity$22;

    iget-object v1, v0, Lru/okei/timetable/OnboardActivity$22;->this$0:Lru/okei/timetable/OnboardActivity;

    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$22$1$1;->this$2:Lru/okei/timetable/OnboardActivity$22$1;

    iget-object v0, v0, Lru/okei/timetable/OnboardActivity$22$1;->this$1:Lru/okei/timetable/OnboardActivity$22;

    iget-object v2, v0, Lru/okei/timetable/OnboardActivity$22;->val$name:Landroid/widget/TextView;

    const-string v3, "POLUSLADKY/TABEL"

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x37

    invoke-static/range {v1 .. v7}, Lru/okei/timetable/OnboardActivity;->-$$Nest$mtypeText(Lru/okei/timetable/OnboardActivity;Landroid/widget/TextView;Ljava/lang/String;JJ)V

    return-void
.end method
