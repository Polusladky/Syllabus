.class public interface abstract Lru/okei/timetable/ui/Renderer$Sink;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/ui/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Sink"
.end annotation


# virtual methods
.method public abstract clearLists()V
.end method

.method public abstract dayView(Lru/okei/timetable/data/DaySchedule;ZLjava/util/Calendar;)Landroid/view/View;
.end method

.method public abstract dp(F)I
.end method

.method public abstract health()Landroid/view/View;
.end method

.method public abstract label(Ljava/lang/String;FIZ)Landroid/widget/TextView;
.end method

.method public abstract separator()Landroid/view/View;
.end method

.method public abstract stale()Landroid/view/View;
.end method
