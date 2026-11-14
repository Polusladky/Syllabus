.class Lru/okei/timetable/SettingsActivity$39;
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

    .line 727
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$39;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 730
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$39;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v0}, Lru/okei/timetable/SettingsActivity;->-$$Nest$mshowChangesDialog(Lru/okei/timetable/SettingsActivity;)V

    return-void
.end method
