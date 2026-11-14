.class Lru/okei/timetable/SettingsActivity$35;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lru/okei/timetable/SettingsActivity$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsActivity;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SettingsActivity;

.field final synthetic val$beatOn:Z


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 661
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$35;->this$0:Lru/okei/timetable/SettingsActivity;

    iput-boolean p2, p0, Lru/okei/timetable/SettingsActivity$35;->val$beatOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 664
    iget-boolean v0, p0, Lru/okei/timetable/SettingsActivity$35;->val$beatOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$35;->this$0:Lru/okei/timetable/SettingsActivity;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Lru/okei/timetable/SettingsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$35;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v0}, Lru/okei/timetable/SettingsActivity;->-$$Nest$maskBeatPermission(Lru/okei/timetable/SettingsActivity;)V

    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$35;->this$0:Lru/okei/timetable/SettingsActivity;

    iget-boolean v1, p0, Lru/okei/timetable/SettingsActivity$35;->val$beatOn:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmSettings;->setBeatByMusic(Landroid/content/Context;Z)V

    .line 670
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$35;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v0}, Lru/okei/timetable/SettingsActivity;->-$$Nest$mbuild(Lru/okei/timetable/SettingsActivity;)V

    return-void
.end method
