.class Lru/okei/timetable/SettingsActivity$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsActivity;->playThemeWave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SettingsActivity;

.field final synthetic val$host:Landroid/view/ViewGroup;

.field final synthetic val$snapshot:Landroid/graphics/Bitmap;

.field final synthetic val$wave:Lru/okei/timetable/PixelWaveView;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;Landroid/view/ViewGroup;Lru/okei/timetable/PixelWaveView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$9;->this$0:Lru/okei/timetable/SettingsActivity;

    iput-object p2, p0, Lru/okei/timetable/SettingsActivity$9;->val$host:Landroid/view/ViewGroup;

    iput-object p3, p0, Lru/okei/timetable/SettingsActivity$9;->val$wave:Lru/okei/timetable/PixelWaveView;

    iput-object p4, p0, Lru/okei/timetable/SettingsActivity$9;->val$snapshot:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 273
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$9;->val$host:Landroid/view/ViewGroup;

    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$9;->val$wave:Lru/okei/timetable/PixelWaveView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 274
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$9;->val$snapshot:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 275
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$9;->val$snapshot:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 277
    :cond_0
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$9;->this$0:Lru/okei/timetable/SettingsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fputthemeWaveRunning(Lru/okei/timetable/SettingsActivity;Z)V

    .line 278
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$9;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {p1}, Lru/okei/timetable/ScheduleWidget;->refresh(Landroid/content/Context;)V

    .line 279
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$9;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {p1}, Lru/okei/timetable/ScheduleWidgetMini;->refresh(Landroid/content/Context;)V

    return-void
.end method
