.class final Lru/okei/timetable/OnboardActivity$ScrambleWatcher;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/OnboardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrambleWatcher"
.end annotation


# instance fields
.field private guard:Z

.field final synthetic this$0:Lru/okei/timetable/OnboardActivity;


# direct methods
.method static bridge synthetic -$$Nest$fputguard(Lru/okei/timetable/OnboardActivity$ScrambleWatcher;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;->guard:Z

    return-void
.end method

.method private constructor <init>(Lru/okei/timetable/OnboardActivity;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lru/okei/timetable/OnboardActivity;Lru/okei/timetable/OnboardActivity$ScrambleWatcher-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;-><init>(Lru/okei/timetable/OnboardActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 643
    iget-boolean v0, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;->guard:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 647
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetexampleView(Lru/okei/timetable/OnboardActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v0}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetexampleView(Lru/okei/timetable/OnboardActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    .line 650
    iput-boolean v0, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;->guard:Z

    const/4 v0, 0x0

    .line 651
    filled-new-array {v0}, [I

    move-result-object v0

    .line 652
    iget-object v1, p0, Lru/okei/timetable/OnboardActivity$ScrambleWatcher;->this$0:Lru/okei/timetable/OnboardActivity;

    invoke-static {v1}, Lru/okei/timetable/OnboardActivity;->-$$Nest$fgetmain(Lru/okei/timetable/OnboardActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;

    invoke-direct {v2, p0, v0, p1}, Lru/okei/timetable/OnboardActivity$ScrambleWatcher$1;-><init>(Lru/okei/timetable/OnboardActivity$ScrambleWatcher;[ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
