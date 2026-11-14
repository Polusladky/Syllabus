.class public final Lru/okei/timetable/ui/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# static fields
.field private static final FRAMES:[Ljava/lang/String;

.field private static final INTERVAL:J = 0x104L


# instance fields
.field private frame:I

.field private final handler:Landroid/os/Handler;

.field private final text:Landroid/widget/TextView;

.field private final tick:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetframe(Lru/okei/timetable/ui/Loader;)I
    .locals 0

    iget p0, p0, Lru/okei/timetable/ui/Loader;->frame:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lru/okei/timetable/ui/Loader;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/ui/Loader;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettext(Lru/okei/timetable/ui/Loader;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/ui/Loader;->text:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputframe(Lru/okei/timetable/ui/Loader;I)V
    .locals 0

    iput p1, p0, Lru/okei/timetable/ui/Loader;->frame:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetFRAMES()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lru/okei/timetable/ui/Loader;->FRAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string v0, "[###-]"

    const-string v1, "[####]"

    const-string v2, "[#---]"

    const-string v3, "[##--]"

    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/ui/Loader;->FRAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/widget/TextView;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lru/okei/timetable/ui/Loader$1;

    invoke-direct {v0, p0}, Lru/okei/timetable/ui/Loader$1;-><init>(Lru/okei/timetable/ui/Loader;)V

    iput-object v0, p0, Lru/okei/timetable/ui/Loader;->tick:Ljava/lang/Runnable;

    .line 26
    iput-object p1, p0, Lru/okei/timetable/ui/Loader;->handler:Landroid/os/Handler;

    .line 27
    iput-object p2, p0, Lru/okei/timetable/ui/Loader;->text:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 31
    invoke-virtual {p0}, Lru/okei/timetable/ui/Loader;->stop()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lru/okei/timetable/ui/Loader;->frame:I

    .line 33
    iget-object v1, p0, Lru/okei/timetable/ui/Loader;->text:Landroid/widget/TextView;

    sget-object v2, Lru/okei/timetable/ui/Loader;->FRAMES:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lru/okei/timetable/ui/Loader;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/ui/Loader;->tick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x104

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 38
    iget-object v0, p0, Lru/okei/timetable/ui/Loader;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/ui/Loader;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
