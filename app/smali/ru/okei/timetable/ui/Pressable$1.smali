.class Lru/okei/timetable/ui/Pressable$1;
.super Ljava/lang/Object;
.source "Pressable.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ui/Pressable;->attach(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Lru/okei/timetable/Haptics;->tick(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
