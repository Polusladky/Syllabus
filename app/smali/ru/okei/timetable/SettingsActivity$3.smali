.class Lru/okei/timetable/SettingsActivity$3;
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

.field final synthetic val$themeToggle:Lru/okei/timetable/ui/ThemeToggleView;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;Lru/okei/timetable/ui/ThemeToggleView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$3;->this$0:Lru/okei/timetable/SettingsActivity;

    iput-object p2, p0, Lru/okei/timetable/SettingsActivity$3;->val$themeToggle:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 148
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$3;->val$themeToggle:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-virtual {v0}, Lru/okei/timetable/ui/ThemeToggleView;->playAppear()V

    return-void
.end method
