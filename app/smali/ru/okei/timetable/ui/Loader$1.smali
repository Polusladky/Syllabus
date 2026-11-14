.class Lru/okei/timetable/ui/Loader$1;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/ui/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/ui/Loader;


# direct methods
.method constructor <init>(Lru/okei/timetable/ui/Loader;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/okei/timetable/ui/Loader$1;->this$0:Lru/okei/timetable/ui/Loader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 19
    iget-object v0, p0, Lru/okei/timetable/ui/Loader$1;->this$0:Lru/okei/timetable/ui/Loader;

    invoke-static {v0}, Lru/okei/timetable/ui/Loader;->-$$Nest$fgettext(Lru/okei/timetable/ui/Loader;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lru/okei/timetable/ui/Loader;->-$$Nest$sfgetFRAMES()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/okei/timetable/ui/Loader$1;->this$0:Lru/okei/timetable/ui/Loader;

    invoke-static {v2}, Lru/okei/timetable/ui/Loader;->-$$Nest$fgetframe(Lru/okei/timetable/ui/Loader;)I

    move-result v2

    invoke-static {}, Lru/okei/timetable/ui/Loader;->-$$Nest$sfgetFRAMES()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lru/okei/timetable/ui/Loader$1;->this$0:Lru/okei/timetable/ui/Loader;

    invoke-static {v0}, Lru/okei/timetable/ui/Loader;->-$$Nest$fgetframe(Lru/okei/timetable/ui/Loader;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lru/okei/timetable/ui/Loader;->-$$Nest$fputframe(Lru/okei/timetable/ui/Loader;I)V

    .line 21
    iget-object v0, p0, Lru/okei/timetable/ui/Loader$1;->this$0:Lru/okei/timetable/ui/Loader;

    invoke-static {v0}, Lru/okei/timetable/ui/Loader;->-$$Nest$fgethandler(Lru/okei/timetable/ui/Loader;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x104

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
