.class Lru/okei/timetable/SettingsActivity$41;
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

    .line 751
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$41;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 754
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$41;->this$0:Lru/okei/timetable/SettingsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/okei/timetable/SettingsActivity$41;->this$0:Lru/okei/timetable/SettingsActivity;

    const-class v3, Lru/okei/timetable/OnboardActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lru/okei/timetable/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 755
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$41;->this$0:Lru/okei/timetable/SettingsActivity;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Lru/okei/timetable/SettingsActivity;->overridePendingTransition(II)V

    return-void
.end method
