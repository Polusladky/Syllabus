.class Lru/okei/timetable/SettingsActivity$50;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/SettingsActivity;->confirmReset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/SettingsActivity;


# direct methods
.method constructor <init>(Lru/okei/timetable/SettingsActivity;)V
    .locals 0

    .line 968
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity$50;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 971
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity$50;->this$0:Lru/okei/timetable/SettingsActivity;

    invoke-static {p1}, Lru/okei/timetable/SettingsActivity;->-$$Nest$mresetEverything(Lru/okei/timetable/SettingsActivity;)V

    return-void
.end method
