.class Lru/okei/timetable/SettingsActivity$20;
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

    .line 520
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$20;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public text()Ljava/lang/String;
    .locals 1

    .line 523
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$20;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmSettings;->count(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
