.class Lru/okei/timetable/SiteChangesSync$1;
.super Ljava/lang/Object;
.source "SiteChangesSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SiteChangesSync;->forceAsync(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lru/okei/timetable/SiteChangesSync$1;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 46
    iget-object v0, p0, Lru/okei/timetable/SiteChangesSync$1;->val$app:Landroid/content/Context;

    invoke-static {v0}, Lru/okei/timetable/SiteChangesSync;->sync(Landroid/content/Context;)I

    return-void
.end method
