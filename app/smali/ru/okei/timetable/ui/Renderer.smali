.class public final Lru/okei/timetable/ui/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/ui/Renderer$Sink;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static render(Landroid/widget/LinearLayout;Lru/okei/timetable/data/WeekSchedule;Ljava/util/List;ZLjava/lang/String;Lru/okei/timetable/ui/Renderer$Sink;ILjava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Lru/okei/timetable/data/WeekSchedule;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;Z",
            "Ljava/lang/String;",
            "Lru/okei/timetable/ui/Renderer$Sink;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 46
    invoke-interface {p5}, Lru/okei/timetable/ui/Renderer$Sink;->clearLists()V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    const/high16 p1, 0x41400000    # 12.0f

    .line 48
    invoke-interface {p5, p4, p1, p6, v0}, Lru/okei/timetable/ui/Renderer$Sink;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    const/high16 p2, 0x41a00000    # 20.0f

    .line 49
    invoke-interface {p5, p2}, Lru/okei/timetable/ui/Renderer$Sink;->dp(F)I

    move-result p3

    invoke-interface {p5, p2}, Lru/okei/timetable/ui/Renderer$Sink;->dp(F)I

    move-result p2

    invoke-virtual {p1, v0, p3, v0, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 p2, 0x11

    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p7

    :cond_0
    if-nez p1, :cond_1

    return-object p7

    .line 57
    :cond_1
    iget-object p3, p1, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-static {p3}, Lru/okei/timetable/alarm/AlarmPlan;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p3

    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p4

    .line 59
    invoke-static {p1, p4}, Lru/okei/timetable/ui/WeekInfo;->todayInside(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;)Z

    move-result p6

    .line 60
    invoke-static {p4}, Lru/okei/timetable/ui/WeekInfo;->todayIndex(Ljava/util/Calendar;)I

    move-result p4

    .line 62
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 63
    invoke-interface {p5}, Lru/okei/timetable/ui/Renderer$Sink;->stale()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    :cond_2
    invoke-interface {p5}, Lru/okei/timetable/ui/Renderer$Sink;->health()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 69
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    const/4 v1, 0x0

    .line 71
    :goto_0
    iget-object v2, p1, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 72
    iget-object v2, p1, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/okei/timetable/data/DaySchedule;

    if-eqz p6, :cond_4

    .line 73
    iget v3, v2, Lru/okei/timetable/data/DaySchedule;->index:I

    if-ne v3, p4, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-nez p3, :cond_5

    const/4 v4, 0x0

    goto :goto_2

    .line 74
    :cond_5
    invoke-virtual {p3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Calendar;

    :goto_2
    if-eqz v4, :cond_6

    const/4 v5, 0x6

    .line 76
    iget v6, v2, Lru/okei/timetable/data/DaySchedule;->index:I

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    :cond_6
    if-lez v1, :cond_7

    .line 79
    invoke-interface {p5}, Lru/okei/timetable/ui/Renderer$Sink;->separator()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    :cond_7
    invoke-interface {p5, v2, v3, v4}, Lru/okei/timetable/ui/Renderer$Sink;->dayView(Lru/okei/timetable/data/DaySchedule;ZLjava/util/Calendar;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_3

    .line 85
    :cond_8
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_9

    if-eqz p8, :cond_9

    .line 88
    invoke-interface {p8}, Ljava/util/List;->clear()V

    .line 89
    invoke-interface {p8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    return-object p7
.end method
