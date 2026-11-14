.class Lru/okei/timetable/ui/WeekTabs$1;
.super Ljava/lang/Object;
.source "WeekTabs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ui/WeekTabs;->tab(Ljava/lang/String;Z)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/ui/WeekTabs;

.field final synthetic val$archive:Z


# direct methods
.method constructor <init>(Lru/okei/timetable/ui/WeekTabs;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lru/okei/timetable/ui/WeekTabs$1;->this$0:Lru/okei/timetable/ui/WeekTabs;

    iput-boolean p2, p0, Lru/okei/timetable/ui/WeekTabs$1;->val$archive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    invoke-static {p1}, Lru/okei/timetable/Haptics;->tick(Landroid/view/View;)V

    .line 83
    iget-object p1, p0, Lru/okei/timetable/ui/WeekTabs$1;->this$0:Lru/okei/timetable/ui/WeekTabs;

    invoke-static {p1}, Lru/okei/timetable/ui/WeekTabs;->-$$Nest$fgetlistener(Lru/okei/timetable/ui/WeekTabs;)Lru/okei/timetable/ui/WeekTabs$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lru/okei/timetable/ui/WeekTabs$1;->this$0:Lru/okei/timetable/ui/WeekTabs;

    invoke-static {p1}, Lru/okei/timetable/ui/WeekTabs;->-$$Nest$fgetlistener(Lru/okei/timetable/ui/WeekTabs;)Lru/okei/timetable/ui/WeekTabs$Listener;

    move-result-object p1

    iget-boolean v0, p0, Lru/okei/timetable/ui/WeekTabs$1;->val$archive:Z

    invoke-interface {p1, v0}, Lru/okei/timetable/ui/WeekTabs$Listener;->onWeekSelected(Z)V

    :cond_0
    return-void
.end method
