.class Lru/okei/timetable/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lru/okei/timetable/IntroView$Host;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/MainActivity;
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

    .line 481
    iput-object p1, p0, Lru/okei/timetable/MainActivity$16;->this$0:Lru/okei/timetable/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alarmActionText()Ljava/lang/String;
    .locals 1

    .line 499
    iget-object v0, p0, Lru/okei/timetable/MainActivity$16;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$malarmActionText(Lru/okei/timetable/MainActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public alarmStateText()Ljava/lang/String;
    .locals 1

    .line 494
    iget-object v0, p0, Lru/okei/timetable/MainActivity$16;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$malarmStateText(Lru/okei/timetable/MainActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iconsAppear()V
    .locals 1

    .line 519
    iget-object v0, p0, Lru/okei/timetable/MainActivity$16;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$miconRowsAppear(Lru/okei/timetable/MainActivity;)V

    return-void
.end method

.method public iconsFinal()V
    .locals 1

    .line 524
    iget-object v0, p0, Lru/okei/timetable/MainActivity$16;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgeticonSettings(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/SettingsIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lru/okei/timetable/MainActivity$16;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgeticonSettings(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/SettingsIconView;

    move-result-object v0

    invoke-virtual {v0}, Lru/okei/timetable/SettingsIconView;->showFinal()V

    .line 527
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity$16;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgeticonShare(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/ui/ShareIconView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lru/okei/timetable/MainActivity$16;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgeticonShare(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/ui/ShareIconView;

    move-result-object v0

    invoke-virtual {v0}, Lru/okei/timetable/ui/ShareIconView;->showFinal()V

    :cond_1
    return-void
.end method

.method public iconsHidden()V
    .locals 1

    .line 514
    iget-object v0, p0, Lru/okei/timetable/MainActivity$16;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$miconRowsHidden(Lru/okei/timetable/MainActivity;)V

    return-void
.end method

.method public onFinished()V
    .locals 1

    .line 534
    iget-object v0, p0, Lru/okei/timetable/MainActivity$16;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$monIntroFinished(Lru/okei/timetable/MainActivity;)V

    return-void
.end method

.method public setAlarmText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 504
    iget-object v0, p0, Lru/okei/timetable/MainActivity$16;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetalarmState(Lru/okei/timetable/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lru/okei/timetable/MainActivity$16;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetalarmState(Lru/okei/timetable/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    :cond_0
    iget-object p1, p0, Lru/okei/timetable/MainActivity$16;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {p1}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetalarmAction(Lru/okei/timetable/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 508
    iget-object p1, p0, Lru/okei/timetable/MainActivity$16;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {p1}, Lru/okei/timetable/MainActivity;->-$$Nest$fgetalarmAction(Lru/okei/timetable/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 489
    iget-object v0, p0, Lru/okei/timetable/MainActivity$16;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0, p1}, Lru/okei/timetable/MainActivity;->-$$Nest$msetSubtitle(Lru/okei/timetable/MainActivity;Ljava/lang/String;)V

    return-void
.end method

.method public subtitleText()Ljava/lang/String;
    .locals 1

    .line 484
    iget-object v0, p0, Lru/okei/timetable/MainActivity$16;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {v0}, Lru/okei/timetable/MainActivity;->-$$Nest$msubtitleText(Lru/okei/timetable/MainActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
