.class Lru/okei/timetable/SettingsActivity$33;
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

.field final synthetic val$beatSync:Z

.field final synthetic val$vibration:I


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 634
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$33;->this$0:Lru/okei/timetable/SettingsActivity;

    iput-boolean p2, p0, Lru/okei/timetable/SettingsActivity$33;->val$beatSync:Z

    iput p3, p0, Lru/okei/timetable/SettingsActivity$33;->val$vibration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 637
    iget-boolean v0, p0, Lru/okei/timetable/SettingsActivity$33;->val$beatSync:Z

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$33;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v0}, Lru/okei/timetable/SettingsActivity;->-$$Nest$mbuild(Lru/okei/timetable/SettingsActivity;)V

    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$33;->this$0:Lru/okei/timetable/SettingsActivity;

    iget v1, p0, Lru/okei/timetable/SettingsActivity$33;->val$vibration:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmSettings;->setVibration(Landroid/content/Context;I)V

    .line 642
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$33;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v0}, Lru/okei/timetable/SettingsActivity;->-$$Nest$mbuild(Lru/okei/timetable/SettingsActivity;)V

    return-void
.end method
