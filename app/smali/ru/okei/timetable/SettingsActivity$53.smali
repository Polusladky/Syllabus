.class Lru/okei/timetable/SettingsActivity$53;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsActivity;->showPermissionDialog(Lru/okei/timetable/Permissions$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SettingsActivity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1080
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$53;->this$0:Lru/okei/timetable/SettingsActivity;

    iput-object p2, p0, Lru/okei/timetable/SettingsActivity$53;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1083
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$53;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1084
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$53;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$53;->this$0:Lru/okei/timetable/SettingsActivity;

    .line 1085
    invoke-static {v1}, Lru/okei/timetable/ui/Theme;->bg(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1084
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1087
    :cond_0
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$53;->val$dialog:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1088
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$53;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$53;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v1}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fgetFG(Lru/okei/timetable/SettingsActivity;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1089
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$53;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$53;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v0}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fgetpixelBold(Lru/okei/timetable/SettingsActivity;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1090
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1092
    :cond_1
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$53;->val$dialog:Landroid/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1093
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$53;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$53;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v1}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fgetMUTED(Lru/okei/timetable/SettingsActivity;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1094
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$53;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$53;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {v0}, Lru/okei/timetable/SettingsActivity;->-$$Nest$fgetpixel(Lru/okei/timetable/SettingsActivity;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1095
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    return-void
.end method
