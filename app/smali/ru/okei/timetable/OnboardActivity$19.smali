.class Lru/okei/timetable/OnboardActivity$19;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity;->permissionRow(Lru/okei/timetable/Permissions$Item;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/OnboardActivity;

.field final synthetic val$item:Lru/okei/timetable/Permissions$Item;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;Lru/okei/timetable/Permissions$Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 781
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$19;->this$0:Lru/okei/timetable/OnboardActivity;

    iput-object p2, p0, Lru/okei/timetable/OnboardActivity$19;->val$item:Lru/okei/timetable/Permissions$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 784
    invoke-static {p1}, Lru/okei/timetable/Haptics;->tick(Landroid/view/View;)V

    .line 785
    iget-object p1, p0, Lru/okei/timetable/OnboardActivity$19;->this$0:Lru/okei/timetable/OnboardActivity;

    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$19;->val$item:Lru/okei/timetable/Permissions$Item;

    iget v0, v0, Lru/okei/timetable/Permissions$Item;->kind:I

    const/16 v1, 0x47

    invoke-static {p1, v0, v1}, Lru/okei/timetable/Permissions;->ask(Landroid/app/Activity;II)V

    return-void
.end method
