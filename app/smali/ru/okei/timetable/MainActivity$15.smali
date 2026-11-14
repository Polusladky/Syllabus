.class Lru/okei/timetable/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity;->iconRowsAppear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/MainActivity;


# direct methods
.method constructor <init>(Lru/okei/timetable/MainActivity;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lru/okei/timetable/MainActivity$15;->this$0:Lru/okei/timetable/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 474
    iget-object v0, p0, Lru/okei/timetable/MainActivity$15;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgeticonShare(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/ui/ShareIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lru/okei/timetable/MainActivity$15;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgeticonShare(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/ui/ShareIconView;

    move-result-object v0

    invoke-virtual {v0}, Lru/okei/timetable/ui/ShareIconView;->playAppear()V

    :cond_0
    return-void
.end method
