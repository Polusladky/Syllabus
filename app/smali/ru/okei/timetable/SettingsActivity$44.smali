.class Lru/okei/timetable/SettingsActivity$44;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsActivity;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SettingsActivity;

.field final synthetic val$target:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 795
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$44;->this$0:Lru/okei/timetable/SettingsActivity;

    iput-object p2, p0, Lru/okei/timetable/SettingsActivity$44;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lru/okei/timetable/SettingsActivity$44;->val$target:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 798
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity$44;->this$0:Lru/okei/timetable/SettingsActivity;

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity$44;->val$view:Landroid/widget/TextView;

    iget-object v2, p0, Lru/okei/timetable/SettingsActivity$44;->val$target:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lru/okei/timetable/SettingsActivity;->-$$Nest$mscramble(Lru/okei/timetable/SettingsActivity;Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
