.class Lru/okei/timetable/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lru/okei/timetable/SettingsRows$Hook;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 163
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$5;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed()V
    .locals 2

    .line 166
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$5;->this$0:Lru/okei/timetable/SettingsActivity;

    const v1, 0x7f0601a0

    invoke-virtual {v0, v1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/okei/timetable/SettingsActivity;->-$$Nest$mupdateSectionSummary(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;)V

    return-void
.end method
