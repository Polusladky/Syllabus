.class Lru/okei/timetable/IntroView$1;
.super Ljava/lang/Object;
.source "IntroView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/IntroView;->bind()V
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

    .line 77
    iput-object p1, p0, Lru/okei/timetable/IntroView$1;->this$0:Lru/okei/timetable/IntroView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lru/okei/timetable/IntroView$1;->this$0:Lru/okei/timetable/IntroView;

    invoke-virtual {p1}, Lru/okei/timetable/IntroView;->finish()V

    return-void
.end method
