.class Lru/okei/timetable/PagePager$1;
.super Ljava/lang/Object;
.source "PagePager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/PagePager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/PagePager;


# direct methods
.method constructor <init>(Lru/okei/timetable/PagePager;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/okei/timetable/PagePager$1;->this$0:Lru/okei/timetable/PagePager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 40
    iget-object v0, p0, Lru/okei/timetable/PagePager$1;->this$0:Lru/okei/timetable/PagePager;

    invoke-static {v0}, Lru/okei/timetable/PagePager;->-$$Nest$fgetshown(Lru/okei/timetable/PagePager;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/PagePager$1;->this$0:Lru/okei/timetable/PagePager;

    invoke-static {v0}, Lru/okei/timetable/PagePager;->-$$Nest$fgetshown(Lru/okei/timetable/PagePager;)I

    move-result v1

    invoke-static {v0, v1}, Lru/okei/timetable/PagePager;->-$$Nest$mupdate(Lru/okei/timetable/PagePager;I)V

    .line 44
    iget-object v0, p0, Lru/okei/timetable/PagePager$1;->this$0:Lru/okei/timetable/PagePager;

    invoke-static {v0}, Lru/okei/timetable/PagePager;->-$$Nest$mcurrent(Lru/okei/timetable/PagePager;)Lru/okei/timetable/InfoPage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Lru/okei/timetable/InfoPage;->pulse()V

    .line 48
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/PagePager$1;->this$0:Lru/okei/timetable/PagePager;

    invoke-static {v0}, Lru/okei/timetable/PagePager;->-$$Nest$fgetmain(Lru/okei/timetable/PagePager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
