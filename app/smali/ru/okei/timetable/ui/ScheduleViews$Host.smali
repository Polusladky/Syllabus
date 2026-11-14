.class public interface abstract Lru/okei/timetable/ui/ScheduleViews$Host;
.super Ljava/lang/Object;
.source "ScheduleViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/ui/ScheduleViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Host"
.end annotation


# virtual methods
.method public abstract breakRow(IILjava/util/Calendar;ZI)Landroid/view/View;
.end method

.method public abstract lessonRow(Lru/okei/timetable/data/Lesson;I)Landroid/view/View;
.end method

.method public abstract rowBuilt(Landroid/view/View;)V
.end method
