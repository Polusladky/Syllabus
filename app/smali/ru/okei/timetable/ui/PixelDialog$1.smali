.class Lru/okei/timetable/ui/PixelDialog$1;
.super Ljava/lang/Object;
.source "PixelDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ui/PixelDialog;->prompt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/okei/timetable/ui/PixelDialog$TextListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$listener:Lru/okei/timetable/ui/PixelDialog$TextListener;

.field final synthetic val$ok:Z


# direct methods
.method constructor <init>(ZLru/okei/timetable/ui/PixelDialog$TextListener;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    iput-boolean p1, p0, Lru/okei/timetable/ui/PixelDialog$1;->val$ok:Z

    iput-object p2, p0, Lru/okei/timetable/ui/PixelDialog$1;->val$listener:Lru/okei/timetable/ui/PixelDialog$TextListener;

    iput-object p3, p0, Lru/okei/timetable/ui/PixelDialog$1;->val$input:Landroid/widget/EditText;

    iput-object p4, p0, Lru/okei/timetable/ui/PixelDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 101
    iget-boolean p1, p0, Lru/okei/timetable/ui/PixelDialog$1;->val$ok:Z

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lru/okei/timetable/ui/PixelDialog$1;->val$listener:Lru/okei/timetable/ui/PixelDialog$TextListener;

    iget-object v0, p0, Lru/okei/timetable/ui/PixelDialog$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lru/okei/timetable/ui/PixelDialog$TextListener;->onText(Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-object p1, p0, Lru/okei/timetable/ui/PixelDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
