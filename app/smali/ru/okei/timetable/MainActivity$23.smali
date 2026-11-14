.class Lru/okei/timetable/MainActivity$23;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lru/okei/timetable/ui/Renderer$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity;->rebuild(Ljava/lang/String;)V
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

    .line 1072
    iput-object p1, p0, Lru/okei/timetable/MainActivity$23;->this$0:Lru/okei/timetable/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLists()V
    .locals 1

    .line 1115
    iget-object v0, p0, Lru/okei/timetable/MainActivity$23;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetbreakViews(Lru/okei/timetable/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1116
    iget-object v0, p0, Lru/okei/timetable/MainActivity$23;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetrowViews(Lru/okei/timetable/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public dayView(Lru/okei/timetable/data/DaySchedule;ZLjava/util/Calendar;)Landroid/view/View;
    .locals 1

    .line 1075
    iget-object v0, p0, Lru/okei/timetable/MainActivity$23;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0, p1, p2, p3}, Lru/okei/timetable/MainActivity;->-$$Nest$mdayView(Lru/okei/timetable/MainActivity;Lru/okei/timetable/data/DaySchedule;ZLjava/util/Calendar;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dp(F)I
    .locals 1

    .line 1110
    iget-object v0, p0, Lru/okei/timetable/MainActivity$23;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0, p1}, Lru/okei/timetable/MainActivity;->-$$Nest$mdp(Lru/okei/timetable/MainActivity;F)I

    move-result p1

    return p1
.end method

.method public health()Landroid/view/View;
    .locals 3

    .line 1090
    iget-object v0, p0, Lru/okei/timetable/MainActivity$23;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgethealth(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/data/ParserHealth$Report;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/okei/timetable/MainActivity$23;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgethealth(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/data/ParserHealth$Report;

    move-result-object v0

    invoke-virtual {v0}, Lru/okei/timetable/data/ParserHealth$Report;->broken()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/okei/timetable/MainActivity$23;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgethealth(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/data/ParserHealth$Report;

    move-result-object v0

    invoke-virtual {v0}, Lru/okei/timetable/data/ParserHealth$Report;->suspicious()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1093
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity$23;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$mhealthBanner(Lru/okei/timetable/MainActivity;)Landroid/view/View;

    move-result-object v0

    const-wide/16 v1, 0x5a

    .line 1094
    invoke-static {v0, v1, v2}, Lru/okei/timetable/ui/Motion;->fadeIn(Landroid/view/View;J)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public label(Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .locals 1

    .line 1105
    iget-object v0, p0, Lru/okei/timetable/MainActivity$23;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lru/okei/timetable/MainActivity;->-$$Nest$mlabel(Lru/okei/timetable/MainActivity;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public separator()Landroid/view/View;
    .locals 1

    .line 1100
    iget-object v0, p0, Lru/okei/timetable/MainActivity$23;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$mseparator(Lru/okei/timetable/MainActivity;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public stale()Landroid/view/View;
    .locals 3

    .line 1080
    iget-object v0, p0, Lru/okei/timetable/MainActivity$23;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$mweekIsStale(Lru/okei/timetable/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1083
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity$23;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$mstaleBanner(Lru/okei/timetable/MainActivity;)Landroid/view/View;

    move-result-object v0

    const-wide/16 v1, 0x5a

    .line 1084
    invoke-static {v0, v1, v2}, Lru/okei/timetable/ui/Motion;->fadeIn(Landroid/view/View;J)V

    return-object v0
.end method
