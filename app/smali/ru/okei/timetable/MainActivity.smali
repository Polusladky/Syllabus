.class public Lru/okei/timetable/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/MainActivity$UntrustedScheduleException;,
        Lru/okei/timetable/MainActivity$EmptyScheduleException;,
        Lru/okei/timetable/MainActivity$BreakView;
    }
.end annotation


# static fields
.field private static final EASE:Landroid/animation/TimeInterpolator;

.field public static final EXTRA_FROM_ALARM:Ljava/lang/String; = "from_alarm"

.field private static final RU:Ljava/util/Locale;

.field private static final TIMEOUT_MS:I = 0x4e20

.field private static sharedWeek:Lru/okei/timetable/data/WeekSchedule;

.field private static sharedWeekAt:J


# instance fields
.field private DIM:I

.field private FG:I

.field private MUTED:I

.field private alarmAction:Landroid/widget/TextView;

.field private final alarmCloseReceiver:Landroid/content/BroadcastReceiver;

.field private alarmState:Landroid/widget/TextView;

.field private final alarmWorker:Ljava/util/concurrent/ExecutorService;

.field private final alarms:Lru/okei/timetable/alarm/AlarmHost;

.field private final breakViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/okei/timetable/MainActivity$BreakView;",
            ">;"
        }
    .end annotation
.end field

.field private busy:Z

.field private final clockTick:Ljava/lang/Runnable;

.field private closeReceiverRegistered:Z

.field private content:Landroid/widget/LinearLayout;

.field private final dayBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private emptyOnSite:Z

.field private fadeInPending:Z

.field private footer:Landroid/widget/TextView;

.field private footerMinute:J

.field private groupAtCreate:Ljava/lang/String;

.field private health:Lru/okei/timetable/data/ParserHealth$Report;

.field private final host:Lru/okei/timetable/ui/ScheduleViews$Host;

.field private iconSettings:Lru/okei/timetable/SettingsIconView;

.field private iconShare:Lru/okei/timetable/ui/ShareIconView;

.field private intro:Lru/okei/timetable/IntroView;

.field private final introHost:Lru/okei/timetable/IntroView$Host;

.field private introRevealRunning:Z

.field private loader:Lru/okei/timetable/ui/Loader;

.field private loading:Z

.field private final main:Landroid/os/Handler;

.field private offline:Z

.field private final pagerHost:Lru/okei/timetable/PagePager$Host;

.field private pages:Lru/okei/timetable/PagePager;

.field private pendingEnable:Z

.field private pendingHighlight:Ljava/lang/String;

.field private pendingShare:Ljava/lang/String;

.field private pixel:Landroid/graphics/Typeface;

.field private pixelBold:Landroid/graphics/Typeface;

.field private retry:Landroid/widget/TextView;

.field private final revealedRows:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final rowViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final schedule:Lru/okei/timetable/ui/ScheduleState;

.field private scroll:Landroid/widget/ScrollView;

.field private setupShown:Z

.field private state:Lru/okei/timetable/ui/StateBox;

.field private stateBox:Landroid/widget/LinearLayout;

.field private stateText:Landroid/widget/TextView;

.field private stateTitle:Landroid/widget/TextView;

.field private subtitle:Landroid/widget/TextView;

.field private syncedAt:J

.field private ticking:Z

.field private todayBlock:Landroid/view/View;

.field private todayScrollDone:Z

.field private views:Lru/okei/timetable/ui/ScheduleViews;

