.class public final Lru/okei/timetable/ui/StateBox;
.super Ljava/lang/Object;
.source "StateBox.java"


# instance fields
.field private final box:Landroid/view/View;

.field private final retry:Landroid/view/View;

.field private final scroll:Landroid/view/View;

.field private final text:Landroid/widget/TextView;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lru/okei/timetable/ui/StateBox;->box:Landroid/view/View;

    .line 17
    iput-object p2, p0, Lru/okei/timetable/ui/StateBox;->title:Landroid/widget/TextView;

    .line 18
    iput-object p3, p0, Lru/okei/timetable/ui/StateBox;->text:Landroid/widget/TextView;

    .line 19
    iput-object p4, p0, Lru/okei/timetable/ui/StateBox;->retry:Landroid/view/View;

    .line 20
    iput-object p5, p0, Lru/okei/timetable/ui/StateBox;->scroll:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 43
    iget-object v0, p0, Lru/okei/timetable/ui/StateBox;->box:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/ui/StateBox;->scroll:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 25
    iget-object v0, p0, Lru/okei/timetable/ui/StateBox;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_0
    iget-object p1, p0, Lru/okei/timetable/ui/StateBox;->text:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :cond_1
    iget-object p1, p0, Lru/okei/timetable/ui/StateBox;->retry:Landroid/view/View;

    const/16 p2, 0x8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    :cond_2
    const/16 p3, 0x8

    .line 32
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 34
    :cond_3
    iget-object p1, p0, Lru/okei/timetable/ui/StateBox;->box:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    :cond_4
    iget-object p1, p0, Lru/okei/timetable/ui/StateBox;->scroll:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method
