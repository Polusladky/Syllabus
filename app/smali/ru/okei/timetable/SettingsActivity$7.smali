.class Lru/okei/timetable/SettingsActivity$7;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 196
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$7;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 199
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$7;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v0}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fgetsettingsScroll(Lru/okei/timetable/SettingsActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$7;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v1}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fgetrestoreScroll(Lru/okei/timetable/SettingsActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
