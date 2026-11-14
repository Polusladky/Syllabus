.class public Lru/okei/timetable/SetupActivity;
.super Landroid/app/Activity;
.source "SetupActivity.java"


# instance fields
.field private content:Landroid/widget/LinearLayout;

.field private fg:I

.field private muted:I

.field private pixel:Landroid/graphics/Typeface;

.field private pixelBold:Landroid/graphics/Typeface;

.field private progress:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$mopenBattery(Lru/okei/timetable/SetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/SetupActivity;->openBattery()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenFullScreen(Lru/okei/timetable/SetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/SetupActivity;->openFullScreen()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenNotifications(Lru/okei/timetable/SetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/SetupActivity;->openNotifications()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenSettings(Lru/okei/timetable/SetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/SetupActivity;->openSettings()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addNote(Ljava/lang/String;)V
    .locals 3

    .line 190
    iget v0, p0, Lru/okei/timetable/SetupActivity;->muted:I

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lru/okei/timetable/SetupActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, 0x40c00000    # 6.0f

    .line 191
    invoke-direct {p0, v0}, Lru/okei/timetable/SetupActivity;->dp(F)I

    move-result v0

    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 192
    invoke-direct {p0, v0}, Lru/okei/timetable/SetupActivity;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 193
    iget-object v0, p0, Lru/okei/timetable/SetupActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addRow(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 7

    .line 148
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 150
    invoke-direct {p0, v2}, Lru/okei/timetable/SetupActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v2}, Lru/okei/timetable/SetupActivity;->dp(F)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 151
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 155
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 157
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 159
    iget v5, p0, Lru/okei/timetable/SetupActivity;->fg:I

    invoke-direct {p0, p1, v3, v5, v1}, Lru/okei/timetable/SetupActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 160
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_0

    const p1, 0x7f0601c3

    goto :goto_0

    :cond_0
    const p1, 0x7f0601c6

    .line 163
    :goto_0
    invoke-virtual {p0, p1}, Lru/okei/timetable/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_1

    iget p3, p0, Lru/okei/timetable/SetupActivity;->muted:I

    goto :goto_1

    :cond_1
    iget p3, p0, Lru/okei/timetable/SetupActivity;->fg:I

    :goto_1
    const/high16 v3, 0x41300000    # 11.0f

    invoke-direct {p0, p1, v3, p3, v1}, Lru/okei/timetable/SetupActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    const p3, 0x3d75c28f    # 0.06f

    .line 164
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 165
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 168
    iget p3, p0, Lru/okei/timetable/SetupActivity;->muted:I

    invoke-direct {p0, p2, p1, p3, v4}, Lru/okei/timetable/SetupActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    const/high16 p2, 0x40800000    # 4.0f

    .line 169
    invoke-direct {p0, p2}, Lru/okei/timetable/SetupActivity;->dp(F)I

    move-result p2

    invoke-virtual {p1, v4, p2, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 170
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    new-instance p1, Lru/okei/timetable/SetupActivity$7;

    invoke-direct {p1, p0, p4}, Lru/okei/timetable/SetupActivity$7;-><init>(Lru/okei/timetable/SetupActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lru/okei/timetable/SetupActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 184
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    .line 185
    invoke-direct {p0, v6}, Lru/okei/timetable/SetupActivity;->dp(F)I

    move-result p4

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object p2, p0, Lru/okei/timetable/SetupActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private animateIn()V
    .locals 4

    .line 197
    iget-object v0, p0, Lru/okei/timetable/SetupActivity;->content:Landroid/widget/LinearLayout;

    const-wide/16 v1, 0x1a

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v0, v1, v2, v3}, Lru/okei/timetable/ui/Motion;->stagger(Landroid/view/ViewGroup;JF)V

    return-void
.end method

.method private batteryOk()Z
    .locals 3

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const-string v0, "power"

    .line 231
    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lru/okei/timetable/SetupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private build()V
    .locals 10

    .line 79
    iget-object v0, p0, Lru/okei/timetable/SetupActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 81
    invoke-direct {p0}, Lru/okei/timetable/SetupActivity;->exactAlarmsOk()Z

    move-result v0

    .line 82
    invoke-direct {p0}, Lru/okei/timetable/SetupActivity;->notificationsOk()Z

    move-result v1

    .line 83
    invoke-direct {p0}, Lru/okei/timetable/SetupActivity;->fullScreenOk()Z

    move-result v2

    .line 84
    invoke-direct {p0}, Lru/okei/timetable/SetupActivity;->batteryOk()Z

    move-result v3

    .line 85
    invoke-static {p0}, Lru/okei/timetable/Admin;->isActive(Landroid/content/Context;)Z

    move-result v4

    if-eqz v1, :cond_0

    add-int/lit8 v5, v0, 0x1

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    if-eqz v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    if-eqz v3, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    if-eqz v4, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 103
    :cond_3
    iget-object v6, p0, Lru/okei/timetable/SetupActivity;->progress:Landroid/widget/TextView;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    if-ne v5, v8, :cond_4

    const v5, 0x7f0601b4

    goto :goto_1

    :cond_4
    const v5, 0x7f0601c4

    .line 104
    :goto_1
    invoke-virtual {p0, v5}, Lru/okei/timetable/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const v5, 0x7f0601c2

    .line 103
    invoke-virtual {p0, v5, v7}, Lru/okei/timetable/SetupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0601b7

    .line 106
    invoke-virtual {p0, v5}, Lru/okei/timetable/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0601b8

    .line 107
    invoke-virtual {p0, v6}, Lru/okei/timetable/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lru/okei/timetable/SetupActivity$2;

    invoke-direct {v7, p0}, Lru/okei/timetable/SetupActivity$2;-><init>(Lru/okei/timetable/SetupActivity;)V

    .line 106
    invoke-direct {p0, v5, v6, v0, v7}, Lru/okei/timetable/SetupActivity;->addRow(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    const v0, 0x7f0601bf

    .line 113
    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f0601c0

    .line 114
    invoke-virtual {p0, v5}, Lru/okei/timetable/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lru/okei/timetable/SetupActivity$3;

    invoke-direct {v6, p0}, Lru/okei/timetable/SetupActivity$3;-><init>(Lru/okei/timetable/SetupActivity;)V

    .line 113
    invoke-direct {p0, v0, v5, v1, v6}, Lru/okei/timetable/SetupActivity;->addRow(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    const v0, 0x7f0601b9

    .line 120
    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0601ba

    .line 121
    invoke-virtual {p0, v1}, Lru/okei/timetable/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lru/okei/timetable/SetupActivity$4;

    invoke-direct {v5, p0}, Lru/okei/timetable/SetupActivity$4;-><init>(Lru/okei/timetable/SetupActivity;)V

    .line 120
    invoke-direct {p0, v0, v1, v2, v5}, Lru/okei/timetable/SetupActivity;->addRow(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    const v0, 0x7f0601b5

    .line 127
    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0601b6

    .line 128
    invoke-virtual {p0, v1}, Lru/okei/timetable/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lru/okei/timetable/SetupActivity$5;

    invoke-direct {v2, p0}, Lru/okei/timetable/SetupActivity$5;-><init>(Lru/okei/timetable/SetupActivity;)V

    .line 127
    invoke-direct {p0, v0, v1, v3, v2}, Lru/okei/timetable/SetupActivity;->addRow(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    const v0, 0x7f0601b2

    .line 134
    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0601b3

    .line 135
    invoke-virtual {p0, v1}, Lru/okei/timetable/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lru/okei/timetable/SetupActivity$6;

    invoke-direct {v2, p0}, Lru/okei/timetable/SetupActivity$6;-><init>(Lru/okei/timetable/SetupActivity;)V

    .line 134
    invoke-direct {p0, v0, v1, v4, v2}, Lru/okei/timetable/SetupActivity;->addRow(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    const v0, 0x7f0601bb

    .line 142
    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/okei/timetable/SetupActivity;->addNote(Ljava/lang/String;)V

    const v0, 0x7f0601bc

    .line 143
    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/okei/timetable/SetupActivity;->addNote(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lru/okei/timetable/SetupActivity;->animateIn()V

    return-void
.end method

.method private dp(F)I
    .locals 1

    .line 305
    invoke-virtual {p0}, Lru/okei/timetable/SetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private exactAlarmsOk()Z
    .locals 3

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const-string v0, "alarm"

    .line 208
    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private fullScreenOk()Z
    .locals 3

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const-string v0, "notification"

    .line 223
    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0}, Landroid/app/NotificationManager;->canUseFullScreenIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private label(Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .locals 0

    .line 201
    invoke-static {p0, p1, p2, p3, p4}, Lru/okei/timetable/Ui;->label(Landroid/content/Context;Ljava/lang/CharSequence;FIZ)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method private loadPixel(Z)Landroid/graphics/Typeface;
    .locals 0

    if-eqz p1, :cond_0

    .line 301
    invoke-static {p0}, Lru/okei/timetable/Ui;->bold(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lru/okei/timetable/Ui;->pixel(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private notificationsOk()Z
    .locals 1

    const-string v0, "notification"

    .line 214
    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private openAppDetails()V
    .locals 5

    const-string v0, "package:"

    .line 292
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 293
    invoke-virtual {p0}, Lru/okei/timetable/SetupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 292
    invoke-virtual {p0, v1}, Lru/okei/timetable/SetupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SetupActivity"

    .line 295
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private openBattery()V
    .locals 2

    .line 274
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SetupActivity"

    .line 276
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    invoke-direct {p0}, Lru/okei/timetable/SetupActivity;->openAppDetails()V

    :goto_0
    return-void
.end method

.method private openFullScreen()V
    .locals 5

    const-string v0, "package:"

    .line 259
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-ge v1, v2, :cond_0

    return-void

    .line 263
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_APP_USE_FULL_SCREEN_INTENT"

    .line 264
    invoke-virtual {p0}, Lru/okei/timetable/SetupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 263
    invoke-virtual {p0, v1}, Lru/okei/timetable/SetupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SetupActivity"

    .line 266
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    invoke-direct {p0}, Lru/okei/timetable/SetupActivity;->openAppDetails()V

    :goto_0
    return-void
.end method

.method private openListener()V
    .locals 2

    .line 283
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SetupActivity"

    .line 285
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    invoke-direct {p0}, Lru/okei/timetable/SetupActivity;->openAppDetails()V

    :goto_0
    return-void
.end method

.method private openNotifications()V
    .locals 3

    .line 250
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.provider.extra.APP_PACKAGE"

    .line 251
    invoke-virtual {p0}, Lru/okei/timetable/SetupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 250
    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SetupActivity"

    .line 253
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    invoke-direct {p0}, Lru/okei/timetable/SetupActivity;->openAppDetails()V

    :goto_0
    return-void
.end method

.method private openSettings()V
    .locals 5

    const-string v0, "package:"

    .line 236
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_0

    return-void

    .line 240
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

    .line 241
    invoke-virtual {p0}, Lru/okei/timetable/SetupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 240
    invoke-virtual {p0, v1}, Lru/okei/timetable/SetupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SetupActivity"

    .line 243
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    invoke-direct {p0}, Lru/okei/timetable/SetupActivity;->openAppDetails()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040004

    .line 39
    invoke-virtual {p0, p1}, Lru/okei/timetable/SetupActivity;->setContentView(I)V

    const/4 p1, 0x0

    .line 41
    invoke-direct {p0, p1}, Lru/okei/timetable/SetupActivity;->loadPixel(Z)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/SetupActivity;->pixel:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, v0}, Lru/okei/timetable/SetupActivity;->loadPixel(Z)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/SetupActivity;->pixelBold:Landroid/graphics/Typeface;

    .line 43
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lru/okei/timetable/SetupActivity;->fg:I

    .line 44
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->muted(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lru/okei/timetable/SetupActivity;->muted:I

    .line 45
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->apply(Landroid/app/Activity;)V

    const v0, 0x7f030025

    .line 47
    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/okei/timetable/SetupActivity;->content:Landroid/widget/LinearLayout;

    const v0, 0x7f030026

    .line 48
    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/okei/timetable/SetupActivity;->progress:Landroid/widget/TextView;

    const v0, 0x7f030027

    .line 49
    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    iget-object v1, p0, Lru/okei/timetable/SetupActivity;->pixelBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 52
    iget-object v0, p0, Lru/okei/timetable/SetupActivity;->progress:Landroid/widget/TextView;

    iget-object v1, p0, Lru/okei/timetable/SetupActivity;->pixel:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 53
    iget-object v0, p0, Lru/okei/timetable/SetupActivity;->progress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const v0, 0x7f030024

    .line 54
    invoke-virtual {p0, v0}, Lru/okei/timetable/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    iget-object v1, p0, Lru/okei/timetable/SetupActivity;->pixelBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 57
    new-instance p1, Lru/okei/timetable/SetupActivity$1;

    invoke-direct {p1, p0}, Lru/okei/timetable/SetupActivity$1;-><init>(Lru/okei/timetable/SetupActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-direct {p0}, Lru/okei/timetable/SetupActivity;->build()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 70
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->themeChanged(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lru/okei/timetable/SetupActivity;->recreate()V

    return-void

    .line 74
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 75
    invoke-direct {p0}, Lru/okei/timetable/SetupActivity;->build()V

    return-void
.end method
