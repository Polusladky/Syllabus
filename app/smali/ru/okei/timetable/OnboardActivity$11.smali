.class Lru/okei/timetable/OnboardActivity$11;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity;->pageName(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/OnboardActivity;

.field final synthetic val$sub:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 464
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$11;->this$0:Lru/okei/timetable/OnboardActivity;

    iput-object p2, p0, Lru/okei/timetable/OnboardActivity$11;->val$sub:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 467
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$11;->this$0:Lru/okei/timetable/OnboardActivity;

    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$11;->val$sub:Landroid/widget/TextView;

    const v2, 0x7f0600da

    invoke-virtual {v0, v2}, Lru/okei/timetable/OnboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1e

    new-instance v7, Lru/okei/timetable/OnboardActivity$11$1;

    invoke-direct {v7, p0}, Lru/okei/timetable/OnboardActivity$11$1;-><init>(Lru/okei/timetable/OnboardActivity$11;)V

    invoke-static/range {v0 .. v7}, Lru/okei/timetable/OnboardActivity;->-$$Nest$mtypeText(Lru/okei/timetable/OnboardActivity;Landroid/widget/TextView;Ljava/lang/String;JJLjava/lang/Runnable;)V

    return-void
.end method
