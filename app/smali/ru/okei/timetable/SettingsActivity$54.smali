.class Lru/okei/timetable/SettingsActivity$54;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsActivity;->addSection(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SettingsActivity;

.field final synthetic val$body:Landroid/widget/LinearLayout;

.field final synthetic val$chevron:Landroid/widget/TextView;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1167
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$54;->this$0:Lru/okei/timetable/SettingsActivity;

    iput-object p2, p0, Lru/okei/timetable/SettingsActivity$54;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lru/okei/timetable/SettingsActivity$54;->val$chevron:Landroid/widget/TextView;

    iput-object p4, p0, Lru/okei/timetable/SettingsActivity$54;->val$body:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1170
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$54;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {p1}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fgetopenSections(Lru/okei/timetable/SettingsActivity;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$54;->val$title:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 1172
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$54;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v0}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fgetopenSections(Lru/okei/timetable/SettingsActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$54;->val$title:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1174
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$54;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v0}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fgetopenSections(Lru/okei/timetable/SettingsActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$54;->val$title:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1176
    :goto_0
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$54;->val$chevron:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const-string v1, "\u25be"

    goto :goto_1

    :cond_1
    const-string v1, "\u25b8"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$54;->val$chevron:Landroid/widget/TextView;

    invoke-static {v0}, Lru/okei/timetable/ui/Motion;->flash(Landroid/view/View;)V

    .line 1178
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$54;->val$body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$54;->this$0:Lru/okei/timetable/SettingsActivity;

    const-wide/16 v2, 0x28

    .line 1179
    invoke-static {v1, v2, v3}, Lru/okei/timetable/ui/Motion;->delay(Landroid/content/Context;J)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$54;->this$0:Lru/okei/timetable/SettingsActivity;

    const-wide/16 v3, 0xc8

    .line 1180
    invoke-static {v1, v3, v4}, Lru/okei/timetable/ui/Motion;->duration(Landroid/content/Context;J)J

    move-result-wide v3

    long-to-int v1, v3

    .line 1178
    invoke-static {v0, p1, v2, v1}, Lru/okei/timetable/ui/Accordion;->toggle(Landroid/widget/LinearLayout;ZII)V

    return-void
.end method
