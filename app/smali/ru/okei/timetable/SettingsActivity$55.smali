.class Lru/okei/timetable/SettingsActivity$55;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsActivity;->showChangesDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SettingsActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$index:I

.field final synthetic val$weekStart:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;ILandroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1254
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$55;->this$0:Lru/okei/timetable/SettingsActivity;

    iput-object p2, p0, Lru/okei/timetable/SettingsActivity$55;->val$weekStart:Ljava/lang/String;

    iput p3, p0, Lru/okei/timetable/SettingsActivity$55;->val$index:I

    iput-object p4, p0, Lru/okei/timetable/SettingsActivity$55;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1257
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$55;->this$0:Lru/okei/timetable/SettingsActivity;

    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$55;->val$weekStart:Ljava/lang/String;

    iget v1, p0, Lru/okei/timetable/SettingsActivity$55;->val$index:I

    invoke-static {p1, v0, v1}, Lru/okei/timetable/SettingsActivity;->-$$Nest$mremoveChange(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;I)V

    .line 1258
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$55;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
