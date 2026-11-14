.class public final Lru/okei/timetable/alarm/AlarmHost;
.super Ljava/lang/Object;
.source "AlarmHost.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final main:Landroid/os/Handler;

.field private overlay:Lru/okei/timetable/alarm/AlarmOverlayView;

.field private showing:Landroid/content/Intent;

.field private sleeping:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic -$$Nest$mdrop(Lru/okei/timetable/alarm/AlarmHost;Lru/okei/timetable/alarm/AlarmOverlayView;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/alarm/AlarmHost;->drop(Lru/okei/timetable/alarm/AlarmOverlayView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mkeepScreenOn(Lru/okei/timetable/alarm/AlarmHost;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/alarm/AlarmHost;->keepScreenOn(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msleepOrLeave(Lru/okei/timetable/alarm/AlarmHost;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmHost;->sleepOrLeave()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->main:Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    return-void
.end method

.method private dimScreen(Z)V
    .locals 2

    .line 176
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 179
    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 180
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    if-eqz p1, :cond_1

    .line 182
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    return-void
.end method

.method private drop(Lru/okei/timetable/alarm/AlarmOverlayView;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    const v1, 0x7f03001c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 162
    :cond_0
    invoke-virtual {p1}, Lru/okei/timetable/alarm/AlarmOverlayView;->release()V

    return-void
.end method

.method private keepScreenOn(Z)V
    .locals 4

    const/16 v0, 0x1b

    const v1, 0x280080

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 189
    invoke-direct {p0, v2}, Lru/okei/timetable/alarm/AlarmHost;->dimScreen(Z)V

    .line 190
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    if-lt p1, v0, :cond_0

    .line 191
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 192
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    .line 194
    :cond_0
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 197
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_3

    .line 199
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    const-string v0, "oksei:alarm"

    .line 200
    invoke-virtual {p1, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 201
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 203
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 206
    :cond_2
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x3000001a

    const-string v1, "oksei:alarm-screen"

    .line 208
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/16 v0, 0x1388

    .line 211
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_3
    return-void

    .line 216
    :cond_4
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 219
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_5

    .line 220
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 221
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    .line 223
    :cond_5
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmHost;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 224
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmHost;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    const/4 p1, 0x0

    .line 226
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmHost;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private lockOrientation(Z)V
    .locals 1

    .line 149
    :try_start_0
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "AlarmHost"

    .line 153
    invoke-static {v0, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private lockPortrait()V
    .locals 2

    .line 141
    :try_start_0
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AlarmHost"

    .line 143
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private sleepOrLeave()V
    .locals 2

    .line 166
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lru/okei/timetable/Admin;->isActive(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 167
    iput-boolean v1, p0, Lru/okei/timetable/alarm/AlarmHost;->sleeping:Z

    .line 168
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lru/okei/timetable/Admin;->lock(Landroid/content/Context;)V

    return-void

    .line 171
    :cond_0
    invoke-direct {p0, v1}, Lru/okei/timetable/alarm/AlarmHost;->dimScreen(Z)V

    .line 172
    iput-boolean v1, p0, Lru/okei/timetable/alarm/AlarmHost;->sleeping:Z

    return-void
.end method


# virtual methods
.method public close(Z)V
    .locals 5

    .line 88
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->overlay:Lru/okei/timetable/alarm/AlarmOverlayView;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->silence()V

    .line 94
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lru/okei/timetable/alarm/AlarmScheduler;->clearPending(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 95
    iput-object v1, p0, Lru/okei/timetable/alarm/AlarmHost;->showing:Landroid/content/Intent;

    .line 96
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "host close snoozed="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, v2}, Lru/okei/timetable/alarm/AlarmHost;->lockOrientation(Z)V

    if-eqz p1, :cond_1

    .line 100
    iput-object v1, p0, Lru/okei/timetable/alarm/AlarmHost;->overlay:Lru/okei/timetable/alarm/AlarmOverlayView;

    .line 101
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmHost;->main:Landroid/os/Handler;

    new-instance v1, Lru/okei/timetable/alarm/AlarmHost$2;

    invoke-direct {v1, p0, v0}, Lru/okei/timetable/alarm/AlarmHost$2;-><init>(Lru/okei/timetable/alarm/AlarmHost;Lru/okei/timetable/alarm/AlarmOverlayView;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 116
    :cond_1
    iput-object v1, p0, Lru/okei/timetable/alarm/AlarmHost;->overlay:Lru/okei/timetable/alarm/AlarmOverlayView;

    .line 117
    invoke-virtual {v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x1a4

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lru/okei/timetable/alarm/AlarmHost$3;

    invoke-direct {v1, p0, v0}, Lru/okei/timetable/alarm/AlarmHost$3;-><init>(Lru/okei/timetable/alarm/AlarmHost;Lru/okei/timetable/alarm/AlarmOverlayView;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->overlay:Lru/okei/timetable/alarm/AlarmOverlayView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSleeping()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lru/okei/timetable/alarm/AlarmHost;->sleeping:Z

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, v0}, Lru/okei/timetable/alarm/AlarmHost;->lockOrientation(Z)V

    .line 133
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public show(Landroid/content/Intent;)V
    .locals 5

    .line 47
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmScheduler;->clearPending(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmHost;->showing:Landroid/content/Intent;

    .line 49
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    const-string v1, "host show"

    invoke-static {v0, v1}, Lru/okei/timetable/CrashLog;->event(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->overlay:Lru/okei/timetable/alarm/AlarmOverlayView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lru/okei/timetable/alarm/AlarmHost;->sleeping:Z

    .line 53
    invoke-direct {p0, v1}, Lru/okei/timetable/alarm/AlarmHost;->keepScreenOn(Z)V

    .line 54
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->overlay:Lru/okei/timetable/alarm/AlarmOverlayView;

    invoke-virtual {v0, p1}, Lru/okei/timetable/alarm/AlarmOverlayView;->apply(Landroid/content/Intent;)V

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    const v2, 0x7f03001c

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmHost;->showing:Landroid/content/Intent;

    return-void

    .line 63
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_3

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lru/okei/timetable/alarm/AlarmOverlayView;

    if-eqz v3, :cond_2

    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 68
    :cond_3
    new-instance v2, Lru/okei/timetable/alarm/AlarmOverlayView;

    iget-object v3, p0, Lru/okei/timetable/alarm/AlarmHost;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lru/okei/timetable/alarm/AlarmOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lru/okei/timetable/alarm/AlarmHost;->overlay:Lru/okei/timetable/alarm/AlarmOverlayView;

    .line 69
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmHost;->lockPortrait()V

    .line 73
    invoke-direct {p0, v1}, Lru/okei/timetable/alarm/AlarmHost;->keepScreenOn(Z)V

    .line 74
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->overlay:Lru/okei/timetable/alarm/AlarmOverlayView;

    new-instance v1, Lru/okei/timetable/alarm/AlarmHost$1;

    invoke-direct {v1, p0}, Lru/okei/timetable/alarm/AlarmHost$1;-><init>(Lru/okei/timetable/alarm/AlarmHost;)V

    invoke-virtual {v0, p1, v1}, Lru/okei/timetable/alarm/AlarmOverlayView;->start(Landroid/content/Intent;Lru/okei/timetable/alarm/AlarmOverlayView$Callback;)V

    return-void
.end method

.method public showing()Landroid/content/Intent;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmHost;->showing:Landroid/content/Intent;

    return-object v0
.end method

.method public wake()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lru/okei/timetable/alarm/AlarmHost;->sleeping:Z

    .line 128
    invoke-direct {p0, v0}, Lru/okei/timetable/alarm/AlarmHost;->dimScreen(Z)V

    return-void
.end method
