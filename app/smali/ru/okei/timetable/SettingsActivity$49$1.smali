.class Lru/okei/timetable/SettingsActivity$49$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsActivity$49;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/okei/timetable/SettingsActivity$49;

.field final synthetic val$downloaded:Ljava/lang/String;

.field final synthetic val$failure:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity$49;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 938
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$49$1;->this$1:Lru/okei/timetable/SettingsActivity$49;

    iput-object p2, p0, Lru/okei/timetable/SettingsActivity$49$1;->val$downloaded:Ljava/lang/String;

    iput-object p3, p0, Lru/okei/timetable/SettingsActivity$49$1;->val$failure:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 941
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$49$1;->this$1:Lru/okei/timetable/SettingsActivity$49;

    iget-object v0, v0, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-virtual {v0}, Lru/okei/timetable/SettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$49$1;->this$1:Lru/okei/timetable/SettingsActivity$49;

    iget-object v0, v0, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-virtual {v0}, Lru/okei/timetable/SettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 944
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$49$1;->val$downloaded:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 945
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$49$1;->this$1:Lru/okei/timetable/SettingsActivity$49;

    iget-object v0, v0, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$49$1;->val$failure:Ljava/lang/String;

    invoke-static {v0, v1}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fputflash(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$49$1;->this$1:Lru/okei/timetable/SettingsActivity$49;

    iget-object v0, v0, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v0}, Lru/okei/timetable/SettingsActivity;->-$$Nest$mbuild(Lru/okei/timetable/SettingsActivity;)V

    return-void

    .line 949
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$49$1;->this$1:Lru/okei/timetable/SettingsActivity$49;

    iget-object v0, v0, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$49$1;->this$1:Lru/okei/timetable/SettingsActivity$49;

    iget-object v1, v1, Lru/okei/timetable/SettingsActivity$49;->val$code:Ljava/lang/String;

    invoke-static {v0, v1}, Lru/okei/timetable/data/Groups;->set(Landroid/content/Context;Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$49$1;->this$1:Lru/okei/timetable/SettingsActivity$49;

    iget-object v0, v0, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$49$1;->this$1:Lru/okei/timetable/SettingsActivity$49;

    iget-object v1, v1, Lru/okei/timetable/SettingsActivity$49;->val$code:Ljava/lang/String;

    iget-object v2, p0, Lru/okei/timetable/SettingsActivity$49$1;->val$downloaded:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lru/okei/timetable/data/Cache;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 951
    invoke-static {}, Lru/okei/timetable/MainActivity;->forgetWeek()V

    .line 952
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$49$1;->this$1:Lru/okei/timetable/SettingsActivity$49;

    iget-object v0, v0, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$49$1;->this$1:Lru/okei/timetable/SettingsActivity$49;

    iget-object v1, v1, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    const v2, 0x7f060144

    invoke-virtual {v1, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/okei/timetable/SettingsActivity$49$1;->this$1:Lru/okei/timetable/SettingsActivity$49;

    iget-object v2, v2, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v2}, Lru/okei/timetable/data/Groups;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fputflash(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$49$1;->this$1:Lru/okei/timetable/SettingsActivity$49;

    iget-object v0, v0, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$49$1;->this$1:Lru/okei/timetable/SettingsActivity$49;

    iget-object v1, v1, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v1}, Lru/okei/timetable/data/Groups;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fputscrambleTo(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$49$1;->this$1:Lru/okei/timetable/SettingsActivity$49;

    iget-object v0, v0, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v0}, Lru/okei/timetable/SettingsActivity;->-$$Nest$mresync(Lru/okei/timetable/SettingsActivity;)V

    invoke-static {v0}, Lru/okei/timetable/fix/GroupRefresh;->after(Landroid/content/Context;)V

    .line 955
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$49$1;->this$1:Lru/okei/timetable/SettingsActivity$49;

    iget-object v0, v0, Lru/okei/timetable/SettingsActivity$49;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v0}, Lru/okei/timetable/SettingsActivity;->-$$Nest$mbuild(Lru/okei/timetable/SettingsActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
