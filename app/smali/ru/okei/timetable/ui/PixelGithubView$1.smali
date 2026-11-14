.class Lru/okei/timetable/ui/PixelGithubView$1;
.super Ljava/lang/Object;
.source "PixelGithubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ui/PixelGithubView;->revealJerky(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private step:I

.field final synthetic this$0:Lru/okei/timetable/ui/PixelGithubView;

.field final synthetic val$stepMs:J

.field final synthetic val$steps:I


# direct methods
.method constructor <init>(Lru/okei/timetable/ui/PixelGithubView;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lru/okei/timetable/ui/PixelGithubView$1;->this$0:Lru/okei/timetable/ui/PixelGithubView;

    iput p2, p0, Lru/okei/timetable/ui/PixelGithubView$1;->val$steps:I

    iput-wide p3, p0, Lru/okei/timetable/ui/PixelGithubView$1;->val$stepMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 55
    iget v0, p0, Lru/okei/timetable/ui/PixelGithubView$1;->step:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lru/okei/timetable/ui/PixelGithubView$1;->step:I

    .line 56
    iget-object v1, p0, Lru/okei/timetable/ui/PixelGithubView$1;->this$0:Lru/okei/timetable/ui/PixelGithubView;

    int-to-float v0, v0

    iget v2, p0, Lru/okei/timetable/ui/PixelGithubView$1;->val$steps:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Lru/okei/timetable/ui/PixelGithubView;->-$$Nest$fputprogress(Lru/okei/timetable/ui/PixelGithubView;F)V

    .line 57
    iget-object v0, p0, Lru/okei/timetable/ui/PixelGithubView$1;->this$0:Lru/okei/timetable/ui/PixelGithubView;

    invoke-virtual {v0}, Lru/okei/timetable/ui/PixelGithubView;->invalidate()V

    .line 58
    iget v0, p0, Lru/okei/timetable/ui/PixelGithubView$1;->step:I

    iget v1, p0, Lru/okei/timetable/ui/PixelGithubView$1;->val$steps:I

    if-ge v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lru/okei/timetable/ui/PixelGithubView$1;->this$0:Lru/okei/timetable/ui/PixelGithubView;

    iget-wide v1, p0, Lru/okei/timetable/ui/PixelGithubView$1;->val$stepMs:J

    invoke-virtual {v0, p0, v1, v2}, Lru/okei/timetable/ui/PixelGithubView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
