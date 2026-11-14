.class Lru/okei/timetable/SettingsActivity$47;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsActivity;->askGroupAction(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SettingsActivity;

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$delete:Ljava/lang/String;

.field final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 881
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$47;->this$0:Lru/okei/timetable/SettingsActivity;

    iput-object p2, p0, Lru/okei/timetable/SettingsActivity$47;->val$items:[Ljava/lang/String;

    iput-object p3, p0, Lru/okei/timetable/SettingsActivity$47;->val$delete:Ljava/lang/String;

    iput-object p4, p0, Lru/okei/timetable/SettingsActivity$47;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 884
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$47;->val$items:[Ljava/lang/String;

    aget-object p1, p1, p2

    iget-object p2, p0, Lru/okei/timetable/SettingsActivity$47;->val$delete:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 885
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$47;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {p1}, Lru/okei/timetable/data/Groups;->known(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    .line 886
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$47;->this$0:Lru/okei/timetable/SettingsActivity;

    const p2, 0x7f060187

    invoke-virtual {p1, p2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fputflash(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;)V

    .line 887
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$47;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {p1}, Lru/okei/timetable/SettingsActivity;->-$$Nest$mbuild(Lru/okei/timetable/SettingsActivity;)V

    return-void

    .line 890
    :cond_0
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$47;->this$0:Lru/okei/timetable/SettingsActivity;

    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$47;->val$code:Ljava/lang/String;

    invoke-static {p1, v0}, Lru/okei/timetable/data/Groups;->forget(Landroid/content/Context;Ljava/lang/String;)Z

    .line 891
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$47;->this$0:Lru/okei/timetable/SettingsActivity;

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$47;->val$code:Ljava/lang/String;

    invoke-static {v0}, Lru/okei/timetable/data/Groups;->title(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const v0, 0x7f06018a

    invoke-virtual {p1, v0, p2}, Lru/okei/timetable/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fputflash(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;)V

    .line 892
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$47;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {p1}, Lru/okei/timetable/SettingsActivity;->-$$Nest$mresync(Lru/okei/timetable/SettingsActivity;)V

    .line 893
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$47;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {p1}, Lru/okei/timetable/SettingsActivity;->-$$Nest$mbuild(Lru/okei/timetable/SettingsActivity;)V

    return-void

    .line 896
    :cond_1
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$47;->this$0:Lru/okei/timetable/SettingsActivity;

    iget-object p2, p0, Lru/okei/timetable/SettingsActivity$47;->val$code:Ljava/lang/String;

    invoke-static {p1, p2}, Lru/okei/timetable/SettingsActivity;->-$$Nest$mchangeGroup(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;)V

    return-void
.end method
