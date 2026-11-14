.class Lru/okei/timetable/PagePager$2;
.super Ljava/lang/Object;
.source "PagePager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/PagePager;->dispatch(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/PagePager;

.field final synthetic val$closing:Lru/okei/timetable/InfoPage;


# direct methods
.method constructor <init>(Lru/okei/timetable/PagePager;Lru/okei/timetable/InfoPage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lru/okei/timetable/PagePager$2;->this$0:Lru/okei/timetable/PagePager;

    iput-object p2, p0, Lru/okei/timetable/PagePager$2;->val$closing:Lru/okei/timetable/InfoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 152
    iget-object v0, p0, Lru/okei/timetable/PagePager$2;->val$closing:Lru/okei/timetable/InfoPage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/okei/timetable/InfoPage;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lru/okei/timetable/PagePager$2;->val$closing:Lru/okei/timetable/InfoPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/okei/timetable/InfoPage;->setTranslationX(F)V

    return-void
.end method
