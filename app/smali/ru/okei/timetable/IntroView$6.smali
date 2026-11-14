.class Lru/okei/timetable/IntroView$6;
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

.field final synthetic val$safe:I


# direct methods
.method constructor <init>(Lru/okei/timetable/IntroView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lru/okei/timetable/IntroView$6;->this$0:Lru/okei/timetable/IntroView;

    iput p2, p0, Lru/okei/timetable/IntroView$6;->val$safe:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 184
    iget-object v0, p0, Lru/okei/timetable/IntroView$6;->this$0:Lru/okei/timetable/IntroView;

    iget v1, p0, Lru/okei/timetable/IntroView$6;->val$safe:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lru/okei/timetable/IntroView;->-$$Nest$merase(Lru/okei/timetable/IntroView;I)V

    return-void
.end method
