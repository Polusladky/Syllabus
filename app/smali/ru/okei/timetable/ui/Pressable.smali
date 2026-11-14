.class public final Lru/okei/timetable/ui/Pressable;
.super Ljava/lang/Object;
.source "Pressable.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 18
    :cond_0
    new-instance v0, Lru/okei/timetable/ui/Pressable$1;

    invoke-direct {v0}, Lru/okei/timetable/ui/Pressable$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
