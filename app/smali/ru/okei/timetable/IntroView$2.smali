.class Lru/okei/timetable/IntroView$2;
.super Ljava/lang/Object;
.source "IntroView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/IntroView;->fitText()V
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

    .line 91
    iput-object p1, p0, Lru/okei/timetable/IntroView$2;->this$0:Lru/okei/timetable/IntroView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 94
    iget-object v0, p0, Lru/okei/timetable/IntroView$2;->this$0:Lru/okei/timetable/IntroView;

    invoke-static {v0}, Lru/okei/timetable/IntroView;->-$$Nest$fgettext(Lru/okei/timetable/IntroView;)Lru/okei/timetable/IntroOutlineView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/IntroView$2;->this$0:Lru/okei/timetable/IntroView;

    invoke-static {v0}, Lru/okei/timetable/IntroView;->-$$Nest$fgetactivity(Lru/okei/timetable/IntroView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 98
    iget-object v0, p0, Lru/okei/timetable/IntroView$2;->this$0:Lru/okei/timetable/IntroView;

    invoke-static {v0}, Lru/okei/timetable/IntroView;->-$$Nest$fgetactivity(Lru/okei/timetable/IntroView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 99
    iget-object v1, p0, Lru/okei/timetable/IntroView$2;->this$0:Lru/okei/timetable/IntroView;

    invoke-static {v1}, Lru/okei/timetable/IntroView;->-$$Nest$fgetactivity(Lru/okei/timetable/IntroView;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 101
    iget-object v3, p0, Lru/okei/timetable/IntroView$2;->this$0:Lru/okei/timetable/IntroView;

    invoke-static {v3}, Lru/okei/timetable/IntroView;->-$$Nest$fgetactivity(Lru/okei/timetable/IntroView;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lru/okei/timetable/Ui;->bold(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v3, 0x42c80000    # 100.0f

    .line 102
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 103
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    return-void

    :cond_1
    int-to-float v0, v0

    const v2, 0x3f5c28f6    # 0.86f

    mul-float v0, v0, v2

    mul-float v0, v0, v3

    div-float/2addr v0, v1

    .line 109
    iget-object v1, p0, Lru/okei/timetable/IntroView$2;->this$0:Lru/okei/timetable/IntroView;

    invoke-static {v1}, Lru/okei/timetable/IntroView;->-$$Nest$fgettext(Lru/okei/timetable/IntroView;)Lru/okei/timetable/IntroOutlineView;

    move-result-object v1

    iget-object v2, p0, Lru/okei/timetable/IntroView$2;->this$0:Lru/okei/timetable/IntroView;

    invoke-static {v2}, Lru/okei/timetable/IntroView;->-$$Nest$fgetactivity(Lru/okei/timetable/IntroView;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lru/okei/timetable/Ui;->bold(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v3, p0, Lru/okei/timetable/IntroView$2;->this$0:Lru/okei/timetable/IntroView;

    invoke-static {v3}, Lru/okei/timetable/IntroView;->-$$Nest$fgetactivity(Lru/okei/timetable/IntroView;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f010002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lru/okei/timetable/IntroOutlineView;->setStyle(Landroid/graphics/Typeface;FI)V

    return-void
.end method
