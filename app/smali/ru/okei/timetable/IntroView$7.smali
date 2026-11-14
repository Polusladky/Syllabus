.class Lru/okei/timetable/IntroView$7;
.super Ljava/lang/Object;
.source "IntroView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/IntroView;->erase(I)V
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

    .line 188
    iput-object p1, p0, Lru/okei/timetable/IntroView$7;->this$0:Lru/okei/timetable/IntroView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 191
    iget-object v0, p0, Lru/okei/timetable/IntroView$7;->this$0:Lru/okei/timetable/IntroView;

    invoke-static {v0}, Lru/okei/timetable/IntroView;->-$$Nest$mdropVeil(Lru/okei/timetable/IntroView;)V

    return-void
.end method
