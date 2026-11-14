.class Lru/okei/timetable/SettingsActivity$45;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsActivity;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SettingsActivity;

.field final synthetic val$keepScroll:I


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 804
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$45;->this$0:Lru/okei/timetable/SettingsActivity;

    iput p2, p0, Lru/okei/timetable/SettingsActivity$45;->val$keepScroll:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 807
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$45;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v0}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fgetsettingsScroll(Lru/okei/timetable/SettingsActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lru/okei/timetable/SettingsActivity$45;->val$keepScroll:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
