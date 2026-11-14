.class Lru/okei/timetable/SetupActivity$6;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SetupActivity;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SetupActivity;


# direct methods
.method constructor <init>(Lru/okei/timetable/SetupActivity;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lru/okei/timetable/SetupActivity$6;->this$0:Lru/okei/timetable/SetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 138
    iget-object v0, p0, Lru/okei/timetable/SetupActivity$6;->this$0:Lru/okei/timetable/SetupActivity;

    invoke-static {v0}, Lru/okei/timetable/Admin;->request(Landroid/app/Activity;)V

    return-void
.end method
