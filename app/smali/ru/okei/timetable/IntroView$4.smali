.class Lru/okei/timetable/IntroView$4;
.super Ljava/lang/Object;
.source "IntroView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/IntroView;->type(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/IntroView;

.field final synthetic val$length:I


# direct methods
.method constructor <init>(Lru/okei/timetable/IntroView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lru/okei/timetable/IntroView$4;->this$0:Lru/okei/timetable/IntroView;

    iput p2, p0, Lru/okei/timetable/IntroView$4;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 160
    iget-object v0, p0, Lru/okei/timetable/IntroView$4;->this$0:Lru/okei/timetable/IntroView;

    iget v1, p0, Lru/okei/timetable/IntroView$4;->val$length:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lru/okei/timetable/IntroView;->-$$Nest$mtype(Lru/okei/timetable/IntroView;I)V

    return-void
.end method
