.class Lru/okei/timetable/IntroView$8;
.super Ljava/lang/Object;
.source "IntroView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/IntroView;->dropVeil()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/IntroView;


# direct methods
.method constructor <init>(Lru/okei/timetable/IntroView;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lru/okei/timetable/IntroView$8;->this$0:Lru/okei/timetable/IntroView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 205
    iget-object v0, p0, Lru/okei/timetable/IntroView$8;->this$0:Lru/okei/timetable/IntroView;

    invoke-static {v0}, Lru/okei/timetable/IntroView;->-$$Nest$fgetoverlay(Lru/okei/timetable/IntroView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lru/okei/timetable/IntroView$8;->this$0:Lru/okei/timetable/IntroView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/okei/timetable/IntroView;->-$$Nest$mtypeSubtitle(Lru/okei/timetable/IntroView;I)V

    return-void
.end method
