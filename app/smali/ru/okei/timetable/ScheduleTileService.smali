.class public Lru/okei/timetable/ScheduleTileService;
.super Landroid/service/quicksettings/TileService;
.source "ScheduleTileService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method private update()V
    .locals 3

    .line 21
    invoke-virtual {p0}, Lru/okei/timetable/ScheduleTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 26
    invoke-static {p0}, Lru/okei/timetable/data/Groups;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    const-string v1, "\u0420\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435"

    .line 27
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 30
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 35
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/okei/timetable/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    :try_start_0
    invoke-virtual {p0, v0}, Lru/okei/timetable/ScheduleTileService;->startActivityAndCollapse(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ScheduleTileService"

    .line 41
    invoke-static {v2, v1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    :try_start_1
    invoke-virtual {p0, v0}, Lru/okei/timetable/ScheduleTileService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 46
    invoke-static {v2, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onStartListening()V
    .locals 0

    .line 16
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 17
    invoke-direct {p0}, Lru/okei/timetable/ScheduleTileService;->update()V

    return-void
.end method