.field private final visibilityTick:Ljava/lang/Runnable;

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic -$$Nest$fgetalarmAction(Lru/okei/timetable/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/MainActivity;->alarmAction:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetalarmState(Lru/okei/timetable/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/MainActivity;->alarmState:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetalarms(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/alarm/AlarmHost;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/MainActivity;->alarms:Lru/okei/timetable/alarm/AlarmHost;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbreakViews(Lru/okei/timetable/MainActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/MainActivity;->breakViews:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethealth(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/data/ParserHealth$Report;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/MainActivity;->health:Lru/okei/timetable/data/ParserHealth$Report;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeticonSettings(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/SettingsIconView;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/MainActivity;->iconSettings:Lru/okei/timetable/SettingsIconView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeticonShare(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/ui/ShareIconView;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/MainActivity;->iconShare:Lru/okei/timetable/ui/ShareIconView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmain(Lru/okei/timetable/MainActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/MainActivity;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrowViews(Lru/okei/timetable/MainActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetschedule(Lru/okei/timetable/MainActivity;)Lru/okei/timetable/ui/ScheduleState;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscroll(Lru/okei/timetable/MainActivity;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/MainActivity;->scroll:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettodayBlock(Lru/okei/timetable/MainActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/MainActivity;->todayBlock:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbusy(Lru/okei/timetable/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/MainActivity;->busy:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputemptyOnSite(Lru/okei/timetable/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/MainActivity;->emptyOnSite:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhealth(Lru/okei/timetable/MainActivity;Lru/okei/timetable/data/ParserHealth$Report;)V
    .locals 0

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->health:Lru/okei/timetable/data/ParserHealth$Report;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputintroRevealRunning(Lru/okei/timetable/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/MainActivity;->introRevealRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputloading(Lru/okei/timetable/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/MainActivity;->loading:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoffline(Lru/okei/timetable/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/MainActivity;->offline:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsyncedAt(Lru/okei/timetable/MainActivity;J)V
    .locals 0

    iput-wide p1, p0, Lru/okei/timetable/MainActivity;->syncedAt:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtodayScrollDone(Lru/okei/timetable/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/MainActivity;->todayScrollDone:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$malarmActionText(Lru/okei/timetable/MainActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->alarmActionText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$malarmStateText(Lru/okei/timetable/MainActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->alarmStateText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$manimateScrollTo(Lru/okei/timetable/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/MainActivity;->animateScrollTo(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyCachedWeek(Lru/okei/timetable/MainActivity;Lru/okei/timetable/data/WeekSchedule;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lru/okei/timetable/MainActivity;->applyCachedWeek(Lru/okei/timetable/data/WeekSchedule;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbreakView(Lru/okei/timetable/MainActivity;IILjava/util/Calendar;ZI)Landroid/view/View;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lru/okei/timetable/MainActivity;->breakView(IILjava/util/Calendar;ZI)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdayView(Lru/okei/timetable/MainActivity;Lru/okei/timetable/data/DaySchedule;ZLjava/util/Calendar;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lru/okei/timetable/MainActivity;->dayView(Lru/okei/timetable/data/DaySchedule;ZLjava/util/Calendar;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdp(Lru/okei/timetable/MainActivity;F)I
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/MainActivity;->dp(F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhealthBanner(Lru/okei/timetable/MainActivity;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->healthBanner()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhighlightDay(Lru/okei/timetable/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/MainActivity;->highlightDay(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$miconRowsAppear(Lru/okei/timetable/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->iconRowsAppear()V

    return-void
.end method

.method static bridge synthetic -$$Nest$miconRowsHidden(Lru/okei/timetable/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->iconRowsHidden()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlabel(Lru/okei/timetable/MainActivity;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lru/okei/timetable/MainActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlessonView(Lru/okei/timetable/MainActivity;Lru/okei/timetable/data/Lesson;I)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/okei/timetable/MainActivity;->lessonView(Lru/okei/timetable/data/Lesson;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mload(Lru/okei/timetable/MainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/MainActivity;->load(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAlarmsEnabled(Lru/okei/timetable/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->onAlarmsEnabled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monFailure(Lru/okei/timetable/MainActivity;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/MainActivity;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monIntroFinished(Lru/okei/timetable/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->onIntroFinished()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshFooterAge(Lru/okei/timetable/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->refreshFooterAge()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrender(Lru/okei/timetable/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->render()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscrollToToday(Lru/okei/timetable/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->scrollToToday()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscrollToToday(Lru/okei/timetable/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/MainActivity;->scrollToToday(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mseparator(Lru/okei/timetable/MainActivity;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->separator()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetSubtitle(Lru/okei/timetable/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/MainActivity;->setSubtitle(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstaleBanner(Lru/okei/timetable/MainActivity;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->staleBanner()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msubtitleText(Lru/okei/timetable/MainActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->subtitleText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mtoggleAlarms(Lru/okei/timetable/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->toggleAlarms()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAlarmBar(Lru/okei/timetable/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->updateAlarmBar()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBreaks(Lru/okei/timetable/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->updateBreaks()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRowsVisibility(Lru/okei/timetable/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->updateRowsVisibility()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mweekIsStale(Lru/okei/timetable/MainActivity;)Z
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->weekIsStale()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetEASE()Landroid/animation/TimeInterpolator;
    .locals 1

    sget-object v0, Lru/okei/timetable/MainActivity;->EASE:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsharedWeek(Lru/okei/timetable/data/WeekSchedule;)V
    .locals 0

    sput-object p0, Lru/okei/timetable/MainActivity;->sharedWeek:Lru/okei/timetable/data/WeekSchedule;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsharedWeekAt(J)V
    .locals 0

    sput-wide p0, Lru/okei/timetable/MainActivity;->sharedWeekAt:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ru"

    const-string v2, "RU"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lru/okei/timetable/MainActivity;->RU:Ljava/util/Locale;

    .line 139
    invoke-static {}, Lru/okei/timetable/ui/Motion;->ease()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/MainActivity;->EASE:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lru/okei/timetable/MainActivity;->FG:I

    const v0, -0x5f5f60

    .line 56
    iput v0, p0, Lru/okei/timetable/MainActivity;->MUTED:I

    const v0, -0x919192

    .line 57
    iput v0, p0, Lru/okei/timetable/MainActivity;->DIM:I

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->worker:Ljava/util/concurrent/ExecutorService;

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->alarmWorker:Ljava/util/concurrent/ExecutorService;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->main:Landroid/os/Handler;

    .line 69
    new-instance v0, Lru/okei/timetable/ui/ScheduleState;

    invoke-direct {v0}, Lru/okei/timetable/ui/ScheduleState;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    .line 97
    new-instance v0, Lru/okei/timetable/MainActivity$1;

    invoke-direct {v0, p0}, Lru/okei/timetable/MainActivity$1;-><init>(Lru/okei/timetable/MainActivity;)V

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->visibilityTick:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 106
    iput-wide v0, p0, Lru/okei/timetable/MainActivity;->footerMinute:J

    .line 114
    new-instance v0, Lru/okei/timetable/alarm/AlarmHost;

    invoke-direct {v0, p0}, Lru/okei/timetable/alarm/AlarmHost;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->alarms:Lru/okei/timetable/alarm/AlarmHost;

    .line 123
    new-instance v0, Lru/okei/timetable/MainActivity$2;

    invoke-direct {v0, p0}, Lru/okei/timetable/MainActivity$2;-><init>(Lru/okei/timetable/MainActivity;)V

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->alarmCloseReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->dayBlocks:Ljava/util/List;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->revealedRows:Ljava/util/Set;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->breakViews:Ljava/util/List;

    .line 161
    new-instance v0, Lru/okei/timetable/MainActivity$3;

    invoke-direct {v0, p0}, Lru/okei/timetable/MainActivity$3;-><init>(Lru/okei/timetable/MainActivity;)V

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->clockTick:Ljava/lang/Runnable;

    .line 481
    new-instance v0, Lru/okei/timetable/MainActivity$16;

    invoke-direct {v0, p0}, Lru/okei/timetable/MainActivity$16;-><init>(Lru/okei/timetable/MainActivity;)V

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->introHost:Lru/okei/timetable/IntroView$Host;

    .line 1398
    new-instance v0, Lru/okei/timetable/MainActivity$31;

    invoke-direct {v0, p0}, Lru/okei/timetable/MainActivity$31;-><init>(Lru/okei/timetable/MainActivity;)V

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->host:Lru/okei/timetable/ui/ScheduleViews$Host;

    .line 1541
    new-instance v0, Lru/okei/timetable/MainActivity$32;

    invoke-direct {v0, p0}, Lru/okei/timetable/MainActivity$32;-><init>(Lru/okei/timetable/MainActivity;)V

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->pagerHost:Lru/okei/timetable/PagePager$Host;

    return-void
.end method

.method private alarmActionText()Ljava/lang/String;
    .locals 1

    .line 804
    invoke-static {p0}, Lru/okei/timetable/AlarmBar;->actionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private alarmStateText()Ljava/lang/String;
    .locals 1

    .line 800
    invoke-static {p0}, Lru/okei/timetable/AlarmBar;->stateText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private animateScrollTo(I)V
    .locals 3

    .line 1297
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->scroll:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    return-void

    .line 1300
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    sub-int v1, v0, p1

    .line 1301
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, v2}, Lru/okei/timetable/MainActivity;->dp(F)I

    move-result v2

    if-ge v1, v2, :cond_1

    return-void

    .line 1304
    :cond_1
    filled-new-array {v0, p1}, [I

    move-result-object v0

    .line 1305
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x384

    .line 1306
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1307
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fe66666    # 1.8f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1308
    new-instance v1, Lru/okei/timetable/MainActivity$29;

    invoke-direct {v1, p0}, Lru/okei/timetable/MainActivity$29;-><init>(Lru/okei/timetable/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1314
    new-instance v1, Lru/okei/timetable/MainActivity$30;

    invoke-direct {v1, p0, p1}, Lru/okei/timetable/MainActivity$30;-><init>(Lru/okei/timetable/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1327
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private applyCachedWeek(Lru/okei/timetable/data/WeekSchedule;J)V
    .locals 1

    .line 948
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iput-object p1, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    .line 949
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iput-object p1, v0, Lru/okei/timetable/ui/ScheduleState;->parsedWeek:Lru/okei/timetable/data/WeekSchedule;

    .line 950
    iput-wide p2, p0, Lru/okei/timetable/MainActivity;->syncedAt:J

    .line 951
    sput-object p1, Lru/okei/timetable/MainActivity;->sharedWeek:Lru/okei/timetable/data/WeekSchedule;

    .line 952
    sput-wide p2, Lru/okei/timetable/MainActivity;->sharedWeekAt:J

    const/4 p1, 0x1

    .line 953
    iput-boolean p1, p0, Lru/okei/timetable/MainActivity;->offline:Z

    const/4 p1, 0x0

    .line 954
    iput-boolean p1, p0, Lru/okei/timetable/MainActivity;->emptyOnSite:Z

    .line 955
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->render()V

    .line 956
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->onAlarmsEnabled()V

    return-void
.end method

.method private applyPendingHighlight()V
    .locals 3

    .line 1051
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->pendingHighlight:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->introRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lru/okei/timetable/MainActivity;->scroll:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1054
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->pendingHighlight:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1055
    iput-object v1, p0, Lru/okei/timetable/MainActivity;->pendingHighlight:Ljava/lang/String;

    .line 1056
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->scroll:Landroid/widget/ScrollView;

    new-instance v2, Lru/okei/timetable/MainActivity$22;

    invoke-direct {v2, p0, v0}, Lru/okei/timetable/MainActivity$22;-><init>(Lru/okei/timetable/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private applyPendingShare()V
    .locals 3

    .line 1726
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->pendingShare:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1727
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v1, v1, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1730
    iput-object v1, p0, Lru/okei/timetable/MainActivity;->pendingShare:Ljava/lang/String;

    .line 1731
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    .line 1732
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    .line 1733
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1734
    invoke-direct {p0, v1}, Lru/okei/timetable/MainActivity;->handleSharedText(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private breakView(IILjava/util/Calendar;ZI)Landroid/view/View;
    .locals 8

    .line 1416
    new-instance v7, Lru/okei/timetable/ui/BreakRule;

    iget v0, p0, Lru/okei/timetable/MainActivity;->DIM:I

    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lru/okei/timetable/MainActivity;->pixelBold:Landroid/graphics/Typeface;

    invoke-direct {v7, p0, v0, v1, v2}, Lru/okei/timetable/ui/BreakRule;-><init>(Landroid/content/Context;IILandroid/graphics/Typeface;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1417
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f060093

    invoke-virtual {p0, v2, v1}, Lru/okei/timetable/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lru/okei/timetable/ui/BreakRule;->setLabel(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 1419
    invoke-static {p1, p2, p3}, Lru/okei/timetable/data/Bells;->endCalendar(IILjava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p4

    add-int/2addr p2, v0

    .line 1420
    invoke-static {p1, p2, p3}, Lru/okei/timetable/data/Bells;->startCalendar(IILjava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    if-eqz p4, :cond_0

    if-eqz p1, :cond_0

    .line 1422
    iget-object p2, p0, Lru/okei/timetable/MainActivity;->breakViews:Ljava/util/List;

    new-instance p3, Lru/okei/timetable/MainActivity$BreakView;

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const p1, 0x7f0601d9

    .line 1423
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p3

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lru/okei/timetable/MainActivity$BreakView;-><init>(Lru/okei/timetable/ui/BreakRule;JJLjava/lang/String;)V

    .line 1422
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v7
.end method

.method private changedCount()I
    .locals 6

    .line 1379
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1383
    :goto_0
    iget-object v3, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v3, v3, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    iget-object v3, v3, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1384
    iget-object v3, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v3, v3, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    iget-object v3, v3, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/okei/timetable/data/DaySchedule;

    const/4 v4, 0x0

    .line 1385
    :goto_1
    iget-object v5, v3, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1386
    iget-object v5, v3, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/okei/timetable/data/Lesson;

    iget-boolean v5, v5, Lru/okei/timetable/data/Lesson;->changed:Z

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private createScreen(Landroid/os/Bundle;)V
    .locals 8

    const p1, 0x7f040002

    .line 183
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->setContentView(I)V

    .line 184
    invoke-static {p0}, Lru/okei/timetable/SyncReceiver;->scheduleNext(Landroid/content/Context;)V

    .line 185
    invoke-static {p0}, Lru/okei/timetable/WidgetTickReceiver;->schedule(Landroid/content/Context;)V

    .line 186
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lru/okei/timetable/MainActivity;->FG:I

    .line 187
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->muted(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lru/okei/timetable/MainActivity;->MUTED:I

    .line 188
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->dim(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lru/okei/timetable/MainActivity;->DIM:I

    .line 189
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->apply(Landroid/app/Activity;)V

    .line 190
    invoke-static {p0}, Lru/okei/timetable/data/Groups;->current(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->groupAtCreate:Ljava/lang/String;

    const p1, 0x7f03000e

    .line 192
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->content:Landroid/widget/LinearLayout;

    const p1, 0x7f03001d

    .line 193
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->scroll:Landroid/widget/ScrollView;

    .line 194
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lru/okei/timetable/MainActivity$4;

    invoke-direct {v0, p0}, Lru/okei/timetable/MainActivity$4;-><init>(Lru/okei/timetable/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 201
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lru/okei/timetable/MainActivity$5;

    invoke-direct {v0, p0}, Lru/okei/timetable/MainActivity$5;-><init>(Lru/okei/timetable/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const p1, 0x7f030031

    .line 208
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->stateBox:Landroid/widget/LinearLayout;

    const p1, 0x7f030033

    .line 209
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->stateTitle:Landroid/widget/TextView;

    const p1, 0x7f030032

    .line 210
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->stateText:Landroid/widget/TextView;

    .line 211
    new-instance p1, Lru/okei/timetable/ui/Loader;

    iget-object v0, p0, Lru/okei/timetable/MainActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/MainActivity;->stateText:Landroid/widget/TextView;

    invoke-direct {p1, v0, v1}, Lru/okei/timetable/ui/Loader;-><init>(Landroid/os/Handler;Landroid/widget/TextView;)V

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->loader:Lru/okei/timetable/ui/Loader;

    .line 212
    new-instance p1, Lru/okei/timetable/ui/StateBox;

    iget-object v3, p0, Lru/okei/timetable/MainActivity;->stateBox:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lru/okei/timetable/MainActivity;->stateTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lru/okei/timetable/MainActivity;->stateText:Landroid/widget/TextView;

    iget-object v6, p0, Lru/okei/timetable/MainActivity;->retry:Landroid/widget/TextView;

    iget-object v7, p0, Lru/okei/timetable/MainActivity;->scroll:Landroid/widget/ScrollView;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lru/okei/timetable/ui/StateBox;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->state:Lru/okei/timetable/ui/StateBox;

    const p1, 0x7f03001b

    .line 213
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->retry:Landroid/widget/TextView;

    const p1, 0x7f030034

    .line 214
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->subtitle:Landroid/widget/TextView;

    const p1, 0x7f030013

    .line 215
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->footer:Landroid/widget/TextView;

    const p1, 0x7f030015

    .line 217
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 219
    new-instance v0, Lru/okei/timetable/MainActivity$6;

    invoke-direct {v0, p0}, Lru/okei/timetable/MainActivity$6;-><init>(Lru/okei/timetable/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const p1, 0x7f030016

    .line 227
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/okei/timetable/SettingsIconView;

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->iconSettings:Lru/okei/timetable/SettingsIconView;

    .line 228
    iget v0, p0, Lru/okei/timetable/MainActivity;->FG:I

    invoke-virtual {p1, v0}, Lru/okei/timetable/SettingsIconView;->setColor(I)V

    const p1, 0x7f030017

    .line 229
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/okei/timetable/ui/ShareIconView;

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->iconShare:Lru/okei/timetable/ui/ShareIconView;

    if-eqz p1, :cond_1

    .line 231
    iget v0, p0, Lru/okei/timetable/MainActivity;->FG:I

    invoke-virtual {p1, v0}, Lru/okei/timetable/ui/ShareIconView;->setColor(I)V

    .line 232
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->iconShare:Lru/okei/timetable/ui/ShareIconView;

    const v0, 0x7f0600ab

    invoke-virtual {p0, v0}, Lru/okei/timetable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/okei/timetable/ui/ShareIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 233
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->iconShare:Lru/okei/timetable/ui/ShareIconView;

    new-instance v0, Lru/okei/timetable/MainActivity$7;

    invoke-direct {v0, p0}, Lru/okei/timetable/MainActivity$7;-><init>(Lru/okei/timetable/MainActivity;)V

    invoke-virtual {p1, v0}, Lru/okei/timetable/ui/ShareIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :cond_1
    new-instance p1, Lru/okei/timetable/IntroView;

    iget-object v0, p0, Lru/okei/timetable/MainActivity;->introHost:Lru/okei/timetable/IntroView$Host;

    invoke-direct {p1, p0, v0}, Lru/okei/timetable/IntroView;-><init>(Landroid/app/Activity;Lru/okei/timetable/IntroView$Host;)V

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->intro:Lru/okei/timetable/IntroView;

    .line 247
    invoke-virtual {p1}, Lru/okei/timetable/IntroView;->bind()V

    const p1, 0x7f030006

    .line 248
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->alarmState:Landroid/widget/TextView;

    const/high16 p1, 0x7f030000

    .line 249
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->alarmAction:Landroid/widget/TextView;

    .line 251
    invoke-static {p0}, Lru/okei/timetable/Ui;->pixel(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->pixel:Landroid/graphics/Typeface;

    .line 252
    invoke-static {p0}, Lru/okei/timetable/Ui;->bold(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->pixelBold:Landroid/graphics/Typeface;

    .line 253
    new-instance p1, Lru/okei/timetable/ui/ScheduleViews;

    iget-object v2, p0, Lru/okei/timetable/MainActivity;->pixel:Landroid/graphics/Typeface;

    iget-object v3, p0, Lru/okei/timetable/MainActivity;->pixelBold:Landroid/graphics/Typeface;

    iget v4, p0, Lru/okei/timetable/MainActivity;->FG:I

    iget v5, p0, Lru/okei/timetable/MainActivity;->MUTED:I

    iget v6, p0, Lru/okei/timetable/MainActivity;->DIM:I

    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result v7

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lru/okei/timetable/ui/ScheduleViews;-><init>(Landroid/content/Context;Landroid/graphics/Typeface;Landroid/graphics/Typeface;IIII)V

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->views:Lru/okei/timetable/ui/ScheduleViews;

    .line 254
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->subtitle:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lru/okei/timetable/MainActivity;->skin(Landroid/widget/TextView;Z)V

    .line 255
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->stateTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lru/okei/timetable/MainActivity;->skin(Landroid/widget/TextView;Z)V

    .line 256
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->stateText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lru/okei/timetable/MainActivity;->skin(Landroid/widget/TextView;Z)V

    .line 257
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->retry:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lru/okei/timetable/MainActivity;->skin(Landroid/widget/TextView;Z)V

    .line 258
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->footer:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1}, Lru/okei/timetable/MainActivity;->skin(Landroid/widget/TextView;Z)V

    const p1, 0x7f030014

    .line 259
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lru/okei/timetable/MainActivity;->skin(Landroid/widget/TextView;Z)V

    .line 260
    iget-object v2, p0, Lru/okei/timetable/MainActivity;->alarmState:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lru/okei/timetable/MainActivity;->skin(Landroid/widget/TextView;Z)V

    .line 261
    iget-object v2, p0, Lru/okei/timetable/MainActivity;->alarmAction:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lru/okei/timetable/MainActivity;->skin(Landroid/widget/TextView;Z)V

    .line 262
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->setupInfoPages()V

    const v2, 0x7f030002

    .line 264
    invoke-virtual {p0, v2}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lru/okei/timetable/MainActivity$8;

    invoke-direct {v4, p0}, Lru/okei/timetable/MainActivity$8;-><init>(Lru/okei/timetable/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v3, p0, Lru/okei/timetable/MainActivity;->iconSettings:Lru/okei/timetable/SettingsIconView;

    new-instance v4, Lru/okei/timetable/MainActivity$9;

    invoke-direct {v4, p0}, Lru/okei/timetable/MainActivity$9;-><init>(Lru/okei/timetable/MainActivity;)V

    invoke-virtual {v3, v4}, Lru/okei/timetable/SettingsIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    invoke-virtual {p0, v2}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/MainActivity;->pressable(Landroid/view/View;)V

    .line 285
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 287
    new-instance v2, Lru/okei/timetable/MainActivity$10;

    invoke-direct {v2, p0}, Lru/okei/timetable/MainActivity$10;-><init>(Lru/okei/timetable/MainActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    :cond_2
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->retry:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lru/okei/timetable/MainActivity;->pressable(Landroid/view/View;)V

    .line 301
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->retry:Landroid/widget/TextView;

    new-instance v2, Lru/okei/timetable/MainActivity$11;

    invoke-direct {v2, p0}, Lru/okei/timetable/MainActivity$11;-><init>(Lru/okei/timetable/MainActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-virtual {p0}, Lru/okei/timetable/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "from_alarm"

    if-eqz p1, :cond_3

    .line 309
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lru/okei/timetable/MainActivity;->fadeInPending:Z

    const-string v3, "at"

    if-eqz p1, :cond_4

    .line 310
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 311
    :goto_1
    invoke-static {p0}, Lru/okei/timetable/OnboardActivity;->done(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {p0}, Lru/okei/timetable/data/Groups;->current(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_4

    .line 317
    :cond_5
    invoke-direct {p0, p1}, Lru/okei/timetable/MainActivity;->openDebugScreen(Landroid/content/Intent;)V

    .line 318
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->ensureAlarmPlan()V

    if-eqz p1, :cond_6

    .line 320
    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 322
    :cond_6
    invoke-static {}, Lru/okei/timetable/ui/Theme;->consumeRecreate()Z

    move-result v2

    .line 323
    iget-object v4, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iput-boolean v2, v4, Lru/okei/timetable/ui/ScheduleState;->fastList:Z

    if-nez v2, :cond_8

    .line 324
    iget-boolean v4, p0, Lru/okei/timetable/MainActivity;->fadeInPending:Z

    if-nez v4, :cond_8

    if-eqz v0, :cond_7

    goto :goto_2

    .line 333
    :cond_7
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->intro:Lru/okei/timetable/IntroView;

    if-eqz v0, :cond_9

    .line 334
    invoke-virtual {v0}, Lru/okei/timetable/IntroView;->start()V

    goto :goto_3

    .line 325
    :cond_8
    :goto_2
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->skipIntro()V

    if-eqz v2, :cond_9

    const v0, 0x7f03001c

    .line 327
    invoke-virtual {p0, v0}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v2, 0x0

    .line 329
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 330
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0xf0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 336
    :cond_9
    :goto_3
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->showCached()V

    .line 337
    invoke-direct {p0, v1}, Lru/okei/timetable/MainActivity;->load(Z)V

    if-eqz p1, :cond_a

    .line 338
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 339
    invoke-direct {p0, p1}, Lru/okei/timetable/MainActivity;->handleAlarmIntent(Landroid/content/Intent;)V

    :cond_a
    if-eqz p1, :cond_b

    const-string v0, "highlight_day"

    .line 341
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 343
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->pendingHighlight:Ljava/lang/String;

    .line 345
    :cond_b
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->showRememberedAlarm()V

    .line 346
    invoke-static {p0}, Lru/okei/timetable/CrashLog;->clear(Landroid/content/Context;)V

    if-eqz p1, :cond_c

    const-string v0, "android.intent.action.SEND"

    .line 347
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 348
    invoke-direct {p0, p1}, Lru/okei/timetable/MainActivity;->handleSharedText(Landroid/content/Intent;)V

    :cond_c
    return-void

    .line 312
    :cond_d
    :goto_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lru/okei/timetable/OnboardActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->startActivity(Landroid/content/Intent;)V

    const/high16 p1, 0x10a0000

    const v0, 0x10a0001

    .line 313
    invoke-virtual {p0, p1, v0}, Lru/okei/timetable/MainActivity;->overridePendingTransition(II)V

    .line 314
    invoke-virtual {p0}, Lru/okei/timetable/MainActivity;->finish()V

    return-void
.end method

.method private dayDate(Lru/okei/timetable/data/DaySchedule;)Ljava/lang/String;
    .locals 1

    .line 1586
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    iget-object v0, v0, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0}, Lru/okei/timetable/ui/ScheduleViews;->dayDate(Lru/okei/timetable/data/DaySchedule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dayView(Lru/okei/timetable/data/DaySchedule;ZLjava/util/Calendar;)Landroid/view/View;
    .locals 6

    .line 1395
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->views:Lru/okei/timetable/ui/ScheduleViews;

    iget-object v1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v1, v1, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v1, v1, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    iget-object v1, v1, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    :goto_0
    move-object v4, v1

    iget-object v5, p0, Lru/okei/timetable/MainActivity;->host:Lru/okei/timetable/ui/ScheduleViews$Host;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lru/okei/timetable/ui/ScheduleViews;->dayView(Lru/okei/timetable/data/DaySchedule;ZLjava/util/Calendar;Ljava/lang/String;Lru/okei/timetable/ui/ScheduleViews$Host;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private dp(F)I
    .locals 1

    .line 1636
    invoke-virtual {p0}, Lru/okei/timetable/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private ensureAlarmPlan()V
    .locals 4

    .line 1704
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1709
    :cond_0
    :try_start_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-void

    .line 1716
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->main:Landroid/os/Handler;

    new-instance v1, Lru/okei/timetable/MainActivity$34;

    invoke-direct {v1, p0}, Lru/okei/timetable/MainActivity$34;-><init>(Lru/okei/timetable/MainActivity;)V

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MainActivity"

    .line 1713
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private finishIntro()V
    .locals 1

    .line 618
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->intro:Lru/okei/timetable/IntroView;

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v0}, Lru/okei/timetable/IntroView;->finish()V

    :cond_0
    return-void
.end method

.method public static forgetWeek()V
    .locals 2

    const/4 v0, 0x0

    .line 50
    sput-object v0, Lru/okei/timetable/MainActivity;->sharedWeek:Lru/okei/timetable/data/WeekSchedule;

    const-wide/16 v0, 0x0

    .line 51
    sput-wide v0, Lru/okei/timetable/MainActivity;->sharedWeekAt:J

    return-void
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-string p1, ""

    return-object p1

    .line 1632
    :cond_0
    invoke-static {p1, p2}, Lru/okei/timetable/data/Formats;->time(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private goneVisibleAlready()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 569
    :goto_0
    iget-object v2, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 570
    iget-object v2, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private handleAlarmIntent(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_2

    const-string v0, "at"

    .line 559
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->introRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->skipIntro()V

    .line 565
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->alarms:Lru/okei/timetable/alarm/AlarmHost;

    invoke-virtual {v0, p1}, Lru/okei/timetable/alarm/AlarmHost;->show(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleDebugNotify()V
    .locals 4

    .line 404
    invoke-virtual {p0}, Lru/okei/timetable/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {p0}, Lru/okei/timetable/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 406
    invoke-virtual {p0}, Lru/okei/timetable/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "debug_notify"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 409
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lru/okei/timetable/MainActivity$12;

    invoke-direct {v1, p0}, Lru/okei/timetable/MainActivity$12;-><init>(Lru/okei/timetable/MainActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private handleSharedText(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.extra.TEXT"

    .line 381
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    const-string v0, "share"

    if-nez p1, :cond_1

    const-string p1, "\u0432 \u0438\u043d\u0442\u0435\u043d\u0442\u0435 \u043d\u0435\u0442 \u0442\u0435\u043a\u0441\u0442\u0430"

    .line 383
    invoke-static {v0, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 386
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u043f\u043e\u043b\u0443\u0447\u0435\u043d\u043e "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u0441\u0438\u043c\u0432\u043e\u043b\u043e\u0432"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v1, v1, Lru/okei/timetable/ui/ScheduleState;->parsedWeek:Lru/okei/timetable/data/WeekSchedule;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v1, v1, Lru/okei/timetable/ui/ScheduleState;->parsedWeek:Lru/okei/timetable/data/WeekSchedule;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v1, v1, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    :goto_1
    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 390
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/okei/timetable/MainActivity;->pendingShare:Ljava/lang/String;

    const-string p1, "\u0440\u0430\u0441\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u043d\u0435 \u0437\u0430\u0433\u0440\u0443\u0436\u0435\u043d\u043e \u2014 \u0440\u0430\u0437\u0431\u0435\u0440\u0443 \u043f\u043e\u0441\u043b\u0435 \u0437\u0430\u0433\u0440\u0443\u0437\u043a\u0438"

    .line 391
    invoke-static {v0, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0600a9

    .line 392
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 393
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    const p1, 0x7f0600ac

    .line 396
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 397
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 398
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->render()V

    .line 399
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->syncAlarmsAsync()V

    return-void
.end method

.method private healthBanner()Landroid/view/View;
    .locals 3

    .line 1342
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->views:Lru/okei/timetable/ui/ScheduleViews;

    iget-object v1, p0, Lru/okei/timetable/MainActivity;->health:Lru/okei/timetable/data/ParserHealth$Report;

    invoke-virtual {v1}, Lru/okei/timetable/data/ParserHealth$Report;->broken()Z

    move-result v1

    iget-object v2, p0, Lru/okei/timetable/MainActivity;->health:Lru/okei/timetable/data/ParserHealth$Report;

    invoke-virtual {v2}, Lru/okei/timetable/data/ParserHealth$Report;->describe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lru/okei/timetable/ui/ScheduleViews;->healthBanner(ZLjava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private hideLoading()V
    .locals 1

    .line 929
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->state:Lru/okei/timetable/ui/StateBox;

    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {v0}, Lru/okei/timetable/ui/StateBox;->hide()V

    .line 932
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->loader:Lru/okei/timetable/ui/Loader;

    if-eqz v0, :cond_1

    .line 933
    invoke-virtual {v0}, Lru/okei/timetable/ui/Loader;->stop()V

    :cond_1
    return-void
.end method

.method private highlightDay(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 1518
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lru/okei/timetable/MainActivity;->scroll:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1521
    :goto_0
    iget-object v2, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v2, v2, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    iget-object v2, v2, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lru/okei/timetable/MainActivity;->dayBlocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1522
    iget-object v2, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v2, v2, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    iget-object v2, v2, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/okei/timetable/data/DaySchedule;

    iget-object v2, v2, Lru/okei/timetable/data/DaySchedule;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1525
    :cond_1
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->dayBlocks:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    move-object v1, p1

    :goto_1
    if-eqz v1, :cond_2

    .line 1527
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lru/okei/timetable/MainActivity;->content:Landroid/widget/LinearLayout;

    if-eq v2, v3, :cond_2

    .line 1528
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    .line 1530
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1531
    :goto_2
    iget-object v2, p0, Lru/okei/timetable/MainActivity;->scroll:Landroid/widget/ScrollView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {p0, v3}, Lru/okei/timetable/MainActivity;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    const v0, 0x3e4ccccd    # 0.2f

    .line 1532
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1533
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1534
    invoke-static {p1}, Lru/okei/timetable/Haptics;->tick(Landroid/view/View;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private iconRowsAppear()V
    .locals 4

    .line 463
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->iconSettings:Lru/okei/timetable/SettingsIconView;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Lru/okei/timetable/SettingsIconView;->playAppear()V

    .line 466
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->main:Landroid/os/Handler;

    new-instance v1, Lru/okei/timetable/MainActivity$14;

    invoke-direct {v1, p0}, Lru/okei/timetable/MainActivity$14;-><init>(Lru/okei/timetable/MainActivity;)V

    const-wide/16 v2, 0xaa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 471
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->main:Landroid/os/Handler;

    new-instance v1, Lru/okei/timetable/MainActivity$15;

    invoke-direct {v1, p0}, Lru/okei/timetable/MainActivity$15;-><init>(Lru/okei/timetable/MainActivity;)V

    const-wide/16 v2, 0x104

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private iconRowsHidden()V
    .locals 1

    .line 457
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->iconSettings:Lru/okei/timetable/SettingsIconView;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Lru/okei/timetable/SettingsIconView;->reset()V

    :cond_0
    return-void
.end method

.method private introRunning()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->intro:Lru/okei/timetable/IntroView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/okei/timetable/IntroView;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTodayInWeek()Z
    .locals 2

    .line 1590
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->today()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lru/okei/timetable/ui/WeekInfo;->todayInside(Lru/okei/timetable/data/WeekSchedule;Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method private label(Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .locals 1

    .line 1509
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->views:Lru/okei/timetable/ui/ScheduleViews;

    invoke-virtual {v0, p1, p2, p3, p4}, Lru/okei/timetable/ui/ScheduleViews;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method private lessonView(Lru/okei/timetable/data/Lesson;I)Landroid/view/View;
    .locals 2

    .line 1477
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->views:Lru/okei/timetable/ui/ScheduleViews;

    invoke-direct {p0, p2, p1}, Lru/okei/timetable/MainActivity;->originalSubject(ILru/okei/timetable/data/Lesson;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lru/okei/timetable/ui/ScheduleViews;->lessonView(Lru/okei/timetable/data/Lesson;ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private load(Z)V
    .locals 1

    .line 842
    iget-boolean p1, p0, Lru/okei/timetable/MainActivity;->busy:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 845
    iput-boolean p1, p0, Lru/okei/timetable/MainActivity;->busy:Z

    .line 846
    iput-boolean p1, p0, Lru/okei/timetable/MainActivity;->loading:Z

    .line 847
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->updateFooter()V

    .line 848
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object p1, p1, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    if-nez p1, :cond_1

    .line 849
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->showLoading()V

    .line 851
    :cond_1
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lru/okei/timetable/MainActivity$19;

    invoke-direct {v0, p0}, Lru/okei/timetable/MainActivity$19;-><init>(Lru/okei/timetable/MainActivity;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private metaLine(Lru/okei/timetable/data/Lesson;)Ljava/lang/String;
    .locals 0

    .line 1575
    invoke-static {p1}, Lru/okei/timetable/ui/ScheduleViews;->metaLine(Lru/okei/timetable/data/Lesson;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static mmss(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    .line 1460
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x3c

    .line 1461
    div-long v2, p0, v0

    .line 1462
    rem-long/2addr p0, v0

    const-string v0, "0"

    const-wide/16 v4, 0xa

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 1463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    cmp-long v2, p0, v4

    if-gez v2, :cond_1

    .line 1464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private numberBox(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1

    .line 1501
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->views:Lru/okei/timetable/ui/ScheduleViews;

    invoke-virtual {v0, p1}, Lru/okei/timetable/ui/ScheduleViews;->numberBox(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method private onAlarmsEnabled()V
    .locals 3

    .line 775
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->updateAlarmBar()V

    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    .line 781
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->alarmWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lru/okei/timetable/MainActivity$18;

    invoke-direct {v2, p0, v0}, Lru/okei/timetable/MainActivity$18;-><init>(Lru/okei/timetable/MainActivity;Lru/okei/timetable/data/WeekSchedule;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 794
    :cond_1
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->scheduleMaintenance(Landroid/content/Context;)V

    .line 795
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->updateAlarmBar()V

    :goto_0
    return-void
.end method

.method private onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 904
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 906
    instance-of v0, p1, Lru/okei/timetable/MainActivity$UntrustedScheduleException;

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lru/okei/timetable/MainActivity;->offline:Z

    .line 907
    instance-of p1, p1, Lru/okei/timetable/MainActivity$EmptyScheduleException;

    iput-boolean p1, p0, Lru/okei/timetable/MainActivity;->emptyOnSite:Z

    .line 908
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->updateFooter()V

    .line 909
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->health:Lru/okei/timetable/data/ParserHealth$Report;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/okei/timetable/data/ParserHealth$Report;->broken()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 911
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object p1, p1, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    invoke-static {p1}, Lru/okei/timetable/MainActivity;->signatureOf(Lru/okei/timetable/data/WeekSchedule;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/okei/timetable/MainActivity;->rebuild(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 915
    :cond_1
    instance-of p1, p1, Lru/okei/timetable/MainActivity$EmptyScheduleException;

    .line 916
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->health:Lru/okei/timetable/data/ParserHealth$Report;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/okei/timetable/data/ParserHealth$Report;->broken()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const v2, 0x7f06007c

    .line 917
    invoke-virtual {p0, v2}, Lru/okei/timetable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    const v2, 0x7f060098

    goto :goto_1

    :cond_4
    const v2, 0x7f0600a4

    .line 918
    :goto_1
    invoke-virtual {p0, v2}, Lru/okei/timetable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v0, :cond_5

    .line 919
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->health:Lru/okei/timetable/data/ParserHealth$Report;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lru/okei/timetable/data/ParserHealth$Report;->describe()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_6

    const p1, 0x7f060099

    goto :goto_3

    :cond_6
    const p1, 0x7f06009a

    .line 920
    :goto_3
    invoke-virtual {p0, p1}, Lru/okei/timetable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 921
    :goto_4
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->state:Lru/okei/timetable/ui/StateBox;

    if-eqz v0, :cond_7

    .line 922
    invoke-virtual {v0, v2, p1, v1}, Lru/okei/timetable/ui/StateBox;->show(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 924
    :cond_7
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->footer:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onIntroFinished()V
    .locals 4

    .line 424
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->subtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->subtitleText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/okei/timetable/MainActivity;->setSubtitle(Ljava/lang/String;)V

    .line 427
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->iconSettings:Lru/okei/timetable/SettingsIconView;

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {v0}, Lru/okei/timetable/SettingsIconView;->showFinal()V

    .line 430
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->iconShare:Lru/okei/timetable/ui/ShareIconView;

    if-eqz v0, :cond_2

    .line 431
    invoke-virtual {v0}, Lru/okei/timetable/ui/ShareIconView;->showFinal()V

    .line 433
    :cond_2
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->updateAlarmBar()V

    .line 434
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->content:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 435
    :goto_0
    iget-object v2, p0, Lru/okei/timetable/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 436
    iget-object v2, p0, Lru/okei/timetable/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    :cond_3
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 440
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->revealRows()V

    .line 441
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->revealFirstDays()V

    .line 443
    :cond_4
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iput-boolean v1, v0, Lru/okei/timetable/ui/ScheduleState;->revealPending:Z

    .line 444
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iput-boolean v1, v0, Lru/okei/timetable/ui/ScheduleState;->scrollPending:Z

    .line 445
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->isTodayInWeek()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 446
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->main:Landroid/os/Handler;

    new-instance v1, Lru/okei/timetable/MainActivity$13;

    invoke-direct {v1, p0}, Lru/okei/timetable/MainActivity$13;-><init>(Lru/okei/timetable/MainActivity;)V

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 453
    :cond_5
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->applyPendingHighlight()V

    return-void
.end method

.method private openDebugScreen(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1660
    :cond_0
    invoke-virtual {p0}, Lru/okei/timetable/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "debug_open"

    .line 1665
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 1669
    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "settings"

    .line 1671
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1672
    const-class v0, Lru/okei/timetable/SettingsActivity;

    goto :goto_1

    :cond_4
    const-string v0, "diag"

    .line 1673
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1674
    const-class v0, Lru/okei/timetable/DiagnosticsActivity;

    goto :goto_1

    :cond_6
    const-string v0, "setup"

    .line 1677
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1678
    const-class v0, Lru/okei/timetable/SetupActivity;

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_8

    return-void

    .line 1683
    :cond_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "debug_import"

    .line 1684
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1685
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    const-string v0, "debug_import_json"

    .line 1687
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1688
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1690
    :cond_a
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->main:Landroid/os/Handler;

    new-instance v0, Lru/okei/timetable/MainActivity$33;

    invoke-direct {v0, p0, v1}, Lru/okei/timetable/MainActivity$33;-><init>(Lru/okei/timetable/MainActivity;Landroid/content/Intent;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private originalSubject(ILru/okei/timetable/data/Lesson;)Ljava/lang/String;
    .locals 7

    .line 1481
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->parsedWeek:Lru/okei/timetable/data/WeekSchedule;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 1484
    :cond_0
    invoke-static {p2}, Lru/okei/timetable/MainActivity;->pairOf(Lru/okei/timetable/data/Lesson;)I

    move-result p2

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1485
    :goto_0
    iget-object v3, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v3, v3, Lru/okei/timetable/ui/ScheduleState;->parsedWeek:Lru/okei/timetable/data/WeekSchedule;

    iget-object v3, v3, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1486
    iget-object v3, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v3, v3, Lru/okei/timetable/ui/ScheduleState;->parsedWeek:Lru/okei/timetable/data/WeekSchedule;

    iget-object v3, v3, Lru/okei/timetable/data/WeekSchedule;->days:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/okei/timetable/data/DaySchedule;

    .line 1487
    iget v4, v3, Lru/okei/timetable/data/DaySchedule;->index:I

    if-eq v4, p1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v4, 0x0

    .line 1490
    :goto_1
    iget-object v5, v3, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1491
    iget-object v5, v3, Lru/okei/timetable/data/DaySchedule;->lessons:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/okei/timetable/data/Lesson;

    .line 1492
    invoke-static {v5}, Lru/okei/timetable/MainActivity;->pairOf(Lru/okei/timetable/data/Lesson;)I

    move-result v6

    if-ne v6, p2, :cond_3

    .line 1493
    iget-object p1, v5, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v5, Lru/okei/timetable/data/Lesson;->subject:Ljava/lang/String;

    :goto_2
    return-object v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private static pairOf(Lru/okei/timetable/data/Lesson;)I
    .locals 1

    .line 1469
    :try_start_0
    iget-object p0, p0, Lru/okei/timetable/data/Lesson;->number:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "MainActivity"

    .line 1471
    invoke-static {v0, p0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1607
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1611
    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/okei/timetable/data/Formats;->date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 1615
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1616
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xb

    .line 1617
    invoke-virtual {v2, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 1618
    invoke-virtual {v2, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 1619
    invoke-virtual {v2, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 1620
    invoke-virtual {v2, p1, v1}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    const-string v1, "MainActivity"

    .line 1623
    invoke-static {v1, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private pressable(Landroid/view/View;)V
    .locals 0

    .line 746
    invoke-static {p1}, Lru/okei/timetable/ui/Pressable;->attach(Landroid/view/View;)V

    return-void
.end method

.method private rangeText()Ljava/lang/String;
    .locals 3

    .line 1579
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    iget-object v0, v0, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    iget-object v0, v0, Lru/okei/timetable/data/WeekSchedule;->endDate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1582
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    iget-object v0, v0, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v1, v1, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    iget-object v1, v1, Lru/okei/timetable/data/WeekSchedule;->endDate:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2014"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private rebuild(Ljava/lang/String;)V
    .locals 10

    .line 1070
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->content:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v1, v1, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    iget-object v2, p0, Lru/okei/timetable/MainActivity;->dayBlocks:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lru/okei/timetable/MainActivity$23;

    invoke-direct {v5, p0}, Lru/okei/timetable/MainActivity$23;-><init>(Lru/okei/timetable/MainActivity;)V

    iget v6, p0, Lru/okei/timetable/MainActivity;->MUTED:I

    move-object v7, p1

    move-object v8, v9

    invoke-static/range {v0 .. v8}, Lru/okei/timetable/ui/Renderer;->render(Landroid/widget/LinearLayout;Lru/okei/timetable/data/WeekSchedule;Ljava/util/List;ZLjava/lang/String;Lru/okei/timetable/ui/Renderer$Sink;ILjava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 1119
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    iput-object v0, p0, Lru/okei/timetable/MainActivity;->todayBlock:Landroid/view/View;

    .line 1120
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->introRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lru/okei/timetable/MainActivity;->todayScrollDone:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lru/okei/timetable/MainActivity;->todayBlock:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1121
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->scrollToToday()V

    .line 1123
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iput-object p1, v0, Lru/okei/timetable/ui/ScheduleState;->rendered:Ljava/lang/String;

    return-void
.end method

.method private refreshFooterAge()V
    .locals 5

    .line 1367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    .line 1368
    iget-wide v2, p0, Lru/okei/timetable/MainActivity;->footerMinute:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1369
    iput-wide v0, p0, Lru/okei/timetable/MainActivity;->footerMinute:J

    .line 1370
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->updateFooter()V

    :cond_0
    return-void
.end method

.method private relative(J)Ljava/lang/String;
    .locals 0

    .line 1375
    invoke-static {p0, p1, p2}, Lru/okei/timetable/ui/MainText;->relative(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private render()V
    .locals 7

    .line 990
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->parsedWeek:Lru/okei/timetable/data/WeekSchedule;

    if-nez v0, :cond_0

    return-void

    .line 993
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->loader:Lru/okei/timetable/ui/Loader;

    if-eqz v0, :cond_1

    .line 994
    invoke-virtual {v0}, Lru/okei/timetable/ui/Loader;->stop()V

    .line 996
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v1, v0, Lru/okei/timetable/ui/ScheduleState;->parsedWeek:Lru/okei/timetable/data/WeekSchedule;

    invoke-static {p0, v1}, Lru/okei/timetable/data/ChangeStore;->appliedWeek(Landroid/content/Context;Lru/okei/timetable/data/WeekSchedule;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v1

    iput-object v1, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    .line 998
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    invoke-static {v0}, Lru/okei/timetable/data/WeekSchedule;->signature(Lru/okei/timetable/data/WeekSchedule;)Ljava/lang/String;

    move-result-object v0

    .line 999
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v1, v1, Lru/okei/timetable/ui/ScheduleState;->rendered:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lru/okei/timetable/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    .line 1001
    invoke-direct {p0, v0}, Lru/okei/timetable/MainActivity;->rebuild(Ljava/lang/String;)V

    .line 1004
    :cond_4
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->introRunning()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1005
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->subtitleText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lru/okei/timetable/MainActivity;->setSubtitle(Ljava/lang/String;)V

    .line 1007
    :cond_5
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->updateFooter()V

    .line 1008
    iget-object v3, p0, Lru/okei/timetable/MainActivity;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1009
    iget-object v3, p0, Lru/okei/timetable/MainActivity;->stateBox:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1010
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->syncAlarmsAsync()V

    if-eqz v1, :cond_6

    .line 1011
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->introRunning()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-boolean v1, v1, Lru/okei/timetable/ui/ScheduleState;->fastList:Z

    if-nez v1, :cond_6

    .line 1012
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->revealRows()V

    .line 1013
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iput-boolean v2, v1, Lru/okei/timetable/ui/ScheduleState;->revealPending:Z

    .line 1015
    :cond_6
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iput-boolean v2, v1, Lru/okei/timetable/ui/ScheduleState;->fastList:Z

    .line 1016
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->introRunning()Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 1017
    :goto_2
    iget-object v4, p0, Lru/okei/timetable/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 1018
    iget-object v4, p0, Lru/okei/timetable/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    .line 1020
    :goto_3
    iget-object v4, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 1021
    iget-object v4, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1024
    :cond_8
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-boolean v1, v1, Lru/okei/timetable/ui/ScheduleState;->scrollPending:Z

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->introRunning()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1025
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->scrollToToday()V

    .line 1026
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iput-boolean v2, v1, Lru/okei/timetable/ui/ScheduleState;->scrollPending:Z

    .line 1027
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->isTodayInWeek()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1028
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->main:Landroid/os/Handler;

    new-instance v4, Lru/okei/timetable/MainActivity$21;

    invoke-direct {v4, p0}, Lru/okei/timetable/MainActivity$21;-><init>(Lru/okei/timetable/MainActivity;)V

    const-wide/16 v5, 0x640

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1036
    :cond_9
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->introRunning()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->goneVisibleAlready()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1037
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->revealRows()V

    .line 1039
    :cond_a
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->introRunning()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1040
    :goto_4
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_b

    .line 1041
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1044
    :cond_b
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->startTicker()V

    .line 1045
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->applyPendingHighlight()V

    .line 1046
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->applyPendingShare()V

    .line 1047
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iput-object v0, v1, Lru/okei/timetable/ui/ScheduleState;->rendered:Ljava/lang/String;

    return-void
.end method

.method private revealFirstDays()V
    .locals 7

    .line 1154
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lru/okei/timetable/MainActivity;->dayBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1157
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->dayBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lru/okei/timetable/MainActivity;->dayBlocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    .line 1158
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1159
    :goto_1
    iget-object v5, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1160
    iget-object v5, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1161
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt v6, v0, :cond_2

    goto :goto_2

    .line 1164
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1166
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 1169
    :cond_4
    iput-boolean v1, p0, Lru/okei/timetable/MainActivity;->introRevealRunning:Z

    .line 1171
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 1172
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1173
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v1, 0x0

    .line 1174
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 1175
    invoke-direct {p0, v1}, Lru/okei/timetable/MainActivity;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1178
    :cond_5
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->main:Landroid/os/Handler;

    new-instance v1, Lru/okei/timetable/MainActivity$25;

    invoke-direct {v1, p0, v2}, Lru/okei/timetable/MainActivity$25;-><init>(Lru/okei/timetable/MainActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1192
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x37

    mul-long v0, v0, v2

    const-wide/16 v2, 0x12c

    add-long/2addr v0, v2

    long-to-int v1, v0

    .line 1193
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->main:Landroid/os/Handler;

    new-instance v2, Lru/okei/timetable/MainActivity$26;

    invoke-direct {v2, p0}, Lru/okei/timetable/MainActivity$26;-><init>(Lru/okei/timetable/MainActivity;)V

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_4
    return-void
.end method

.method private revealRows()V
    .locals 4

    .line 1136
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->revealedRows:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1137
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->content:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1138
    :goto_0
    iget-object v3, p0, Lru/okei/timetable/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1139
    iget-object v3, p0, Lru/okei/timetable/MainActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1142
    :cond_0
    :goto_1
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 1143
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1144
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1145
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v3, 0x0

    .line 1146
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1147
    iget-object v3, p0, Lru/okei/timetable/MainActivity;->revealedRows:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private scrollToToday()V
    .locals 1

    const/4 v0, 0x0

    .line 1269
    invoke-direct {p0, v0}, Lru/okei/timetable/MainActivity;->scrollToToday(I)V

    return-void
.end method

.method private scrollToToday(I)V
    .locals 4

    .line 1274
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->todayBlock:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/okei/timetable/MainActivity;->scroll:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1277
    :cond_0
    new-instance v1, Lru/okei/timetable/MainActivity$28;

    invoke-direct {v1, p0, p1}, Lru/okei/timetable/MainActivity$28;-><init>(Lru/okei/timetable/MainActivity;I)V

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private separator()Landroid/view/View;
    .locals 1

    .line 1505
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->views:Lru/okei/timetable/ui/ScheduleViews;

    invoke-virtual {v0}, Lru/okei/timetable/ui/ScheduleViews;->separator()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private setSubtitle(Ljava/lang/String;)V
    .locals 4

    .line 603
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->subtitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    .line 606
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_0
    if-gez v0, :cond_2

    .line 608
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 611
    :cond_2
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 612
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lru/okei/timetable/MainActivity;->MUTED:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 614
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupInfoPages()V
    .locals 2

    .line 1549
    new-instance v0, Lru/okei/timetable/PagePager;

    iget-object v1, p0, Lru/okei/timetable/MainActivity;->pagerHost:Lru/okei/timetable/PagePager$Host;

    invoke-direct {v0, p0, v1}, Lru/okei/timetable/PagePager;-><init>(Landroid/app/Activity;Lru/okei/timetable/PagePager$Host;)V

    iput-object v0, p0, Lru/okei/timetable/MainActivity;->pages:Lru/okei/timetable/PagePager;

    const v1, 0x7f03001c

    .line 1550
    invoke-virtual {p0, v1}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lru/okei/timetable/PagePager;->attach(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method private showCached()V
    .locals 3

    .line 960
    sget-object v0, Lru/okei/timetable/MainActivity;->sharedWeek:Lru/okei/timetable/data/WeekSchedule;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 961
    sget-object v0, Lru/okei/timetable/MainActivity;->sharedWeek:Lru/okei/timetable/data/WeekSchedule;

    sget-wide v1, Lru/okei/timetable/MainActivity;->sharedWeekAt:J

    invoke-direct {p0, v0, v1, v2}, Lru/okei/timetable/MainActivity;->applyCachedWeek(Lru/okei/timetable/data/WeekSchedule;J)V

    return-void

    .line 964
    :cond_0
    invoke-static {p0}, Lru/okei/timetable/data/Cache;->read(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 969
    :cond_1
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lru/okei/timetable/MainActivity$20;

    invoke-direct {v2, p0, v0}, Lru/okei/timetable/MainActivity$20;-><init>(Lru/okei/timetable/MainActivity;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showLoading()V
    .locals 4

    .line 938
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->state:Lru/okei/timetable/ui/StateBox;

    if-eqz v0, :cond_0

    const v1, 0x7f06009e

    .line 939
    invoke-virtual {p0, v1}, Lru/okei/timetable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lru/okei/timetable/ui/StateBox;->show(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 941
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->loader:Lru/okei/timetable/ui/Loader;

    if-eqz v0, :cond_1

    .line 942
    invoke-virtual {v0}, Lru/okei/timetable/ui/Loader;->start()V

    :cond_1
    return-void
.end method

.method private showRememberedAlarm()V
    .locals 2

    .line 578
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->alarms:Lru/okei/timetable/alarm/AlarmHost;

    invoke-virtual {v0}, Lru/okei/timetable/alarm/AlarmHost;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 581
    :cond_0
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->consumePendingAlarm(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 583
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->alarms:Lru/okei/timetable/alarm/AlarmHost;

    invoke-virtual {v1, v0}, Lru/okei/timetable/alarm/AlarmHost;->show(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private showStartupError(Ljava/lang/Throwable;)V
    .locals 7

    .line 359
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 360
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41a00000    # 20.0f

    .line 361
    invoke-direct {p0, v2}, Lru/okei/timetable/MainActivity;->dp(F)I

    move-result v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-direct {p0, v4}, Lru/okei/timetable/MainActivity;->dp(F)I

    move-result v4

    invoke-direct {p0, v2}, Lru/okei/timetable/MainActivity;->dp(F)I

    move-result v5

    invoke-direct {p0, v2}, Lru/okei/timetable/MainActivity;->dp(F)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 362
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u041e\u0448\u0438\u0431\u043a\u0430 \u0437\u0430\u043f\u0443\u0441\u043a\u0430"

    .line 363
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 364
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 365
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 366
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0xe

    .line 370
    array-length v6, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 371
    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 374
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 375
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 376
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    invoke-virtual {p0, v0}, Lru/okei/timetable/MainActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private static signatureOf(Lru/okei/timetable/data/WeekSchedule;)Ljava/lang/String;
    .locals 0

    .line 1066
    invoke-static {p0}, Lru/okei/timetable/data/WeekSchedule;->signature(Lru/okei/timetable/data/WeekSchedule;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private skin(Landroid/widget/TextView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1513
    iget-object p2, p0, Lru/okei/timetable/MainActivity;->pixelBold:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lru/okei/timetable/MainActivity;->pixel:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p2, 0x0

    .line 1514
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    return-void
.end method

.method private skipIntro()V
    .locals 1

    .line 418
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->intro:Lru/okei/timetable/IntroView;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Lru/okei/timetable/IntroView;->skip()V

    :cond_0
    return-void
.end method

.method private staleBanner()Landroid/view/View;
    .locals 3

    .line 1337
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->parsedWeek:Lru/okei/timetable/data/WeekSchedule;

    .line 1338
    :goto_0
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->views:Lru/okei/timetable/ui/ScheduleViews;

    iget-object v2, v0, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    iget-object v0, v0, Lru/okei/timetable/data/WeekSchedule;->endDate:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lru/okei/timetable/ui/ScheduleViews;->staleBanner(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private startTicker()V
    .locals 4

    .line 1430
    iget-boolean v0, p0, Lru/okei/timetable/MainActivity;->ticking:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1433
    iput-boolean v0, p0, Lru/okei/timetable/MainActivity;->ticking:Z

    .line 1434
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->updateBreaks()V

    .line 1435
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/MainActivity;->clockTick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopTicker()V
    .locals 2

    const/4 v0, 0x0

    .line 1439
    iput-boolean v0, p0, Lru/okei/timetable/MainActivity;->ticking:Z

    .line 1440
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/MainActivity;->clockTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private subtitleText()Ljava/lang/String;
    .locals 5

    .line 590
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->rangeText()Ljava/lang/String;

    move-result-object v0

    .line 591
    invoke-static {p0}, Lru/okei/timetable/data/Groups;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const/16 v2, 0x2e

    .line 595
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const-string v3, "\n"

    if-gtz v2, :cond_1

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v4, 0x0

    .line 599
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private syncAlarmsAsync()V
    .locals 4

    .line 1127
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->alarmWorker:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lru/okei/timetable/MainActivity;->main:Landroid/os/Handler;

    iget-object v2, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v2, v2, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    new-instance v3, Lru/okei/timetable/MainActivity$24;

    invoke-direct {v3, p0}, Lru/okei/timetable/MainActivity$24;-><init>(Lru/okei/timetable/MainActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lru/okei/timetable/ui/AlarmSync;->run(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lru/okei/timetable/data/WeekSchedule;Ljava/lang/Runnable;)V

    return-void
.end method

.method private today()Ljava/util/Calendar;
    .locals 3

    .line 1598
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 1599
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 1600
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 1601
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 1602
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method private todayIndex()I
    .locals 1

    .line 1594
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->today()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lru/okei/timetable/ui/WeekInfo;->todayIndex(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method private toggleAlarms()V
    .locals 2

    .line 758
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 759
    invoke-static {p0, v0}, Lru/okei/timetable/alarm/AlarmScheduler;->setEnabled(Landroid/content/Context;Z)V

    .line 760
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->updateAlarmBar()V

    return-void

    .line 763
    :cond_0
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSetup;->ready(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 764
    iput-boolean v1, p0, Lru/okei/timetable/MainActivity;->pendingEnable:Z

    .line 765
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSetup;->requestNext(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 766
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->alarmState:Landroid/widget/TextView;

    const v1, 0x7f0600a3

    invoke-virtual {p0, v1}, Lru/okei/timetable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    .line 770
    :cond_2
    invoke-static {p0, v1}, Lru/okei/timetable/alarm/AlarmScheduler;->setEnabled(Landroid/content/Context;Z)V

    .line 771
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->onAlarmsEnabled()V

    return-void
.end method

.method private topInContent(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    .line 1258
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1259
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    const/4 p1, 0x1

    aget v1, v1, p1

    aget p1, v0, p1

    sub-int/2addr v1, p1

    .line 1260
    iget-object p1, p0, Lru/okei/timetable/MainActivity;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method private updateAlarmBar()V
    .locals 2

    .line 808
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->alarmState:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->introRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 811
    :cond_0
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->alarmStateText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 812
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->alarmState:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 813
    :cond_1
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->alarmState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->alarmAction:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 817
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->alarmActionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateBreaks()V
    .locals 12

    .line 1444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1445
    :goto_0
    iget-object v4, p0, Lru/okei/timetable/MainActivity;->breakViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1446
    iget-object v4, p0, Lru/okei/timetable/MainActivity;->breakViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/okei/timetable/MainActivity$BreakView;

    .line 1447
    iget-wide v5, v4, Lru/okei/timetable/MainActivity$BreakView;->start:J

    cmp-long v7, v0, v5

    if-ltz v7, :cond_2

    iget-wide v5, v4, Lru/okei/timetable/MainActivity$BreakView;->end:J

    cmp-long v7, v0, v5

    if-gez v7, :cond_2

    .line 1448
    iget-wide v5, v4, Lru/okei/timetable/MainActivity$BreakView;->end:J

    sub-long/2addr v5, v0

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 1449
    div-long v7, v0, v7

    const-wide/16 v9, 0x2

    rem-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 1450
    :goto_1
    iget-object v8, v4, Lru/okei/timetable/MainActivity$BreakView;->view:Lru/okei/timetable/ui/BreakRule;

    if-eqz v7, :cond_1

    const-string v7, "\u25b6 "

    goto :goto_2

    :cond_1
    const-string v7, "   "

    :goto_2
    const v9, 0x7f060095

    invoke-virtual {p0, v9}, Lru/okei/timetable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6}, Lru/okei/timetable/MainActivity;->mmss(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lru/okei/timetable/ui/BreakRule;->setText(Ljava/lang/String;)V

    .line 1451
    iget-object v4, v4, Lru/okei/timetable/MainActivity$BreakView;->view:Lru/okei/timetable/ui/BreakRule;

    iget v5, p0, Lru/okei/timetable/MainActivity;->FG:I

    invoke-virtual {v4, v5}, Lru/okei/timetable/ui/BreakRule;->setTextColor(I)V

    goto :goto_3

    .line 1453
    :cond_2
    iget-object v5, v4, Lru/okei/timetable/MainActivity$BreakView;->view:Lru/okei/timetable/ui/BreakRule;

    const v6, 0x7f060096

    invoke-virtual {p0, v6}, Lru/okei/timetable/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lru/okei/timetable/MainActivity$BreakView;->label:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lru/okei/timetable/ui/BreakRule;->setText(Ljava/lang/String;)V

    .line 1454
    iget-object v4, v4, Lru/okei/timetable/MainActivity$BreakView;->view:Lru/okei/timetable/ui/BreakRule;

    iget v5, p0, Lru/okei/timetable/MainActivity;->DIM:I

    invoke-virtual {v4, v5}, Lru/okei/timetable/ui/BreakRule;->setTextColor(I)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private updateFooter()V
    .locals 8

    .line 1358
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->footer:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 1361
    :cond_0
    iget-boolean v2, p0, Lru/okei/timetable/MainActivity;->loading:Z

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->changedCount()I

    move-result v3

    iget-boolean v4, p0, Lru/okei/timetable/MainActivity;->emptyOnSite:Z

    iget-boolean v5, p0, Lru/okei/timetable/MainActivity;->offline:Z

    iget-wide v6, p0, Lru/okei/timetable/MainActivity;->syncedAt:J

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lru/okei/timetable/ui/MainText;->footer(Landroid/content/Context;ZIZZJ)Ljava/lang/String;

    move-result-object v0

    .line 1362
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->changedCount()I

    move-result v1

    .line 1363
    iget-object v2, p0, Lru/okei/timetable/MainActivity;->footer:Landroid/widget/TextView;

    if-lez v1, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const v1, 0x7f06009d

    invoke-virtual {p0, v1, v3}, Lru/okei/timetable/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateRowsVisibility()V
    .locals 12

    .line 1203
    iget-boolean v0, p0, Lru/okei/timetable/MainActivity;->introRevealRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 1206
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->scroll:Landroid/widget/ScrollView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lru/okei/timetable/MainActivity;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 1210
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 1211
    iget-object v1, p0, Lru/okei/timetable/MainActivity;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1212
    :goto_0
    iget-object v5, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 1213
    iget-object v5, p0, Lru/okei/timetable/MainActivity;->rowViews:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1214
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_3

    .line 1217
    :cond_2
    invoke-direct {p0, v5}, Lru/okei/timetable/MainActivity;->topInContent(Landroid/view/View;)I

    move-result v6

    .line 1218
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v6

    const/high16 v8, 0x41000000    # 8.0f

    .line 1219
    invoke-direct {p0, v8}, Lru/okei/timetable/MainActivity;->dp(F)I

    move-result v9

    sub-int v9, v0, v9

    const/4 v10, 0x1

    if-le v7, v9, :cond_3

    add-int v9, v0, v1

    invoke-direct {p0, v8}, Lru/okei/timetable/MainActivity;->dp(F)I

    move-result v8

    add-int/2addr v9, v8

    if-ge v6, v9, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    sub-int v9, v0, v1

    if-lt v7, v9, :cond_5

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v0

    if-le v6, v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    .line 1222
    :cond_5
    :goto_2
    iget-object v6, p0, Lru/okei/timetable/MainActivity;->revealedRows:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x41b00000    # 22.0f

    const/4 v11, 0x0

    if-eqz v8, :cond_6

    if-nez v6, :cond_6

    .line 1224
    iget-object v6, p0, Lru/okei/timetable/MainActivity;->revealedRows:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1225
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1226
    invoke-virtual {v5, v11}, Landroid/view/View;->setAlpha(F)V

    .line 1227
    invoke-direct {p0, v9}, Lru/okei/timetable/MainActivity;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1228
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1229
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1230
    invoke-virtual {v6, v11}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v7, v4

    const-wide/16 v9, 0x37

    mul-long v7, v7, v9

    .line 1231
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v7, 0x118

    .line 1232
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v7, Lru/okei/timetable/MainActivity;->EASE:Landroid/animation/TimeInterpolator;

    .line 1233
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lru/okei/timetable/MainActivity$27;

    invoke-direct {v7, p0, v5}, Lru/okei/timetable/MainActivity$27;-><init>(Lru/okei/timetable/MainActivity;Landroid/view/View;)V

    .line 1234
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 1241
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    if-nez v8, :cond_7

    if-eqz v10, :cond_7

    if-eqz v6, :cond_7

    .line 1244
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1245
    iget-object v6, p0, Lru/okei/timetable/MainActivity;->revealedRows:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1246
    invoke-virtual {v5, v11}, Landroid/view/View;->setAlpha(F)V

    .line 1247
    invoke-direct {p0, v9}, Lru/okei/timetable/MainActivity;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_7
    if-eqz v8, :cond_8

    if-eqz v6, :cond_8

    .line 1248
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v6

    const v8, 0x3f7d70a4    # 0.99f

    cmpg-float v6, v6, v8

    if-gez v6, :cond_8

    .line 1249
    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1250
    invoke-virtual {v5, v11}, Landroid/view/View;->setTranslationY(F)V

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_4
    return-void
.end method

.method private weekIsStale()Z
    .locals 3

    .line 1332
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->week:Lru/okei/timetable/data/WeekSchedule;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->parsedWeek:Lru/okei/timetable/data/WeekSchedule;

    .line 1333
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lru/okei/timetable/ui/WeekInfo;->stale(Lru/okei/timetable/data/WeekSchedule;J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1564
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->pages:Lru/okei/timetable/PagePager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/okei/timetable/MainActivity;->alarms:Lru/okei/timetable/alarm/AlarmHost;

    invoke-virtual {v0}, Lru/okei/timetable/alarm/AlarmHost;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->introRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1565
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->pages:Lru/okei/timetable/PagePager;

    invoke-virtual {v0, p1}, Lru/okei/timetable/PagePager;->dispatch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1569
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 1

    .line 1555
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->pages:Lru/okei/timetable/PagePager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/okei/timetable/PagePager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->pages:Lru/okei/timetable/PagePager;

    invoke-virtual {v0}, Lru/okei/timetable/PagePager;->close()V

    return-void

    .line 1559
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    :try_start_0
    invoke-direct {p0, p1}, Lru/okei/timetable/MainActivity;->createScreen(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "MainActivity"

    .line 177
    invoke-static {v0, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    invoke-direct {p0, p1}, Lru/okei/timetable/MainActivity;->showStartupError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 823
    iget-boolean v0, p0, Lru/okei/timetable/MainActivity;->closeReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 825
    :try_start_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->alarmCloseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lru/okei/timetable/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MainActivity"

    .line 827
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 830
    iput-boolean v0, p0, Lru/okei/timetable/MainActivity;->closeReceiverRegistered:Z

    .line 832
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->loader:Lru/okei/timetable/ui/Loader;

    if-eqz v0, :cond_1

    .line 833
    invoke-virtual {v0}, Lru/okei/timetable/ui/Loader;->stop()V

    .line 835
    :cond_1
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 836
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->alarmWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 837
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->alarms:Lru/okei/timetable/alarm/AlarmHost;

    invoke-virtual {v0}, Lru/okei/timetable/alarm/AlarmHost;->release()V

    .line 838
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 540
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    const-string v0, "android.intent.action.SEND"

    .line 541
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-direct {p0, p1}, Lru/okei/timetable/MainActivity;->handleSharedText(Landroid/content/Intent;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "at"

    .line 545
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    invoke-direct {p0, p1}, Lru/okei/timetable/MainActivity;->handleAlarmIntent(Landroid/content/Intent;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "highlight_day"

    .line 549
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 550
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/okei/timetable/MainActivity;->highlightDay(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    const-string v1, "from_alarm"

    .line 552
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 553
    iput-boolean v0, p0, Lru/okei/timetable/MainActivity;->fadeInPending:Z

    .line 554
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onPause()V
    .locals 11

    .line 712
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 713
    sput-object v0, Lru/okei/timetable/SiteChangesSync;->onApplied:Ljava/lang/Runnable;

    .line 714
    iget-boolean v0, p0, Lru/okei/timetable/MainActivity;->closeReceiverRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 716
    :try_start_0
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->alarmCloseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lru/okei/timetable/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MainActivity"

    .line 718
    invoke-static {v2, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 720
    :goto_0
    iput-boolean v1, p0, Lru/okei/timetable/MainActivity;->closeReceiverRegistered:Z

    .line 723
    :cond_0
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->stopTicker()V

    .line 726
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->pages:Lru/okei/timetable/PagePager;

    if-eqz v0, :cond_1

    .line 727
    invoke-virtual {v0}, Lru/okei/timetable/PagePager;->pause()V

    .line 729
    :cond_1
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->introRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->finishIntro()V

    .line 733
    :cond_2
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->alarms:Lru/okei/timetable/alarm/AlarmHost;

    invoke-virtual {v0}, Lru/okei/timetable/alarm/AlarmHost;->showing()Landroid/content/Intent;

    move-result-object v0

    .line 734
    iget-object v2, p0, Lru/okei/timetable/MainActivity;->alarms:Lru/okei/timetable/alarm/AlarmHost;

    invoke-virtual {v2}, Lru/okei/timetable/alarm/AlarmHost;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    const-string v2, "code"

    .line 736
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v1, "at"

    .line 737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v1, "day"

    .line 738
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "lesson"

    .line 739
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "label"

    .line 740
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, p0

    .line 735
    invoke-static/range {v3 .. v10}, Lru/okei/timetable/Notifier;->show(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 751
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x47

    if-ne p1, p2, :cond_0

    .line 753
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->onAlarmsEnabled()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 625
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 627
    invoke-static {p0}, Lru/okei/timetable/SiteChangesSync;->syncAsync(Landroid/content/Context;)V

    .line 628
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/MainActivity;->visibilityTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 629
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->main:Landroid/os/Handler;

    iget-object v1, p0, Lru/okei/timetable/MainActivity;->visibilityTick:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 630
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->handleDebugNotify()V

    .line 631
    new-instance v0, Lru/okei/timetable/MainActivity$17;

    invoke-direct {v0, p0}, Lru/okei/timetable/MainActivity$17;-><init>(Lru/okei/timetable/MainActivity;)V

    sput-object v0, Lru/okei/timetable/SiteChangesSync;->onApplied:Ljava/lang/Runnable;

    .line 646
    iget-boolean v0, p0, Lru/okei/timetable/MainActivity;->closeReceiverRegistered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 647
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "ru.okei.timetable.CLOSE_OVERLAY"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 648
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    .line 649
    iget-object v2, p0, Lru/okei/timetable/MainActivity;->alarmCloseReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v0, v3}, Lru/okei/timetable/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 651
    :cond_0
    iget-object v2, p0, Lru/okei/timetable/MainActivity;->alarmCloseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lru/okei/timetable/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 653
    :goto_0
    iput-boolean v1, p0, Lru/okei/timetable/MainActivity;->closeReceiverRegistered:Z

    .line 655
    :cond_1
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->isLight(Landroid/content/Context;)Z

    move-result v0

    iget v2, p0, Lru/okei/timetable/MainActivity;->FG:I

    const v3, -0xe5e5e6

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eq v0, v2, :cond_3

    .line 656
    invoke-static {}, Lru/okei/timetable/ui/Theme;->markRecreate()V

    .line 657
    invoke-virtual {p0}, Lru/okei/timetable/MainActivity;->recreate()V

    return-void

    .line 660
    :cond_3
    invoke-static {p0}, Lru/okei/timetable/data/Groups;->current(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lru/okei/timetable/MainActivity;->groupAtCreate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 661
    invoke-static {}, Lru/okei/timetable/ui/Theme;->markRecreate()V

    .line 662
    invoke-virtual {p0}, Lru/okei/timetable/MainActivity;->recreate()V

    return-void

    .line 665
    :cond_4
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSetup;->ready(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lru/okei/timetable/MainActivity;->setupShown:Z

    if-nez v0, :cond_5

    .line 667
    iput-boolean v1, p0, Lru/okei/timetable/MainActivity;->setupShown:Z

    .line 668
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lru/okei/timetable/SetupActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lru/okei/timetable/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 670
    :cond_5
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->alarms:Lru/okei/timetable/alarm/AlarmHost;

    invoke-virtual {v0}, Lru/okei/timetable/alarm/AlarmHost;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 672
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->alarms:Lru/okei/timetable/alarm/AlarmHost;

    invoke-virtual {v0}, Lru/okei/timetable/alarm/AlarmHost;->wake()V

    .line 674
    :cond_6
    iget-boolean v0, p0, Lru/okei/timetable/MainActivity;->pendingEnable:Z

    if-eqz v0, :cond_7

    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSetup;->ready(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 675
    iput-boolean v4, p0, Lru/okei/timetable/MainActivity;->pendingEnable:Z

    .line 676
    invoke-static {p0, v1}, Lru/okei/timetable/alarm/AlarmScheduler;->setEnabled(Landroid/content/Context;Z)V

    .line 677
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->onAlarmsEnabled()V

    goto :goto_2

    .line 679
    :cond_7
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->updateAlarmBar()V

    .line 681
    :goto_2
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->introRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 682
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->intro:Lru/okei/timetable/IntroView;

    if-eqz v0, :cond_8

    .line 683
    invoke-virtual {v0}, Lru/okei/timetable/IntroView;->hideOverlay()V

    .line 684
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->intro:Lru/okei/timetable/IntroView;

    invoke-virtual {v0}, Lru/okei/timetable/IntroView;->iconsFinal()V

    .line 686
    :cond_8
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->subtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 687
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->subtitleText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/okei/timetable/MainActivity;->setSubtitle(Ljava/lang/String;)V

    .line 692
    :cond_9
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->schedule:Lru/okei/timetable/ui/ScheduleState;

    iget-object v0, v0, Lru/okei/timetable/ui/ScheduleState;->parsedWeek:Lru/okei/timetable/data/WeekSchedule;

    if-eqz v0, :cond_a

    .line 693
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->render()V

    .line 696
    :cond_a
    iget-boolean v0, p0, Lru/okei/timetable/MainActivity;->fadeInPending:Z

    if-eqz v0, :cond_b

    .line 697
    iput-boolean v4, p0, Lru/okei/timetable/MainActivity;->fadeInPending:Z

    const v0, 0x7f03001a

    .line 698
    invoke-virtual {p0, v0}, Lru/okei/timetable/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 700
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 701
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1a4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 704
    :cond_b
    invoke-direct {p0}, Lru/okei/timetable/MainActivity;->startTicker()V

    .line 705
    iget-object v0, p0, Lru/okei/timetable/MainActivity;->pages:Lru/okei/timetable/PagePager;

    if-eqz v0, :cond_c

    .line 706
    invoke-virtual {v0}, Lru/okei/timetable/PagePager;->resume()V

    :cond_c
    return-void
.end method
