.class Lru/okei/timetable/SettingsActivity$18;
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


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$18;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 509
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$18;->this$0:Lru/okei/timetable/SettingsActivity;

    const/16 v1, -0xf

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmSettings;->bumpLead(Landroid/content/Context;I)V

    .line 510
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$18;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v0}, Lru/okei/timetable/SettingsActivity;->-$$Nest$mresync(Lru/okei/timetable/SettingsActivity;)V

    return-void
.end method
