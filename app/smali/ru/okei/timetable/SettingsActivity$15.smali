.class Lru/okei/timetable/SettingsActivity$15;
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

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$current:Z


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 482
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$15;->this$0:Lru/okei/timetable/SettingsActivity;

    iput-object p2, p0, Lru/okei/timetable/SettingsActivity$15;->val$code:Ljava/lang/String;

    iput-boolean p3, p0, Lru/okei/timetable/SettingsActivity$15;->val$current:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 485
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$15;->this$0:Lru/okei/timetable/SettingsActivity;

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$15;->val$code:Ljava/lang/String;

    iget-boolean v2, p0, Lru/okei/timetable/SettingsActivity$15;->val$current:Z

    invoke-static {v0, v1, v2}, Lru/okei/timetable/SettingsActivity;->-$$Nest$maskGroupAction(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;Z)V

    return-void
.end method
