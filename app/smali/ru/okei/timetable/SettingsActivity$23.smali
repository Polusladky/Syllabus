.class Lru/okei/timetable/SettingsActivity$23;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lru/okei/timetable/SettingsActivity$Value;


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


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$23;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public text()Ljava/lang/String;
    .locals 4

    .line 542
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$23;->this$0:Lru/okei/timetable/SettingsActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmSettings;->step(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f060190

    invoke-virtual {v0, v2, v1}, Lru/okei/timetable/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
