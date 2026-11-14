.class Lru/okei/timetable/ShareActivity$8;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ShareActivity;->share()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/ShareActivity;


# direct methods
.method constructor <init>(Lru/okei/timetable/ShareActivity;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lru/okei/timetable/ShareActivity$8;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "schedule.png"

    .line 325
    :try_start_0
    iget-object v1, p0, Lru/okei/timetable/ShareActivity$8;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {v1}, Lru/okei/timetable/ShareActivity;->-$$Nest$fgetweek(Lru/okei/timetable/ShareActivity;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v2

    iget-object v3, p0, Lru/okei/timetable/ShareActivity$8;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-static {v3}, Lru/okei/timetable/ShareActivity;->-$$Nest$fgetselected(Lru/okei/timetable/ShareActivity;)[Z

    move-result-object v3

    invoke-static {v1, v2, v3}, Lru/okei/timetable/ScheduleImage;->render(Landroid/content/Context;Lru/okei/timetable/data/WeekSchedule;[Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 326
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lru/okei/timetable/ShareActivity$8;->this$0:Lru/okei/timetable/ShareActivity;

    invoke-virtual {v3}, Lru/okei/timetable/ShareActivity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 327
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 333
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 334
    invoke-static {v0}, Lru/okei/timetable/ShareProvider;->uriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lru/okei/timetable/ShareActivity$8;->this$0:Lru/okei/timetable/ShareActivity;

    new-instance v2, Lru/okei/timetable/ShareActivity$8$1;

    invoke-direct {v2, p0, v0}, Lru/okei/timetable/ShareActivity$8$1;-><init>(Lru/okei/timetable/ShareActivity$8;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lru/okei/timetable/ShareActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 331
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 332
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "ShareActivity"

    .line 344
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    iget-object v0, p0, Lru/okei/timetable/ShareActivity$8;->this$0:Lru/okei/timetable/ShareActivity;

    new-instance v1, Lru/okei/timetable/ShareActivity$8$2;

    invoke-direct {v1, p0}, Lru/okei/timetable/ShareActivity$8$2;-><init>(Lru/okei/timetable/ShareActivity$8;)V

    invoke-virtual {v0, v1}, Lru/okei/timetable/ShareActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
