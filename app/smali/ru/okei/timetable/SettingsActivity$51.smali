.class Lru/okei/timetable/SettingsActivity$51;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsActivity;->askBeatPermission()V
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

    .line 1025
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$51;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1028
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$51;->this$0:Lru/okei/timetable/SettingsActivity;

    const-string p2, "android.permission.RECORD_AUDIO"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x29

    invoke-virtual {p1, p2, v0}, Lru/okei/timetable/SettingsActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
