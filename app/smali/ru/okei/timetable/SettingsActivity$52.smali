.class Lru/okei/timetable/SettingsActivity$52;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsActivity;->showPermissionDialog(Lru/okei/timetable/Permissions$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SettingsActivity;

.field final synthetic val$item:Lru/okei/timetable/Permissions$Item;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;Lru/okei/timetable/Permissions$Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1072
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$52;->this$0:Lru/okei/timetable/SettingsActivity;

    iput-object p2, p0, Lru/okei/timetable/SettingsActivity$52;->val$item:Lru/okei/timetable/Permissions$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1075
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$52;->this$0:Lru/okei/timetable/SettingsActivity;

    iget-object p2, p0, Lru/okei/timetable/SettingsActivity$52;->val$item:Lru/okei/timetable/Permissions$Item;

    iget p2, p2, Lru/okei/timetable/Permissions$Item;->kind:I

    const/16 v0, 0x2a

    invoke-static {p1, p2, v0}, Lru/okei/timetable/Permissions;->ask(Landroid/app/Activity;II)V

    return-void
.end method
