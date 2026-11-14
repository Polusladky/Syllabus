.class Lru/okei/timetable/DiagnosticsActivity$10;
.super Ljava/lang/Object;
.source "DiagnosticsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/DiagnosticsActivity;->addSection(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/DiagnosticsActivity;

.field final synthetic val$body:Landroid/widget/LinearLayout;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/okei/timetable/DiagnosticsActivity;Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lru/okei/timetable/DiagnosticsActivity$10;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    iput-object p2, p0, Lru/okei/timetable/DiagnosticsActivity$10;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lru/okei/timetable/DiagnosticsActivity$10;->val$body:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 297
    iget-object p1, p0, Lru/okei/timetable/DiagnosticsActivity$10;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    invoke-static {p1}, Lru/okei/timetable/DiagnosticsActivity;->-$$Nest$fgetopenSections(Lru/okei/timetable/DiagnosticsActivity;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity$10;->val$title:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity$10;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    invoke-static {v0}, Lru/okei/timetable/DiagnosticsActivity;->-$$Nest$fgetopenSections(Lru/okei/timetable/DiagnosticsActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/DiagnosticsActivity$10;->val$title:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity$10;->this$0:Lru/okei/timetable/DiagnosticsActivity;

    invoke-static {v0}, Lru/okei/timetable/DiagnosticsActivity;->-$$Nest$fgetopenSections(Lru/okei/timetable/DiagnosticsActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/DiagnosticsActivity$10;->val$title:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 303
    :goto_0
    iget-object v0, p0, Lru/okei/timetable/DiagnosticsActivity$10;->val$body:Landroid/widget/LinearLayout;

    const/16 v1, 0x1a

    const/16 v2, 0xb4

    invoke-static {v0, p1, v1, v2}, Lru/okei/timetable/ui/Accordion;->toggle(Landroid/widget/LinearLayout;ZII)V

    return-void
.end method
