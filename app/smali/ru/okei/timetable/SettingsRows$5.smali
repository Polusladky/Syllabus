.class Lru/okei/timetable/SettingsRows$5;
.super Ljava/lang/Object;
.source "SettingsRows.java"

# interfaces
.implements Lru/okei/timetable/SettingsRows$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsRows;->stepper(Ljava/lang/String;Ljava/lang/String;Lru/okei/timetable/SettingsRows$Value;Lru/okei/timetable/SettingsRows$Action;Lru/okei/timetable/SettingsRows$Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SettingsRows;

.field final synthetic val$minus:Lru/okei/timetable/SettingsRows$Action;

.field final synthetic val$value:Lru/okei/timetable/SettingsRows$Value;

.field final synthetic val$valueView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsRows;Lru/okei/timetable/SettingsRows$Action;Landroid/widget/TextView;Lru/okei/timetable/SettingsRows$Value;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lru/okei/timetable/SettingsRows$5;->this$0:Lru/okei/timetable/SettingsRows;

    iput-object p2, p0, Lru/okei/timetable/SettingsRows$5;->val$minus:Lru/okei/timetable/SettingsRows$Action;

    iput-object p3, p0, Lru/okei/timetable/SettingsRows$5;->val$valueView:Landroid/widget/TextView;

    iput-object p4, p0, Lru/okei/timetable/SettingsRows$5;->val$value:Lru/okei/timetable/SettingsRows$Value;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 233
    iget-object v0, p0, Lru/okei/timetable/SettingsRows$5;->val$minus:Lru/okei/timetable/SettingsRows$Action;

    invoke-interface {v0}, Lru/okei/timetable/SettingsRows$Action;->run()V

    .line 234
    iget-object v0, p0, Lru/okei/timetable/SettingsRows$5;->val$valueView:Landroid/widget/TextView;

    iget-object v1, p0, Lru/okei/timetable/SettingsRows$5;->val$value:Lru/okei/timetable/SettingsRows$Value;

    invoke-interface {v1}, Lru/okei/timetable/SettingsRows$Value;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lru/okei/timetable/SettingsRows$5;->val$valueView:Landroid/widget/TextView;

    invoke-static {v0}, Lru/okei/timetable/ui/Motion;->flash(Landroid/view/View;)V

    .line 236
    iget-object v0, p0, Lru/okei/timetable/SettingsRows$5;->val$valueView:Landroid/widget/TextView;

    iget-object v1, p0, Lru/okei/timetable/SettingsRows$5;->val$value:Lru/okei/timetable/SettingsRows$Value;

    invoke-interface {v1}, Lru/okei/timetable/SettingsRows$Value;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lru/okei/timetable/SettingsRows$5;->this$0:Lru/okei/timetable/SettingsRows;

    invoke-static {v0}, Lru/okei/timetable/SettingsRows;->-$$Nest$fgethook(Lru/okei/timetable/SettingsRows;)Lru/okei/timetable/SettingsRows$Hook;

    move-result-object v0

    invoke-interface {v0}, Lru/okei/timetable/SettingsRows$Hook;->changed()V

    return-void
.end method
