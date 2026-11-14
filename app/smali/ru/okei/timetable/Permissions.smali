.class public final Lru/okei/timetable/Permissions;
.super Ljava/lang/Object;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/Permissions$Item;
    }
.end annotation


# static fields
.field public static final ADMIN:I = 0x5

.field public static final BATTERY:I = 0x3

.field public static final EXACT:I = 0x1

.field public static final FULLSCREEN:I = 0x2

.field public static final LISTENER:I = 0x4

.field public static final MICROPHONE:I = 0x6

.field public static final NOTIFICATIONS:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static all(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lru/okei/timetable/Permissions$Item;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 45
    new-instance v1, Lru/okei/timetable/Permissions$Item;

    const v2, 0x7f0600fb

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0600fc

    .line 46
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lru/okei/timetable/Permissions$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    new-instance v1, Lru/okei/timetable/Permissions$Item;

    const v2, 0x7f0600f5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0600f6

    .line 49
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lru/okei/timetable/Permissions$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_1

    .line 51
    new-instance v1, Lru/okei/timetable/Permissions$Item;

    const v2, 0x7f0600f7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0600f8

    .line 52
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v4, v2, v3}, Lru/okei/timetable/Permissions$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_1
    new-instance v1, Lru/okei/timetable/Permissions$Item;

    const v2, 0x7f0600f2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0600f3

    .line 55
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v1, v4, v2, v3}, Lru/okei/timetable/Permissions$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lru/okei/timetable/Permissions$Item;

    const v2, 0x7f0600f9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0600fa

    .line 57
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-direct {v1, v4, v2, v3}, Lru/okei/timetable/Permissions$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lru/okei/timetable/Permissions$Item;

    const v2, 0x7f0600f0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0600f1

    .line 59
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2, p0}, Lru/okei/timetable/Permissions$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static ask(Landroid/app/Activity;II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "Permissions"

    const-string v3, "package:"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    :try_start_0
    new-array p1, v1, [Ljava/lang/String;

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, p1, v0

    .line 139
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 136
    :pswitch_1
    invoke-static {p0}, Lru/okei/timetable/Admin;->request(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    return-void

    .line 129
    :pswitch_2
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    :try_start_2
    invoke-static {v2, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_0
    return-void

    .line 121
    :pswitch_3
    :try_start_3
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 124
    :try_start_4
    invoke-static {v2, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_1
    return-void

    .line 112
    :pswitch_4
    :try_start_5
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.MANAGE_APP_USE_FULL_SCREEN_INTENT"

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 116
    :try_start_6
    invoke-static {v2, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :goto_2
    return-void

    .line 104
    :pswitch_5
    :try_start_7
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 107
    :try_start_8
    invoke-static {v2, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :pswitch_6
    new-array p1, v1, [Ljava/lang/String;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    aput-object v1, p1, v0

    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    return-void

    :catch_4
    move-exception p1

    .line 146
    invoke-static {v2, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :try_start_9
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    :catch_5
    move-exception p0

    .line 151
    :try_start_a
    invoke-static {v2, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    .line 154
    invoke-static {v2, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static granted(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const-string p1, "android.permission.RECORD_AUDIO"

    .line 78
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 76
    :pswitch_1
    invoke-static {p0}, Lru/okei/timetable/Admin;->isActive(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 74
    :pswitch_2
    invoke-static {p0}, Lru/okei/timetable/Permissions;->listenerGranted(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 72
    :pswitch_3
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSetup;->isIgnoringBattery(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 70
    :pswitch_4
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSetup;->fullScreen(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 68
    :pswitch_5
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSetup;->exact(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 66
    :pswitch_6
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSetup;->notifications(Landroid/content/Context;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static listenerGranted(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception p0

    const-string v1, "Permissions"

    .line 90
    invoke-static {v1, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
