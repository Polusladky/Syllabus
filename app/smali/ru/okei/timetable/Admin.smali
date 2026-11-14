.class public final Lru/okei/timetable/Admin;
.super Ljava/lang/Object;
.source "Admin.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static component(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    .line 65
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lru/okei/timetable/alarm/AlarmAdminReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static isActive(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "device_policy"

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0}, Lru/okei/timetable/Admin;->component(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lock(Landroid/content/Context;)V
    .locals 1

    const-string v0, "device_policy"

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    .line 39
    invoke-static {p0}, Lru/okei/timetable/Admin;->component(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Admin"

    .line 45
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static remove(Landroid/content/Context;)V
    .locals 1

    const-string v0, "device_policy"

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    :try_start_0
    invoke-static {p0}, Lru/okei/timetable/Admin;->component(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Admin"

    .line 59
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static request(Landroid/app/Activity;)V
    .locals 3

    .line 26
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.DEVICE_ADMIN"

    .line 27
    invoke-static {p0}, Lru/okei/timetable/Admin;->component(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.app.extra.ADD_EXPLANATION"

    const-string v2, "\u041d\u0443\u0436\u043d\u043e, \u0447\u0442\u043e\u0431\u044b \u044d\u043a\u0440\u0430\u043d \u0433\u0430\u0441 \u043f\u0440\u0438 \u043e\u0442\u043a\u043b\u0430\u0434\u044b\u0432\u0430\u043d\u0438\u0438 \u0431\u0443\u0434\u0438\u043b\u044c\u043d\u0438\u043a\u0430"

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Admin"

    .line 32
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
