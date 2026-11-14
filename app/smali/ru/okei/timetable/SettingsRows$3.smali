.class Lru/okei/timetable/SettingsRows$3;
.super Ljava/lang/Object;
.source "SettingsRows.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsRows;->action(Ljava/lang/String;Lru/okei/timetable/SettingsRows$Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SettingsRows;

.field final synthetic val$action:Lru/okei/timetable/SettingsRows$Action;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsRows;Lru/okei/timetable/SettingsRows$Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lru/okei/timetable/SettingsRows$3;->this$0:Lru/okei/timetable/SettingsRows;

    iput-object p2, p0, Lru/okei/timetable/SettingsRows$3;->val$action:Lru/okei/timetable/SettingsRows$Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 135
    invoke-static {p1}, Lru/okei/timetable/Haptics;->tick(Landroid/view/View;)V

    .line 136
    invoke-static {p1}, Lru/okei/timetable/ui/Motion;->press(Landroid/view/View;)V

    .line 137
    iget-object p1, p0, Lru/okei/timetable/SettingsRows$3;->val$action:Lru/okei/timetable/SettingsRows$Action;

    invoke-interface {p1}, Lru/okei/timetable/SettingsRows$Action;->run()V

    return-void
.end method
