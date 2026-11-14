.class Lru/okei/timetable/DiagnosticsActivity$1;
.super Ljava/lang/Object;
.source "DiagnosticsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/DiagnosticsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/DiagnosticsActivity;


# direct methods
.method constructor <init>(Lru/okei/timetable/DiagnosticsActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lru/okei/timetable/DiagnosticsActivity$1;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 59
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity$1;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    invoke-static {v0}, Lru/okei/timetable/DiagnosticsActivity;->-$$Nest$fgetcountdown(Lru/okei/timetable/DiagnosticsActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity$1;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    invoke-static {v0}, Lru/okei/timetable/DiagnosticsActivity;->-$$Nest$fgettestAt(Lru/okei/timetable/DiagnosticsActivity;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 64
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity$1;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    invoke-static {v0}, Lru/okei/timetable/DiagnosticsActivity;->-$$Nest$fgetcountdown(Lru/okei/timetable/DiagnosticsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/DiagnosticsActivity$1;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    const v2, 0x7f060023

    invoke-virtual {v1, v2}, Lru/okei/timetable/DiagnosticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 67
    :cond_1
    iget-object v2, p0, Lru/okei/timetable/DiagnosticsActivity$1;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    invoke-static {v2}, Lru/okei/timetable/DiagnosticsActivity;->-$$Nest$fgetcountdown(Lru/okei/timetable/DiagnosticsActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lru/okei/timetable/DiagnosticsActivity$1;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const-string v0, "%.1f"

    invoke-static {v6, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const v0, 0x7f060022

    .line 67
    invoke-virtual {v3, v0, v5}, Lru/okei/timetable/DiagnosticsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity$1;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    invoke-static {v0}, Lru/okei/timetable/DiagnosticsActivity;->-$$Nest$fgetticker(Lru/okei/timetable/DiagnosticsActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
