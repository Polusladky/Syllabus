.class Lru/okei/timetable/SettingsActivity$49;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsActivity;->changeGroup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SettingsActivity;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 921
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    iput-object p2, p0, Lru/okei/timetable/SettingsActivity$49;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 925
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    const v1, 0x7f060142

    invoke-virtual {v0, v1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 927
    :try_start_0
    iget-object v2, p0, Lru/okei/timetable/SettingsActivity$49;->val$code:Ljava/lang/String;

    invoke-static {v2}, Lru/okei/timetable/data/Groups;->urlFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4e20

    invoke-static {v2, v3}, Lru/okei/timetable/Http;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 928
    invoke-static {v2}, Lru/okei/timetable/data/ScheduleParser;->parse(Ljava/lang/String;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 929
    invoke-virtual {v3}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SettingsActivity"

    .line 933
    invoke-static {v2, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 934
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    const v2, 0x7f060143

    invoke-virtual {v0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 938
    :cond_0
    :goto_0
    iget-object v2, p0, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    new-instance v3, Lru/okei/timetable/SettingsActivity$49$1;

    invoke-direct {v3, p0, v1, v0}, Lru/okei/timetable/SettingsActivity$49$1;-><init>(Lru/okei/timetable/SettingsActivity$49;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lru/okei/timetable/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
