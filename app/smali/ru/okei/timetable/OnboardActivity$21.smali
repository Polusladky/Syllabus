.class Lru/okei/timetable/OnboardActivity$21;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/OnboardActivity;->pageThanks(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/OnboardActivity;


# direct methods
.method constructor <init>(Lru/okei/timetable/OnboardActivity;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$21;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 888
    :try_start_0
    iget-object p1, p0, Lru/okei/timetable/OnboardActivity$21;->this$0:Lru/okei/timetable/OnboardActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://github.com/Polusladky/Tabel"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lru/okei/timetable/OnboardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "OnboardActivity"

    .line 890
    invoke-static {v0, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
