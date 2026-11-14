.class public Lru/okei/timetable/alarm/AlarmOverlayView;
.super Landroid/widget/FrameLayout;
.source "AlarmOverlayView.java"

# interfaces
.implements Lru/okei/timetable/alarm/AlarmAudio$Ui;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/alarm/AlarmOverlayView$Callback;
    }
.end annotation


# static fields
.field private static final RU:Ljava/util/Locale;


# instance fields
.field private actions:Landroid/view/View;

.field private at:J

.field private callback:Lru/okei/timetable/alarm/AlarmOverlayView$Callback;

.field private code:I

.field private day:Ljava/lang/String;

.field private dial:Lru/okei/timetable/ui/TimerBarsView;

.field private dismiss:Lru/okei/timetable/ui/SlideActionView;

.field private face:Landroid/graphics/Typeface;

.field private field:Lru/okei/timetable/SparkOverlayView;

.field private infoSet:Z

.field private label:Landroid/widget/TextView;

.field private labelText:Ljava/lang/String;

.field private lesson:Ljava/lang/String;

.field private final main:Landroid/os/Handler;

.field private preMode:Z

.field private repeat:Z

.field private ringing:Z

.field private snooze:Lru/okei/timetable/ui/SlideActionView;

.field private final tick:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetat(Lru/okei/timetable/alarm/AlarmOverlayView;)J
    .locals 2

    iget-wide v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->at:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcallback(Lru/okei/timetable/alarm/AlarmOverlayView;)Lru/okei/timetable/alarm/AlarmOverlayView$Callback;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->callback:Lru/okei/timetable/alarm/AlarmOverlayView$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdial(Lru/okei/timetable/alarm/AlarmOverlayView;)Lru/okei/timetable/ui/TimerBarsView;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->dial:Lru/okei/timetable/ui/TimerBarsView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetface(Lru/okei/timetable/alarm/AlarmOverlayView;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->face:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmain(Lru/okei/timetable/alarm/AlarmOverlayView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreMode(Lru/okei/timetable/alarm/AlarmOverlayView;)Z
    .locals 0

    iget-boolean p0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->preMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandoff(Lru/okei/timetable/alarm/AlarmOverlayView;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->handoff()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minfoLine(Lru/okei/timetable/alarm/AlarmOverlayView;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->infoLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monDismissSwiped(Lru/okei/timetable/alarm/AlarmOverlayView;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->onDismissSwiped()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSnoozeSwiped(Lru/okei/timetable/alarm/AlarmOverlayView;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->onSnoozeSwiped()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smmmss(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lru/okei/timetable/alarm/AlarmOverlayView;->mmss(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ru"

    const-string v2, "RU"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lru/okei/timetable/alarm/AlarmOverlayView;->RU:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->main:Landroid/os/Handler;

    .line 37
    new-instance p1, Lru/okei/timetable/alarm/AlarmOverlayView$1;

    invoke-direct {p1, p0}, Lru/okei/timetable/alarm/AlarmOverlayView$1;-><init>(Lru/okei/timetable/alarm/AlarmOverlayView;)V

    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->tick:Ljava/lang/Runnable;

    .line 76
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->main:Landroid/os/Handler;

    .line 37
    new-instance p1, Lru/okei/timetable/alarm/AlarmOverlayView$1;

    invoke-direct {p1, p0}, Lru/okei/timetable/alarm/AlarmOverlayView$1;-><init>(Lru/okei/timetable/alarm/AlarmOverlayView;)V

    iput-object p1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->tick:Ljava/lang/Runnable;

    .line 81
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->init()V

    return-void
.end method

.method private applySliderMode()V
    .locals 2

    .line 202
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->snooze:Lru/okei/timetable/ui/SlideActionView;

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-boolean v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->repeat:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    .line 207
    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/SlideActionView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->actions:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 209
    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 212
    :cond_1
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->viewsCenterDismiss()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 214
    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/SlideActionView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->actions:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 216
    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handoff()V
    .locals 2

    .line 175
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->preMode:Z

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->ringing:Z

    .line 178
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->showRing()V

    return-void
.end method

.method private infoLine()Ljava/lang/String;
    .locals 4

    .line 283
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 284
    iget-wide v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->at:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x7

    .line 286
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "\u0412\u0421"

    goto :goto_0

    :pswitch_0
    const-string v1, "\u0421\u0411"

    goto :goto_0

    :pswitch_1
    const-string v1, "\u041f\u0422"

    goto :goto_0

    :pswitch_2
    const-string v1, "\u0427\u0422"

    goto :goto_0

    :pswitch_3
    const-string v1, "\u0421\u0420"

    goto :goto_0

    :pswitch_4
    const-string v1, "\u0412\u0422"

    goto :goto_0

    :pswitch_5
    const-string v1, "\u041f\u041d"

    :goto_0
    const/4 v2, 0x2

    .line 296
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    const-string v2, "\u0414\u0415\u041a"

    goto :goto_1

    :pswitch_6
    const-string v2, "\u041d\u041e\u042f"

    goto :goto_1

    :pswitch_7
    const-string v2, "\u041e\u041a\u0422"

    goto :goto_1

    :pswitch_8
    const-string v2, "\u0421\u0415\u041d"

    goto :goto_1

    :pswitch_9
    const-string v2, "\u0410\u0412\u0413"

    goto :goto_1

    :pswitch_a
    const-string v2, "\u0418\u042e\u041b"

    goto :goto_1

    :pswitch_b
    const-string v2, "\u0418\u042e\u041d"

    goto :goto_1

    :pswitch_c
    const-string v2, "\u041c\u0410\u0419"

    goto :goto_1

    :pswitch_d
    const-string v2, "\u0410\u041f\u0420"

    goto :goto_1

    :pswitch_e
    const-string v2, "\u041c\u0410\u0420"

    goto :goto_1

    :pswitch_f
    const-string v2, "\u0424\u0415\u0412"

    goto :goto_1

    :pswitch_10
    const-string v2, "\u042f\u041d\u0412"

    :goto_1
    const/4 v3, 0x5

    .line 310
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private init()V
    .locals 20

    move-object/from16 v1, p0

    .line 85
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040006

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f030004

    .line 86
    invoke-virtual {v1, v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->label:Landroid/widget/TextView;

    const v0, 0x7f030001

    .line 87
    invoke-virtual {v1, v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->actions:Landroid/view/View;

    const v0, 0x7f030003

    .line 88
    invoke-virtual {v1, v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/okei/timetable/ui/SlideActionView;

    iput-object v0, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->dismiss:Lru/okei/timetable/ui/SlideActionView;

    const v0, 0x7f030005

    .line 89
    invoke-virtual {v1, v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/okei/timetable/ui/SlideActionView;

    iput-object v0, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->snooze:Lru/okei/timetable/ui/SlideActionView;

    const v0, 0x7f030036

    .line 90
    invoke-virtual {v1, v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/okei/timetable/ui/TimerBarsView;

    iput-object v0, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->dial:Lru/okei/timetable/ui/TimerBarsView;

    const v0, 0x7f03000d

    .line 91
    invoke-virtual {v1, v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/okei/timetable/SparkOverlayView;

    iput-object v0, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->field:Lru/okei/timetable/SparkOverlayView;

    .line 93
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "fonts/Tiny5-Regular.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->face:Landroid/graphics/Typeface;

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    .line 96
    :try_start_0
    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    const-string v2, "\'wght\' 700"

    .line 97
    invoke-virtual {v0, v2}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->face:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "AlarmOverlayView"

    .line 99
    invoke-static {v2, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    :cond_0
    :goto_0
    iget-object v0, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->label:Landroid/widget/TextView;

    iget-object v2, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->face:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    iget-object v0, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->label:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->dial:Lru/okei/timetable/ui/TimerBarsView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lru/okei/timetable/ui/TimerBarsView;->setInk(I)V

    .line 105
    iget-object v0, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->dial:Lru/okei/timetable/ui/TimerBarsView;

    iget-object v3, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->face:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v2, v3}, Lru/okei/timetable/ui/TimerBarsView;->configure(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 107
    iget-object v4, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->dismiss:Lru/okei/timetable/ui/SlideActionView;

    const-string v5, "\u0412\u042b\u041a\u041b\u042e\u0427\u0418\u0422\u042c"

    const-string v6, ""

    const/4 v7, 0x0

    iget-object v8, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->face:Landroid/graphics/Typeface;

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-direct {v1, v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->sp(F)F

    move-result v9

    const/4 v10, 0x1

    new-instance v11, Lru/okei/timetable/alarm/AlarmOverlayView$2;

    invoke-direct {v11, v1}, Lru/okei/timetable/alarm/AlarmOverlayView$2;-><init>(Lru/okei/timetable/alarm/AlarmOverlayView;)V

    invoke-virtual/range {v4 .. v11}, Lru/okei/timetable/ui/SlideActionView;->setup(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Typeface;FZLru/okei/timetable/ui/SlideActionView$Listener;)V

    .line 114
    iget-object v12, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->snooze:Lru/okei/timetable/ui/SlideActionView;

    const-string v13, "\u041e\u0422\u041b\u041e\u0416\u0418\u0422\u042c"

    const-string v14, "z z z"

    const/4 v15, 0x1

    iget-object v2, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->face:Landroid/graphics/Typeface;

    invoke-direct {v1, v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->sp(F)F

    move-result v17

    const/16 v18, 0x0

    new-instance v0, Lru/okei/timetable/alarm/AlarmOverlayView$3;

    invoke-direct {v0, v1}, Lru/okei/timetable/alarm/AlarmOverlayView$3;-><init>(Lru/okei/timetable/alarm/AlarmOverlayView;)V

    move-object/from16 v16, v2

    move-object/from16 v19, v0

    invoke-virtual/range {v12 .. v19}, Lru/okei/timetable/ui/SlideActionView;->setup(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Typeface;FZLru/okei/timetable/ui/SlideActionView$Listener;)V

    .line 121
    iget-object v0, v1, Lru/okei/timetable/alarm/AlarmOverlayView;->actions:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/alarm/AlarmAudio;->setUi(Lru/okei/timetable/alarm/AlarmAudio$Ui;)V

    return-void
.end method

.method private static mmss(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x0

    .line 314
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    const-wide/16 v0, 0x3c

    .line 315
    div-long v2, p0, v0

    .line 316
    rem-long/2addr p0, v0

    .line 317
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%02d:%02d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onDismissSwiped()V
    .locals 5

    .line 232
    invoke-virtual {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->day:Ljava/lang/String;

    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->lesson:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lru/okei/timetable/alarm/AlarmScheduler;->cancelGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I

    .line 233
    invoke-virtual {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmScheduler;->clearAudioLead(Landroid/content/Context;)V

    .line 234
    invoke-virtual {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudio;->stop(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->shutDown(Z)V

    return-void
.end method

.method private onSnoozeSwiped()V
    .locals 4

    .line 239
    invoke-virtual {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->day:Ljava/lang/String;

    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->lesson:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lru/okei/timetable/alarm/AlarmScheduler;->snooze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    invoke-virtual {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lru/okei/timetable/alarm/AlarmAudio;->snooze(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 241
    invoke-direct {p0, v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->shutDown(Z)V

    return-void
.end method

.method private showCountdown()V
    .locals 7

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->preMode:Z

    .line 158
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->label:Landroid/widget/TextView;

    const-string v2, "\u0414\u041e \u0411\u0423\u0414\u0418\u041b\u042c\u041d\u0418\u041a\u0410"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->actions:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->applySliderMode()V

    .line 161
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->dial:Lru/okei/timetable/ui/TimerBarsView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1, v2}, Lru/okei/timetable/ui/TimerBarsView;->setRhythm(Z)V

    .line 163
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->dial:Lru/okei/timetable/ui/TimerBarsView;

    iget-wide v3, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->at:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Lru/okei/timetable/alarm/AlarmOverlayView;->mmss(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->infoLine()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->face:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3, v4, v5}, Lru/okei/timetable/ui/TimerBarsView;->configure(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 164
    iput-boolean v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->infoSet:Z

    .line 166
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->field:Lru/okei/timetable/SparkOverlayView;

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0, v2}, Lru/okei/timetable/SparkOverlayView;->setActive(Z)V

    .line 169
    :cond_1
    iget-wide v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->at:J

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmScheduler;->format(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0414\u041e \u0411\u0423\u0414\u0418\u041b\u042c\u041d\u0418\u041a\u0410 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->tick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showRing()V
    .locals 9

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->preMode:Z

    const/4 v1, 0x1

    .line 183
    iput-boolean v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->ringing:Z

    .line 184
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->label:Landroid/widget/TextView;

    iget-object v3, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->labelText:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    iget-object v3, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->labelText:Ljava/lang/String;

    sget-object v4, Lru/okei/timetable/alarm/AlarmOverlayView;->RU:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "\u0411\u0423\u0414\u0418\u041b\u042c\u041d\u0418\u041a"

    .line 184
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v2, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->dial:Lru/okei/timetable/ui/TimerBarsView;

    if-eqz v2, :cond_3

    .line 187
    iget-boolean v3, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->infoSet:Z

    if-nez v3, :cond_2

    .line 188
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->infoLine()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->face:Landroid/graphics/Typeface;

    const-string v5, ""

    invoke-virtual {v2, v5, v3, v4}, Lru/okei/timetable/ui/TimerBarsView;->configure(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 189
    iput-boolean v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->infoSet:Z

    .line 191
    :cond_2
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->dial:Lru/okei/timetable/ui/TimerBarsView;

    iget-wide v2, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->at:J

    invoke-static {v2, v3}, Lru/okei/timetable/alarm/AlarmScheduler;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/okei/timetable/ui/TimerBarsView;->morphTo(Ljava/lang/String;)V

    .line 193
    :cond_3
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->applySliderMode()V

    .line 194
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->actions:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 195
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->actions:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->actions:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 197
    iget-wide v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->at:J

    invoke-static {v0, v1}, Lru/okei/timetable/alarm/AlarmScheduler;->format(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0411\u0423\u0414\u0418\u041b\u042c\u041d\u0418\u041a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/okei/timetable/alarm/AlarmOverlayView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->code:I

    iget-wide v3, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->at:J

    iget-object v5, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->day:Ljava/lang/String;

    iget-object v6, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->lesson:Ljava/lang/String;

    iget-object v7, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->labelText:Ljava/lang/String;

    iget-boolean v8, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->repeat:Z

    invoke-static/range {v1 .. v8}, Lru/okei/timetable/alarm/AlarmAudio;->ring(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private shutDown(Z)V
    .locals 4

    .line 245
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->ringing:Z

    .line 247
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->dial:Lru/okei/timetable/ui/TimerBarsView;

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v1}, Lru/okei/timetable/ui/TimerBarsView;->powerDown()V

    .line 250
    :cond_0
    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->field:Lru/okei/timetable/SparkOverlayView;

    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {v1, v0}, Lru/okei/timetable/SparkOverlayView;->setActive(Z)V

    .line 253
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->actions:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 256
    :cond_2
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->main:Landroid/os/Handler;

    new-instance v1, Lru/okei/timetable/alarm/AlarmOverlayView$4;

    invoke-direct {v1, p0, p1}, Lru/okei/timetable/alarm/AlarmOverlayView$4;-><init>(Lru/okei/timetable/alarm/AlarmOverlayView;Z)V

    const-wide/16 v2, 0x1a4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sp(F)F
    .locals 2

    .line 322
    invoke-virtual {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    .line 321
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private viewsCenterDismiss()V
    .locals 2

    .line 224
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->dismiss:Lru/okei/timetable/ui/SlideActionView;

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-virtual {v0}, Lru/okei/timetable/ui/SlideActionView;->reset()V

    .line 228
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->dismiss:Lru/okei/timetable/ui/SlideActionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/SlideActionView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Intent;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "code"

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "at"

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 136
    iget v4, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->code:I

    if-ne v0, v4, :cond_1

    iget-wide v4, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->at:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 137
    :cond_1
    iput-boolean v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->infoSet:Z

    .line 139
    :cond_2
    iput v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->code:I

    .line 140
    iput-wide v2, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->at:J

    const-string v0, "day"

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->day:Ljava/lang/String;

    const-string v0, "lesson"

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->lesson:Ljava/lang/String;

    const-string v0, "label"

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->labelText:Ljava/lang/String;

    const-string v0, "snooze"

    .line 144
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->repeat:Z

    const-string v0, "pre"

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->ringing:Z

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    .line 148
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->showCountdown()V

    goto :goto_0

    .line 149
    :cond_4
    iget-boolean p1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->preMode:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->ringing:Z

    if-nez p1, :cond_5

    .line 150
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->handoff()V

    goto :goto_0

    .line 152
    :cond_5
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->showRing()V

    :goto_0
    return-void
.end method

.method public onBeat(F)V
    .locals 2

    .line 339
    iget-boolean v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->ringing:Z

    if-nez v0, :cond_0

    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->dial:Lru/okei/timetable/ui/TimerBarsView;

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {v0, p1}, Lru/okei/timetable/ui/TimerBarsView;->beat(F)V

    .line 344
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->dial:Lru/okei/timetable/ui/TimerBarsView;

    invoke-virtual {v0, p1}, Lru/okei/timetable/ui/TimerBarsView;->flash(F)V

    .line 346
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->dismiss:Lru/okei/timetable/ui/SlideActionView;

    if-eqz v0, :cond_2

    .line 347
    invoke-virtual {v0, p1}, Lru/okei/timetable/ui/SlideActionView;->beat(F)V

    .line 349
    :cond_2
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->snooze:Lru/okei/timetable/ui/SlideActionView;

    if-eqz v0, :cond_3

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v1, v1, p1

    .line 350
    invoke-virtual {v0, v1}, Lru/okei/timetable/ui/SlideActionView;->beat(F)V

    .line 352
    :cond_3
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->field:Lru/okei/timetable/SparkOverlayView;

    if-eqz v0, :cond_4

    .line 353
    invoke-virtual {v0, p1}, Lru/okei/timetable/SparkOverlayView;->beat(F)V

    :cond_4
    return-void
.end method

.method public onRhythm(Z)V
    .locals 4

    .line 359
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->dial:Lru/okei/timetable/ui/TimerBarsView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 360
    iget-boolean v3, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->ringing:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lru/okei/timetable/ui/TimerBarsView;->setRhythm(Z)V

    .line 362
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->field:Lru/okei/timetable/SparkOverlayView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 363
    iget-boolean p1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->ringing:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lru/okei/timetable/SparkOverlayView;->setActive(Z)V

    :cond_3
    return-void
.end method

.method public onSpectrum([F)V
    .locals 2

    .line 329
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->dial:Lru/okei/timetable/ui/TimerBarsView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->ringing:Z

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {v0, p1}, Lru/okei/timetable/ui/TimerBarsView;->setBands([F)V

    .line 332
    :cond_0
    iget-object p1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->dismiss:Lru/okei/timetable/ui/SlideActionView;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->ringing:Z

    if-eqz v0, :cond_1

    const v0, 0x3eb33333    # 0.35f

    .line 333
    invoke-virtual {p1, v0}, Lru/okei/timetable/ui/SlideActionView;->glow(F)V

    :cond_1
    return-void
.end method

.method public onState(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 369
    iget-boolean p1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->ringing:Z

    if-nez p1, :cond_0

    .line 370
    invoke-direct {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->handoff()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 277
    invoke-virtual {p0}, Lru/okei/timetable/alarm/AlarmOverlayView;->silence()V

    .line 278
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->main:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 279
    invoke-static {v1}, Lru/okei/timetable/alarm/AlarmAudio;->setUi(Lru/okei/timetable/alarm/AlarmAudio$Ui;)V

    return-void
.end method

.method public silence()V
    .locals 2

    .line 272
    iget-object v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->ringing:Z

    return-void
.end method

.method public start(Landroid/content/Intent;Lru/okei/timetable/alarm/AlarmOverlayView$Callback;)V
    .locals 0

    .line 126
    iput-object p2, p0, Lru/okei/timetable/alarm/AlarmOverlayView;->callback:Lru/okei/timetable/alarm/AlarmOverlayView$Callback;

    .line 127
    invoke-virtual {p0, p1}, Lru/okei/timetable/alarm/AlarmOverlayView;->apply(Landroid/content/Intent;)V

    return-void
.end method
