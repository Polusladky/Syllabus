.class Lru/okei/timetable/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/MainActivity;->createScreen(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/MainActivity;


# direct methods
.method constructor <init>(Lru/okei/timetable/MainActivity;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lru/okei/timetable/MainActivity$7;->this$0:Lru/okei/timetable/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 236
    iget-object p1, p0, Lru/okei/timetable/MainActivity$7;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {p1}, Lru/okei/timetable/MainActivity;->-$$Nest$fgeticonShare(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/ui/ShareIconView;

    move-result-object p1

    invoke-virtual {p1}, Lru/okei/timetable/ui/ShareIconView;->playPress()V

    .line 237
    iget-object p1, p0, Lru/okei/timetable/MainActivity$7;->this$0:Lru/okei/timetable/MainActivity;

    invoke-static {p1}, Lru/okei/timetable/MainActivity;->-$$Nest$fgeticonShare(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/ui/ShareIconView;

    move-result-object p1

    new-instance v0, Lru/okei/timetable/MainActivity$7$1;

    invoke-direct {v0, p0}, Lru/okei/timetable/MainActivity$7$1;-><init>(Lru/okei/timetable/MainActivity$7;)V

    const-wide/16 v1, 0xbe

    invoke-virtual {p1, v0, v1, v2}, Lru/okei/timetable/ui/ShareIconView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
