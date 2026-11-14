.class Lru/okei/timetable/MainActivity$27;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity;->updateRowsVisibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/MainActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lru/okei/timetable/MainActivity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1234
    iput-object p1, p0, Lru/okei/timetable/MainActivity$27;->this$0:Lru/okei/timetable/MainActivity;

    iput-object p2, p0, Lru/okei/timetable/MainActivity$27;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1237
    iget-object v0, p0, Lru/okei/timetable/MainActivity$27;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1238
    iget-object v0, p0, Lru/okei/timetable/MainActivity$27;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
