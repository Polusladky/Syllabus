.class Lru/okei/timetable/ui/PixelDialog$2;
.super Ljava/lang/Object;
.source "PixelDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ui/PixelDialog;->show(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$index:I

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lru/okei/timetable/ui/PixelDialog$2;->val$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lru/okei/timetable/ui/PixelDialog$2;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iput p3, p0, Lru/okei/timetable/ui/PixelDialog$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lru/okei/timetable/ui/PixelDialog$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 174
    iget-object p1, p0, Lru/okei/timetable/ui/PixelDialog$2;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lru/okei/timetable/ui/PixelDialog$2;->val$dialog:Landroid/app/Dialog;

    iget v1, p0, Lru/okei/timetable/ui/PixelDialog$2;->val$index:I

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
