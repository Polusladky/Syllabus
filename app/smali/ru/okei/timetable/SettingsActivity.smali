.class public Lru/okei/timetable/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/okei/timetable/SettingsActivity$Action;,
        Lru/okei/timetable/SettingsActivity$Value;
    }
.end annotation


# static fields
.field private static final BEAT_REQUEST:I = 0x29

.field private static final EASE:Landroid/animation/TimeInterpolator;

.field private static final PERMISSION_REQUEST:I = 0x2a

.field private static final REQUEST_RINGTONE:I = 0x2a

.field private static final REQUEST_SONG:I = 0x29

.field private static final SPACING:F = 0.12f

.field private static final STATE_OPEN_SECTIONS:Ljava/lang/String; = "settings_open_sections"

.field private static final STATE_SCROLL:Ljava/lang/String; = "settings_scroll_y"


# instance fields
.field private DIM:I

.field private FG:I

.field private LINE:I

.field private MUTED:I

.field private animateNext:Z

.field private builder:Lru/okei/timetable/SettingsRows;

.field private content:Landroid/widget/LinearLayout;

.field private firstSection:Z

.field private flash:Ljava/lang/String;

.field private groupCodeView:Landroid/widget/TextView;

.field private final openSections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pixel:Landroid/graphics/Typeface;

.field private pixelBold:Landroid/graphics/Typeface;

.field private restoreScroll:I

.field private restoredOpenSections:Z

.field private resumedOnce:Z

.field private retractRunning:Z

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private scrambleTo:Ljava/lang/String;

.field private sectionBody:Landroid/widget/LinearLayout;

.field private final sectionHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private settingsScroll:Landroid/widget/ScrollView;

.field private themeButton:Lru/okei/timetable/ui/ThemeToggleView;

.field private themeWaveRunning:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetFG(Lru/okei/timetable/SettingsActivity;)I
    .locals 0

    iget p0, p0, Lru/okei/timetable/SettingsActivity;->FG:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetMUTED(Lru/okei/timetable/SettingsActivity;)I
    .locals 0

    iget p0, p0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupCodeView(Lru/okei/timetable/SettingsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/SettingsActivity;->groupCodeView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetopenSections(Lru/okei/timetable/SettingsActivity;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/SettingsActivity;->openSections:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpixel(Lru/okei/timetable/SettingsActivity;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/SettingsActivity;->pixel:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpixelBold(Lru/okei/timetable/SettingsActivity;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/SettingsActivity;->pixelBold:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrestoreScroll(Lru/okei/timetable/SettingsActivity;)I
    .locals 0

    iget p0, p0, Lru/okei/timetable/SettingsActivity;->restoreScroll:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsettingsScroll(Lru/okei/timetable/SettingsActivity;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lru/okei/timetable/SettingsActivity;->settingsScroll:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputflash(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/okei/timetable/SettingsActivity;->flash:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputretractRunning(Lru/okei/timetable/SettingsActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/SettingsActivity;->retractRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrambleTo(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/okei/timetable/SettingsActivity;->scrambleTo:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputthemeWaveRunning(Lru/okei/timetable/SettingsActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lru/okei/timetable/SettingsActivity;->themeWaveRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$madd(Lru/okei/timetable/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/SettingsActivity;->add(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maskBeatPermission(Lru/okei/timetable/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->askBeatPermission()V

    return-void
.end method

.method static bridge synthetic -$$Nest$maskGroup(Lru/okei/timetable/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->askGroup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$maskGroupAction(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/okei/timetable/SettingsActivity;->askGroupAction(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuild(Lru/okei/timetable/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->build()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeGroup(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/SettingsActivity;->changeGroup(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconfirmReset(Lru/okei/timetable/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->confirmReset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mformatLead(Lru/okei/timetable/SettingsActivity;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/SettingsActivity;->formatLead(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mopenFullScreenSetting(Lru/okei/timetable/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->openFullScreenSetting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpickRingtone(Lru/okei/timetable/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->pickRingtone()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpickSong(Lru/okei/timetable/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->pickSong()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mplayThemeWave(Lru/okei/timetable/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->playThemeWave()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveChange(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/okei/timetable/SettingsActivity;->removeChange(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetEverything(Lru/okei/timetable/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->resetEverything()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresync(Lru/okei/timetable/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->resync()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscramble(Lru/okei/timetable/SettingsActivity;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/okei/timetable/SettingsActivity;->scramble(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowChangesDialog(Lru/okei/timetable/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->showChangesDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSectionSummary(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/okei/timetable/SettingsActivity;->updateSectionSummary(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 94
    invoke-static {}, Lru/okei/timetable/ui/Motion;->ease()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lru/okei/timetable/SettingsActivity;->EASE:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lru/okei/timetable/SettingsActivity;->FG:I

    const v0, -0x5f5f60

    .line 35
    iput v0, p0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    const v0, -0x919192

    .line 36
    iput v0, p0, Lru/okei/timetable/SettingsActivity;->DIM:I

    const v0, -0xd9d9da

    .line 37
    iput v0, p0, Lru/okei/timetable/SettingsActivity;->LINE:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/SettingsActivity;->rows:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/SettingsActivity;->openSections:Ljava/util/Set;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lru/okei/timetable/SettingsActivity;->firstSection:Z

    .line 56
    iput-boolean v0, p0, Lru/okei/timetable/SettingsActivity;->animateNext:Z

    .line 999
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/okei/timetable/SettingsActivity;->sectionHeaders:Ljava/util/Map;

    return-void
.end method

.method private add(Landroid/view/View;)V
    .locals 1

    .line 1010
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->sectionBody:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1011
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1013
    :cond_0
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1015
    :goto_0
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAction(Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Action;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->builder:Lru/okei/timetable/SettingsRows;

    invoke-virtual {v0, p1, p2}, Lru/okei/timetable/SettingsRows;->action(Ljava/lang/String;Lru/okei/timetable/SettingsRows$Action;)V

    return-void
.end method

.method private addChoice(Ljava/lang/String;Ljava/lang/String;ZLru/okei/timetable/SettingsActivity$Action;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->builder:Lru/okei/timetable/SettingsRows;

    invoke-virtual {v0, p1, p2, p3, p4}, Lru/okei/timetable/SettingsRows;->choice(Ljava/lang/String;Ljava/lang/String;ZLru/okei/timetable/SettingsRows$Action;)V

    return-void
.end method

.method private addGroup(Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->builder:Lru/okei/timetable/SettingsRows;

    invoke-virtual {v0, p1}, Lru/okei/timetable/SettingsRows;->group(Ljava/lang/String;)V

    return-void
.end method

.method private addNote(Ljava/lang/String;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->builder:Lru/okei/timetable/SettingsRows;

    invoke-virtual {v0, p1}, Lru/okei/timetable/SettingsRows;->note(Ljava/lang/String;)V

    return-void
.end method

.method private addSection(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1104
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1105
    invoke-direct {v0, v3}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41b00000    # 22.0f

    .line 1106
    invoke-direct {v0, v4}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v4, 0x41000000    # 8.0f

    .line 1107
    invoke-direct {v0, v4}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v6

    neg-int v6, v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1108
    invoke-direct {v0, v4}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v6

    neg-int v6, v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1109
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1110
    iget v7, v0, Lru/okei/timetable/SettingsActivity;->LINE:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1111
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1112
    iget-object v2, v0, Lru/okei/timetable/SettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1114
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 1115
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1117
    iget v7, v0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    const-string v8, "\u25b8"

    const/high16 v9, 0x41400000    # 12.0f

    invoke-direct {v0, v8, v9, v7, v6}, Lru/okei/timetable/SettingsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    const/high16 v10, 0x41200000    # 10.0f

    .line 1118
    invoke-direct {v0, v10}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-direct {v0, v11}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1120
    iget v10, v0, Lru/okei/timetable/SettingsActivity;->FG:I

    invoke-direct {v0, v1, v9, v10, v6}, Lru/okei/timetable/SettingsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v10

    .line 1121
    iget-object v11, v0, Lru/okei/timetable/SettingsActivity;->sectionHeaders:Ljava/util/Map;

    invoke-interface {v11, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    invoke-direct {v0, v10, v1}, Lru/okei/timetable/SettingsActivity;->paintHeader(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1124
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1125
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v13, 0x10

    .line 1126
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v13, 0x41800000    # 16.0f

    .line 1127
    invoke-direct {v0, v13}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v13

    invoke-direct {v0, v9}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v14

    invoke-virtual {v11, v12, v13, v12, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1128
    invoke-direct/range {p0 .. p1}, Lru/okei/timetable/SettingsActivity;->sectionArt(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_0

    .line 1131
    new-instance v14, Lru/okei/timetable/ui/PixelArtView;

    invoke-direct {v14, v0}, Lru/okei/timetable/ui/PixelArtView;-><init>(Landroid/content/Context;)V

    .line 1132
    iget v15, v0, Lru/okei/timetable/SettingsActivity;->FG:I

    invoke-virtual {v14, v13, v15}, Lru/okei/timetable/ui/PixelArtView;->setArt(II)V

    .line 1134
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x41d00000    # 26.0f

    invoke-direct {v0, v15}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v6

    invoke-direct {v0, v15}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v15

    invoke-direct {v13, v6, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1135
    invoke-direct {v0, v9}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v6

    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1136
    invoke-virtual {v11, v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1138
    :cond_0
    new-instance v14, Lru/okei/timetable/SectionIconView;

    invoke-direct {v14, v0}, Lru/okei/timetable/SectionIconView;-><init>(Landroid/content/Context;)V

    .line 1139
    invoke-static/range {p1 .. p1}, Lru/okei/timetable/SettingsActivity;->sectionIconKind(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v14, v6}, Lru/okei/timetable/SectionIconView;->setKind(I)V

    .line 1140
    iget v6, v0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    invoke-virtual {v14, v6}, Lru/okei/timetable/SectionIconView;->setColor(I)V

    .line 1142
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x41900000    # 18.0f

    invoke-direct {v0, v9}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v13

    invoke-direct {v0, v9}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v9

    invoke-direct {v6, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x41100000    # 9.0f

    .line 1143
    invoke-direct {v0, v9}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1144
    invoke-virtual {v11, v14, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    :goto_0
    iget-boolean v6, v0, Lru/okei/timetable/SettingsActivity;->animateNext:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    .line 1148
    invoke-virtual {v14, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1149
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v13, 0x12c

    invoke-virtual {v6, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v9, Lru/okei/timetable/SettingsActivity;->EASE:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 1151
    :cond_1
    invoke-virtual {v14, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1153
    :goto_1
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v6, v12, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1155
    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1156
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1158
    iget-object v6, v0, Lru/okei/timetable/SettingsActivity;->openSections:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, v0, Lru/okei/timetable/SettingsActivity;->firstSection:Z

    if-eqz v6, :cond_2

    iget-object v6, v0, Lru/okei/timetable/SettingsActivity;->openSections:Ljava/util/Set;

    .line 1159
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, v0, Lru/okei/timetable/SettingsActivity;->restoredOpenSections:Z

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v6, 0x1

    .line 1160
    :goto_3
    iput-boolean v12, v0, Lru/okei/timetable/SettingsActivity;->firstSection:Z

    if-eqz v6, :cond_4

    .line 1162
    iget-object v9, v0, Lru/okei/timetable/SettingsActivity;->openSections:Ljava/util/Set;

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    const/16 v12, 0x8

    .line 1164
    :goto_4
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1165
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    if-eqz v6, :cond_6

    const-string v8, "\u25be"

    .line 1166
    :cond_6
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    new-instance v6, Lru/okei/timetable/SettingsActivity$54;

    invoke-direct {v6, v0, v1, v7, v2}, Lru/okei/timetable/SettingsActivity$54;-><init>(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1184
    iget-object v1, v0, Lru/okei/timetable/SettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1185
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1186
    iget v6, v0, Lru/okei/timetable/SettingsActivity;->LINE:I

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1187
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1188
    invoke-direct {v0, v3}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v3

    invoke-direct {v6, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1189
    invoke-direct {v0, v4}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v3

    neg-int v3, v3

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1190
    invoke-direct {v0, v4}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v3

    neg-int v3, v3

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1191
    iget-object v3, v0, Lru/okei/timetable/SettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1192
    iget-object v1, v0, Lru/okei/timetable/SettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1193
    iput-object v2, v0, Lru/okei/timetable/SettingsActivity;->sectionBody:Landroid/widget/LinearLayout;

    return-void
.end method

.method private addStatus(Ljava/lang/String;I)V
    .locals 2

    const/high16 v0, 0x41300000    # 11.0f

    const/4 v1, 0x1

    .line 1391
    invoke-direct {p0, p1, v0, p2, v1}, Lru/okei/timetable/SettingsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    const/high16 p2, 0x41000000    # 8.0f

    .line 1392
    invoke-direct {p0, p2}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result p2

    const/high16 v0, 0x40800000    # 4.0f

    invoke-direct {p0, v0}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1393
    invoke-direct {p0, p1}, Lru/okei/timetable/SettingsActivity;->add(Landroid/view/View;)V

    return-void
.end method

.method private addStepper(Ljava/lang/String;Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Value;Lru/okei/timetable/SettingsActivity$Action;Lru/okei/timetable/SettingsActivity$Action;)V
    .locals 6

    .line 85
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->builder:Lru/okei/timetable/SettingsRows;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lru/okei/timetable/SettingsRows;->stepper(Ljava/lang/String;Ljava/lang/String;Lru/okei/timetable/SettingsRows$Value;Lru/okei/timetable/SettingsRows$Action;Lru/okei/timetable/SettingsRows$Action;)V

    return-void
.end method

.method private addValue(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 69
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->builder:Lru/okei/timetable/SettingsRows;

    invoke-virtual {v0, p1, p2, p3}, Lru/okei/timetable/SettingsRows;->value(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private applyThemeInPlace()V
    .locals 4

    .line 419
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->toggle(Landroid/content/Context;)Z

    .line 420
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lru/okei/timetable/SettingsActivity;->FG:I

    .line 421
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->muted(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    .line 422
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->dim(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lru/okei/timetable/SettingsActivity;->DIM:I

    .line 423
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lru/okei/timetable/SettingsActivity;->LINE:I

    .line 424
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->apply(Landroid/app/Activity;)V

    .line 425
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->themeButton:Lru/okei/timetable/ui/ThemeToggleView;

    if-eqz v0, :cond_0

    .line 426
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->isLight(Landroid/content/Context;)Z

    move-result v1

    iget v2, p0, Lru/okei/timetable/SettingsActivity;->FG:I

    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->bg(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lru/okei/timetable/ui/ThemeToggleView;->setState(ZII)V

    .line 427
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->themeButton:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-virtual {v0}, Lru/okei/timetable/ui/ThemeToggleView;->setInstant()V

    .line 429
    :cond_0
    invoke-static {p0}, Lru/okei/timetable/ScheduleWidget;->refresh(Landroid/content/Context;)V

    .line 430
    invoke-static {p0}, Lru/okei/timetable/ScheduleWidgetMini;->refresh(Landroid/content/Context;)V

    .line 432
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->build()V

    const v0, 0x1020002

    .line 433
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lru/okei/timetable/ui/Theme;->tint(Landroid/view/View;)V

    return-void
.end method

.method private askBeatPermission()V
    .locals 3

    .line 1022
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06016d

    .line 1023
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06016c

    .line 1024
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/SettingsActivity$51;

    invoke-direct {v1, p0}, Lru/okei/timetable/SettingsActivity$51;-><init>(Lru/okei/timetable/SettingsActivity;)V

    const v2, 0x7f060168

    .line 1025
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 1032
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1033
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private askGroup()V
    .locals 4

    const v0, 0x7f060105

    .line 902
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f06013e

    .line 903
    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lru/okei/timetable/data/Groups;->current(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lru/okei/timetable/SettingsActivity$48;

    invoke-direct {v3, p0}, Lru/okei/timetable/SettingsActivity$48;-><init>(Lru/okei/timetable/SettingsActivity;)V

    .line 902
    invoke-static {p0, v0, v1, v2, v3}, Lru/okei/timetable/ui/PixelDialog;->prompt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/okei/timetable/ui/PixelDialog$TextListener;)V

    return-void
.end method

.method private askGroupAction(Ljava/lang/String;Z)V
    .locals 3

    const v0, 0x7f060186

    .line 878
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060188

    .line 879
    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 880
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object p2

    .line 881
    :goto_0
    invoke-static {p1}, Lru/okei/timetable/data/Groups;->title(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lru/okei/timetable/SettingsActivity$47;

    invoke-direct {v2, p0, p2, v0, p1}, Lru/okei/timetable/SettingsActivity$47;-><init>(Lru/okei/timetable/SettingsActivity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1, p2, v2}, Lru/okei/timetable/ui/PixelDialog;->show(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private build()V
    .locals 13

    .line 465
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 466
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 467
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->sectionHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 468
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->settingsScroll:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    :goto_0
    const v2, 0x7f060104

    .line 470
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addSection(Ljava/lang/String;)V

    const v2, 0x7f060105

    .line 471
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addGroup(Ljava/lang/String;)V

    .line 472
    invoke-static {p0}, Lru/okei/timetable/data/Groups;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41700000    # 15.0f

    iget v4, p0, Lru/okei/timetable/SettingsActivity;->FG:I

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lru/okei/timetable/SettingsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lru/okei/timetable/SettingsActivity;->groupCodeView:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    .line 473
    invoke-direct {p0, v3}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-direct {p0, v4}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v4

    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 474
    iget-object v2, p0, Lru/okei/timetable/SettingsActivity;->groupCodeView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->add(Landroid/view/View;)V

    .line 475
    invoke-static {p0}, Lru/okei/timetable/data/Groups;->known(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 476
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    .line 477
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 478
    invoke-static {p0}, Lru/okei/timetable/data/Groups;->current(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 479
    invoke-static {v4}, Lru/okei/timetable/data/Groups;->title(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_1

    const v8, 0x7f060185

    .line 480
    invoke-virtual {p0, v8}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_1
    const v8, 0x7f060189

    .line 481
    invoke-virtual {p0, v8}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    new-instance v9, Lru/okei/timetable/SettingsActivity$15;

    invoke-direct {v9, p0, v4, v6}, Lru/okei/timetable/SettingsActivity$15;-><init>(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;Z)V

    .line 479
    invoke-direct {p0, v7, v8, v6, v9}, Lru/okei/timetable/SettingsActivity;->addChoice(Ljava/lang/String;Ljava/lang/String;ZLru/okei/timetable/SettingsActivity$Action;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const v2, 0x7f060184

    .line 489
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lru/okei/timetable/SettingsActivity$16;

    invoke-direct {v3, p0}, Lru/okei/timetable/SettingsActivity$16;-><init>(Lru/okei/timetable/SettingsActivity;)V

    invoke-direct {p0, v2, v3}, Lru/okei/timetable/SettingsActivity;->addAction(Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Action;)V

    const v2, 0x7f060108

    .line 495
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addNote(Ljava/lang/String;)V

    const v2, 0x7f0601a0

    .line 497
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addSection(Ljava/lang/String;)V

    const v2, 0x7f06010b

    .line 498
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addGroup(Ljava/lang/String;)V

    const v2, 0x7f06018e

    .line 499
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v2, 0x7f06018f

    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lru/okei/timetable/SettingsActivity$17;

    invoke-direct {v9, p0}, Lru/okei/timetable/SettingsActivity$17;-><init>(Lru/okei/timetable/SettingsActivity;)V

    new-instance v10, Lru/okei/timetable/SettingsActivity$18;

    invoke-direct {v10, p0}, Lru/okei/timetable/SettingsActivity$18;-><init>(Lru/okei/timetable/SettingsActivity;)V

    new-instance v11, Lru/okei/timetable/SettingsActivity$19;

    invoke-direct {v11, p0}, Lru/okei/timetable/SettingsActivity$19;-><init>(Lru/okei/timetable/SettingsActivity;)V

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lru/okei/timetable/SettingsActivity;->addStepper(Ljava/lang/String;Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Value;Lru/okei/timetable/SettingsActivity$Action;Lru/okei/timetable/SettingsActivity$Action;)V

    const v2, 0x7f060179

    .line 519
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v2, 0x7f06017a

    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lru/okei/timetable/SettingsActivity$20;

    invoke-direct {v9, p0}, Lru/okei/timetable/SettingsActivity$20;-><init>(Lru/okei/timetable/SettingsActivity;)V

    new-instance v10, Lru/okei/timetable/SettingsActivity$21;

    invoke-direct {v10, p0}, Lru/okei/timetable/SettingsActivity$21;-><init>(Lru/okei/timetable/SettingsActivity;)V

    new-instance v11, Lru/okei/timetable/SettingsActivity$22;

    invoke-direct {v11, p0}, Lru/okei/timetable/SettingsActivity$22;-><init>(Lru/okei/timetable/SettingsActivity;)V

    invoke-direct/range {v6 .. v11}, Lru/okei/timetable/SettingsActivity;->addStepper(Ljava/lang/String;Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Value;Lru/okei/timetable/SettingsActivity$Action;Lru/okei/timetable/SettingsActivity$Action;)V

    const v2, 0x7f0601ad

    .line 538
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v2, 0x7f0601ae

    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lru/okei/timetable/SettingsActivity$23;

    invoke-direct {v9, p0}, Lru/okei/timetable/SettingsActivity$23;-><init>(Lru/okei/timetable/SettingsActivity;)V

    new-instance v10, Lru/okei/timetable/SettingsActivity$24;

    invoke-direct {v10, p0}, Lru/okei/timetable/SettingsActivity$24;-><init>(Lru/okei/timetable/SettingsActivity;)V

    new-instance v11, Lru/okei/timetable/SettingsActivity$25;

    invoke-direct {v11, p0}, Lru/okei/timetable/SettingsActivity$25;-><init>(Lru/okei/timetable/SettingsActivity;)V

    invoke-direct/range {v6 .. v11}, Lru/okei/timetable/SettingsActivity;->addStepper(Ljava/lang/String;Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Value;Lru/okei/timetable/SettingsActivity$Action;Lru/okei/timetable/SettingsActivity$Action;)V

    const v2, 0x7f06010c

    .line 558
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addGroup(Ljava/lang/String;)V

    .line 559
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->reminders(Landroid/content/Context;)Z

    move-result v2

    const v3, 0x7f06010d

    .line 560
    invoke-virtual {p0, v3}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f06010e

    const v6, 0x7f06010f

    if-eqz v2, :cond_3

    invoke-virtual {p0, v4}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v6}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    if-eqz v2, :cond_4

    iget v8, p0, Lru/okei/timetable/SettingsActivity;->FG:I

    goto :goto_4

    :cond_4
    iget v8, p0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    :goto_4
    invoke-direct {p0, v3, v7, v8}, Lru/okei/timetable/SettingsActivity;->addValue(Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v2, :cond_5

    const v3, 0x7f060110

    goto :goto_5

    :cond_5
    const v3, 0x7f060111

    .line 561
    :goto_5
    invoke-virtual {p0, v3}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lru/okei/timetable/SettingsActivity$26;

    invoke-direct {v7, p0, v2}, Lru/okei/timetable/SettingsActivity$26;-><init>(Lru/okei/timetable/SettingsActivity;Z)V

    invoke-direct {p0, v3, v7}, Lru/okei/timetable/SettingsActivity;->addAction(Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Action;)V

    if-eqz v2, :cond_6

    const v2, 0x7f060112

    .line 570
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v2, 0x7f060113

    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lru/okei/timetable/SettingsActivity$27;

    invoke-direct {v10, p0}, Lru/okei/timetable/SettingsActivity$27;-><init>(Lru/okei/timetable/SettingsActivity;)V

    new-instance v11, Lru/okei/timetable/SettingsActivity$28;

    invoke-direct {v11, p0}, Lru/okei/timetable/SettingsActivity$28;-><init>(Lru/okei/timetable/SettingsActivity;)V

    new-instance v12, Lru/okei/timetable/SettingsActivity$29;

    invoke-direct {v12, p0}, Lru/okei/timetable/SettingsActivity$29;-><init>(Lru/okei/timetable/SettingsActivity;)V

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lru/okei/timetable/SettingsActivity;->addStepper(Ljava/lang/String;Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Value;Lru/okei/timetable/SettingsActivity$Action;Lru/okei/timetable/SettingsActivity$Action;)V

    goto :goto_6

    :cond_6
    const v2, 0x7f060114

    .line 594
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addNote(Ljava/lang/String;)V

    :goto_6
    const v2, 0x7f060119

    .line 597
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addSection(Ljava/lang/String;)V

    const v2, 0x7f06011a

    .line 598
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addGroup(Ljava/lang/String;)V

    .line 599
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->songUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    const v3, 0x7f06011b

    .line 600
    invoke-virtual {p0, v3}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_8

    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->songTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lru/okei/timetable/SettingsActivity;->shorten(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_8
    const v7, 0x7f06011c

    invoke-virtual {p0, v7}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_8
    if-eqz v2, :cond_9

    .line 601
    iget v8, p0, Lru/okei/timetable/SettingsActivity;->FG:I

    goto :goto_9

    :cond_9
    iget v8, p0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    .line 600
    :goto_9
    invoke-direct {p0, v3, v7, v8}, Lru/okei/timetable/SettingsActivity;->addValue(Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v2, :cond_a

    const v3, 0x7f060191

    .line 602
    invoke-virtual {p0, v3}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_a
    const v3, 0x7f060193

    .line 603
    invoke-virtual {p0, v3}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_a
    new-instance v7, Lru/okei/timetable/SettingsActivity$30;

    invoke-direct {v7, p0}, Lru/okei/timetable/SettingsActivity$30;-><init>(Lru/okei/timetable/SettingsActivity;)V

    .line 602
    invoke-direct {p0, v3, v7}, Lru/okei/timetable/SettingsActivity;->addAction(Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Action;)V

    if-eqz v2, :cond_b

    const v2, 0x7f060195

    .line 610
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lru/okei/timetable/SettingsActivity$31;

    invoke-direct {v3, p0}, Lru/okei/timetable/SettingsActivity$31;-><init>(Lru/okei/timetable/SettingsActivity;)V

    invoke-direct {p0, v2, v3}, Lru/okei/timetable/SettingsActivity;->addAction(Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Action;)V

    :cond_b
    const v2, 0x7f060192

    .line 618
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addNote(Ljava/lang/String;)V

    const v2, 0x7f06011d

    .line 620
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lru/okei/timetable/SettingsActivity$32;

    invoke-direct {v3, p0}, Lru/okei/timetable/SettingsActivity$32;-><init>(Lru/okei/timetable/SettingsActivity;)V

    invoke-direct {p0, v2, v3}, Lru/okei/timetable/SettingsActivity;->addAction(Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Action;)V

    const v2, 0x7f06011e

    .line 627
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addGroup(Ljava/lang/String;)V

    .line 628
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->beatByMusic(Landroid/content/Context;)Z

    move-result v2

    .line 629
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->vibration(Landroid/content/Context;)I

    move-result v3

    const v7, 0x7f06011f

    .line 630
    invoke-virtual {p0, v7}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_c

    const-string v8, "\u0421\u0418\u041d\u0425\u0420\u041e\u041d\u0418\u0417\u0410\u0426\u0418\u042f \u0421 \u041c\u0423\u0417\u042b\u041a\u041e\u0419"

    goto :goto_b

    .line 632
    :cond_c
    invoke-direct {p0, v3}, Lru/okei/timetable/SettingsActivity;->vibrationName(I)Ljava/lang/String;

    move-result-object v8

    :goto_b
    if-eqz v2, :cond_d

    .line 633
    :goto_c
    iget v9, p0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    goto :goto_d

    :cond_d
    if-nez v3, :cond_e

    goto :goto_c

    :cond_e
    iget v9, p0, Lru/okei/timetable/SettingsActivity;->FG:I

    .line 630
    :goto_d
    invoke-direct {p0, v7, v8, v9}, Lru/okei/timetable/SettingsActivity;->addValue(Ljava/lang/String;Ljava/lang/String;I)V

    const v7, 0x7f060120

    .line 634
    invoke-virtual {p0, v7}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lru/okei/timetable/SettingsActivity$33;

    invoke-direct {v8, p0, v2, v3}, Lru/okei/timetable/SettingsActivity$33;-><init>(Lru/okei/timetable/SettingsActivity;ZI)V

    invoke-direct {p0, v7, v8}, Lru/okei/timetable/SettingsActivity;->addAction(Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Action;)V

    const v2, 0x7f060121

    .line 646
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addGroup(Ljava/lang/String;)V

    .line 647
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->volumeRamp(Landroid/content/Context;)Z

    move-result v2

    const v3, 0x7f060122

    .line 648
    invoke-virtual {p0, v3}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_f

    const v7, 0x7f060123

    goto :goto_e

    :cond_f
    const v7, 0x7f060124

    :goto_e
    invoke-virtual {p0, v7}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    invoke-direct {p0, v3, v7, v8}, Lru/okei/timetable/SettingsActivity;->addValue(Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v2, :cond_10

    const v3, 0x7f060125

    goto :goto_f

    :cond_10
    const v3, 0x7f060126

    .line 649
    :goto_f
    invoke-virtual {p0, v3}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lru/okei/timetable/SettingsActivity$34;

    invoke-direct {v7, p0, v2}, Lru/okei/timetable/SettingsActivity$34;-><init>(Lru/okei/timetable/SettingsActivity;Z)V

    invoke-direct {p0, v3, v7}, Lru/okei/timetable/SettingsActivity;->addAction(Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Action;)V

    const v2, 0x7f060127

    .line 657
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addGroup(Ljava/lang/String;)V

    .line 658
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->beatByMusic(Landroid/content/Context;)Z

    move-result v2

    const v3, 0x7f060128

    .line 659
    invoke-virtual {p0, v3}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_11

    invoke-virtual {p0, v4}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_10

    :cond_11
    invoke-virtual {p0, v6}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_10
    iget v8, p0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    invoke-direct {p0, v3, v7, v8}, Lru/okei/timetable/SettingsActivity;->addValue(Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v2, :cond_12

    const v3, 0x7f06016a

    goto :goto_11

    :cond_12
    const v3, 0x7f06016b

    .line 660
    :goto_11
    invoke-virtual {p0, v3}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lru/okei/timetable/SettingsActivity$35;

    invoke-direct {v7, p0, v2}, Lru/okei/timetable/SettingsActivity$35;-><init>(Lru/okei/timetable/SettingsActivity;Z)V

    invoke-direct {p0, v3, v7}, Lru/okei/timetable/SettingsActivity;->addAction(Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Action;)V

    const v2, 0x7f0601a3

    .line 674
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addSection(Ljava/lang/String;)V

    const v2, 0x7f060129

    .line 675
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addGroup(Ljava/lang/String;)V

    .line 676
    invoke-static {p0}, Lru/okei/timetable/Admin;->isActive(Landroid/content/Context;)Z

    move-result v2

    const v3, 0x7f06012a

    .line 677
    invoke-virtual {p0, v3}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_13

    invoke-virtual {p0, v4}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_13
    invoke-virtual {p0, v6}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_12
    if-eqz v2, :cond_14

    iget v6, p0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    goto :goto_13

    :cond_14
    iget v6, p0, Lru/okei/timetable/SettingsActivity;->FG:I

    :goto_13
    invoke-direct {p0, v3, v4, v6}, Lru/okei/timetable/SettingsActivity;->addValue(Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v2, :cond_15

    const v3, 0x7f06015f

    goto :goto_14

    :cond_15
    const v3, 0x7f06015e

    .line 678
    :goto_14
    invoke-virtual {p0, v3}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lru/okei/timetable/SettingsActivity;->addNote(Ljava/lang/String;)V

    if-eqz v2, :cond_16

    const v2, 0x7f06015c

    .line 681
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lru/okei/timetable/SettingsActivity$36;

    invoke-direct {v3, p0}, Lru/okei/timetable/SettingsActivity$36;-><init>(Lru/okei/timetable/SettingsActivity;)V

    invoke-direct {p0, v2, v3}, Lru/okei/timetable/SettingsActivity;->addAction(Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Action;)V

    goto :goto_15

    :cond_16
    const v2, 0x7f06015d

    .line 689
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lru/okei/timetable/SettingsActivity$37;

    invoke-direct {v3, p0}, Lru/okei/timetable/SettingsActivity$37;-><init>(Lru/okei/timetable/SettingsActivity;)V

    invoke-direct {p0, v2, v3}, Lru/okei/timetable/SettingsActivity;->addAction(Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Action;)V

    .line 697
    :goto_15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_1a

    const-string v2, "notification"

    .line 699
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-eqz v2, :cond_17

    .line 700
    invoke-virtual {v2}, Landroid/app/NotificationManager;->canUseFullScreenIntent()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    goto :goto_16

    :cond_17
    const/4 v2, 0x0

    :goto_16
    const v3, 0x7f06012b

    .line 701
    invoke-virtual {p0, v3}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lru/okei/timetable/SettingsActivity;->addGroup(Ljava/lang/String;)V

    const v3, 0x7f06012c

    .line 702
    invoke-virtual {p0, v3}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_18

    const v4, 0x7f06012d

    goto :goto_17

    :cond_18
    const v4, 0x7f06012e

    :goto_17
    invoke-virtual {p0, v4}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_19

    iget v6, p0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    goto :goto_18

    :cond_19
    iget v6, p0, Lru/okei/timetable/SettingsActivity;->FG:I

    :goto_18
    invoke-direct {p0, v3, v4, v6}, Lru/okei/timetable/SettingsActivity;->addValue(Ljava/lang/String;Ljava/lang/String;I)V

    if-nez v2, :cond_1a

    const v2, 0x7f060181

    .line 704
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addNote(Ljava/lang/String;)V

    const v2, 0x7f060180

    .line 705
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lru/okei/timetable/SettingsActivity$38;

    invoke-direct {v3, p0}, Lru/okei/timetable/SettingsActivity$38;-><init>(Lru/okei/timetable/SettingsActivity;)V

    invoke-direct {p0, v2, v3}, Lru/okei/timetable/SettingsActivity;->addAction(Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Action;)V

    :cond_1a
    const v2, 0x7f0601a4

    .line 714
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addSection(Ljava/lang/String;)V

    const v2, 0x7f0601a7

    .line 715
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addGroup(Ljava/lang/String;)V

    const v2, 0x7f0601a8

    .line 716
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 717
    invoke-static {p0}, Lru/okei/timetable/SiteChangesSync;->lastAt(Landroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-nez v8, :cond_1b

    const v3, 0x7f0601a9

    invoke-virtual {p0, v3}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    .line 718
    :cond_1b
    invoke-static {p0}, Lru/okei/timetable/SiteChangesSync;->lastAt(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lru/okei/timetable/data/Formats;->time(J)Ljava/lang/String;

    move-result-object v3

    :goto_19
    iget v4, p0, Lru/okei/timetable/SettingsActivity;->FG:I

    .line 716
    invoke-direct {p0, v2, v3, v4}, Lru/okei/timetable/SettingsActivity;->addValue(Ljava/lang/String;Ljava/lang/String;I)V

    const v2, 0x7f0601ab

    .line 719
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addNote(Ljava/lang/String;)V

    const v2, 0x7f060136

    .line 721
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addGroup(Ljava/lang/String;)V

    .line 722
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->currentWeek()Lru/okei/timetable/data/WeekSchedule;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    move-object v2, v3

    goto :goto_1a

    .line 723
    :cond_1c
    iget-object v2, v2, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-static {p0, v2}, Lru/okei/timetable/data/ChangeStore;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_1a
    if-eqz v2, :cond_1d

    .line 724
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_1b

    :cond_1d
    const/4 v5, 0x0

    :goto_1b
    if-eqz v5, :cond_1e

    const v4, 0x7f060173

    .line 726
    invoke-virtual {p0, v4}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lru/okei/timetable/SettingsActivity;->FG:I

    invoke-direct {p0, v4, v2, v5}, Lru/okei/timetable/SettingsActivity;->addValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 727
    iget-object v2, p0, Lru/okei/timetable/SettingsActivity;->builder:Lru/okei/timetable/SettingsRows;

    const v4, 0x7f0601a5

    invoke-virtual {p0, v4}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lru/okei/timetable/SettingsActivity$39;

    invoke-direct {v5, p0}, Lru/okei/timetable/SettingsActivity$39;-><init>(Lru/okei/timetable/SettingsActivity;)V

    const v6, 0x7f060176

    .line 732
    invoke-virtual {p0, v6}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lru/okei/timetable/SettingsActivity$40;

    invoke-direct {v7, p0}, Lru/okei/timetable/SettingsActivity$40;-><init>(Lru/okei/timetable/SettingsActivity;)V

    .line 727
    invoke-virtual {v2, v4, v5, v6, v7}, Lru/okei/timetable/SettingsRows;->actionsRow(Ljava/lang/String;Lru/okei/timetable/SettingsRows$Action;Ljava/lang/String;Lru/okei/timetable/SettingsRows$Action;)V

    goto :goto_1c

    :cond_1e
    const v2, 0x7f060197

    .line 741
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addNote(Ljava/lang/String;)V

    .line 744
    :goto_1c
    iget-object v2, p0, Lru/okei/timetable/SettingsActivity;->flash:Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 745
    iget v4, p0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    invoke-direct {p0, v2, v4}, Lru/okei/timetable/SettingsActivity;->addStatus(Ljava/lang/String;I)V

    .line 746
    iput-object v3, p0, Lru/okei/timetable/SettingsActivity;->flash:Ljava/lang/String;

    :cond_1f
    const v2, 0x7f0601a1

    .line 749
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addSection(Ljava/lang/String;)V

    const v2, 0x7f06013a

    .line 750
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addGroup(Ljava/lang/String;)V

    const v2, 0x7f0600d0

    .line 751
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lru/okei/timetable/SettingsActivity$41;

    invoke-direct {v4, p0}, Lru/okei/timetable/SettingsActivity$41;-><init>(Lru/okei/timetable/SettingsActivity;)V

    invoke-direct {p0, v2, v4}, Lru/okei/timetable/SettingsActivity;->addAction(Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Action;)V

    const v2, 0x7f06006e

    .line 758
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lru/okei/timetable/SettingsActivity$42;

    invoke-direct {v4, p0}, Lru/okei/timetable/SettingsActivity$42;-><init>(Lru/okei/timetable/SettingsActivity;)V

    invoke-direct {p0, v2, v4}, Lru/okei/timetable/SettingsActivity;->addAction(Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Action;)V

    const v2, 0x7f06017b

    .line 764
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addNote(Ljava/lang/String;)V

    const v2, 0x7f06013b

    .line 766
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addGroup(Ljava/lang/String;)V

    const v2, 0x7f06013c

    .line 767
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lru/okei/timetable/SettingsActivity$43;

    invoke-direct {v4, p0}, Lru/okei/timetable/SettingsActivity$43;-><init>(Lru/okei/timetable/SettingsActivity;)V

    invoke-direct {p0, v2, v4}, Lru/okei/timetable/SettingsActivity;->addAction(Ljava/lang/String;Lru/okei/timetable/SettingsActivity$Action;)V

    const-string v2, "\u0412\u0415\u0420\u041d\u0401\u0422 \u0412\u0420\u0415\u041c\u042f \u041f\u041e\u0414\u042a\u0401\u041c\u0410, \u0417\u0412\u0423\u041a, \u0412\u0418\u0411\u0420\u0410\u0426\u0418\u042e, \u0422\u0415\u041c\u0423 \u0418 \u0423\u0412\u0415\u0414\u041e\u041c\u041b\u0415\u041d\u0418\u042f. \u0413\u0420\u0423\u041f\u041f\u0410 \u0418 \u0420\u0410\u0421\u041f\u0418\u0421\u0410\u041d\u0418\u0415 \u041e\u0421\u0422\u0410\u041d\u0423\u0422\u0421\u042f"

    .line 773
    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->addNote(Ljava/lang/String;)V

    invoke-static {p0}, Lru/okei/timetable/fix/SettingsFooter;->add(Landroid/app/Activity;)V


    .line 775
    iget-boolean v2, p0, Lru/okei/timetable/SettingsActivity;->animateNext:Z

    if-eqz v2, :cond_20

    .line 776
    iput-boolean v1, p0, Lru/okei/timetable/SettingsActivity;->animateNext:Z

    .line 777
    :goto_1d
    iget-object v2, p0, Lru/okei/timetable/SettingsActivity;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 778
    iget-object v2, p0, Lru/okei/timetable/SettingsActivity;->rows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x0

    .line 779
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    const/high16 v5, 0x41400000    # 12.0f

    .line 780
    invoke-direct {p0, v5}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 781
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 782
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 783
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v4, v1

    const-wide/16 v6, 0x2d

    mul-long v4, v4, v6

    const-wide/16 v6, 0x28

    add-long/2addr v4, v6

    .line 784
    invoke-static {p0, v4, v5}, Lru/okei/timetable/ui/Motion;->delay(Landroid/content/Context;J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x12c

    .line 785
    invoke-static {p0, v4, v5}, Lru/okei/timetable/ui/Motion;->duration(Landroid/content/Context;J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v4, Lru/okei/timetable/SettingsActivity;->EASE:Landroid/animation/TimeInterpolator;

    .line 786
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 787
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 791
    :cond_20
    iget-object v1, p0, Lru/okei/timetable/SettingsActivity;->scrambleTo:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v2, p0, Lru/okei/timetable/SettingsActivity;->groupCodeView:Landroid/widget/TextView;

    if-eqz v2, :cond_21

    .line 794
    iput-object v3, p0, Lru/okei/timetable/SettingsActivity;->scrambleTo:Ljava/lang/String;

    .line 795
    new-instance v3, Lru/okei/timetable/SettingsActivity$44;

    invoke-direct {v3, p0, v2, v1}, Lru/okei/timetable/SettingsActivity$44;-><init>(Lru/okei/timetable/SettingsActivity;Landroid/widget/TextView;Ljava/lang/String;)V

    const-wide/16 v4, 0x8c

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_21
    if-lez v0, :cond_22

    .line 803
    iget-object v1, p0, Lru/okei/timetable/SettingsActivity;->settingsScroll:Landroid/widget/ScrollView;

    if-eqz v1, :cond_22

    .line 804
    new-instance v2, Lru/okei/timetable/SettingsActivity$45;

    invoke-direct {v2, p0, v0}, Lru/okei/timetable/SettingsActivity$45;-><init>(Lru/okei/timetable/SettingsActivity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_22
    return-void
.end method

.method private captureScreen(Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 403
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 407
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 409
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    const-string v1, "SettingsActivity"

    .line 412
    invoke-static {v1, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private changeGroup(Ljava/lang/String;)V
    .locals 3

    .line 913
    invoke-static {p1}, Lru/okei/timetable/data/Groups;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 914
    invoke-static {p1}, Lru/okei/timetable/data/Groups;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f060140

    .line 915
    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/okei/timetable/SettingsActivity;->flash:Ljava/lang/String;

    .line 916
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->build()V

    return-void

    :cond_0
    const v0, 0x7f060141

    .line 919
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lru/okei/timetable/data/Groups;->title(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2026"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/SettingsActivity;->flash:Ljava/lang/String;

    .line 920
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->build()V

    .line 921
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lru/okei/timetable/SettingsActivity$49;

    invoke-direct {v1, p0, p1}, Lru/okei/timetable/SettingsActivity$49;-><init>(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 959
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private confirmReset()V
    .locals 4

    .line 963
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06013c

    .line 964
    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060145

    .line 965
    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060146

    .line 966
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 965
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060147

    .line 967
    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060148

    .line 968
    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lru/okei/timetable/SettingsActivity$50;

    invoke-direct {v2, p0}, Lru/okei/timetable/SettingsActivity$50;-><init>(Lru/okei/timetable/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 974
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private currentWeek()Lru/okei/timetable/data/WeekSchedule;
    .locals 2

    .line 1557
    invoke-static {p0}, Lru/okei/timetable/data/Cache;->read(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/okei/timetable/data/ScheduleParser;->parse(Ljava/lang/String;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1558
    invoke-virtual {v0}, Lru/okei/timetable/data/WeekSchedule;->lessonCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private displayName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .line 1519
    :try_start_0
    invoke-virtual {p0}, Lru/okei/timetable/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_display_name"

    const/4 v6, 0x0

    aput-object v1, v2, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 1523
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1524
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1525
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 1530
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1531
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "SettingsActivity"

    .line 1534
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1537
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const p1, 0x7f06017f

    .line 1538
    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private dp(F)I
    .locals 1

    .line 1575
    invoke-virtual {p0}, Lru/okei/timetable/SettingsActivity;->getResources()Landroid/content/res/Resources;

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

.method private formatLead(I)Ljava/lang/String;
    .locals 4

    .line 1566
    div-int/lit8 v0, p1, 0x3c

    .line 1567
    rem-int/lit8 p1, p1, 0x3c

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 1569
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const p1, 0x7f060190

    invoke-virtual {p0, p1, v0}, Lru/okei/timetable/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1571
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    aput-object p1, v3, v1

    const p1, 0x7f06007a

    invoke-virtual {p0, p1, v3}, Lru/okei/timetable/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private label(Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .locals 0

    .line 1397
    invoke-static {p0, p1, p2, p3, p4}, Lru/okei/timetable/Ui;->label(Landroid/content/Context;Ljava/lang/CharSequence;FIZ)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 1398
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1399
    invoke-virtual {p1, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x3df5c28f    # 0.12f

    .line 1400
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_0
    return-object p2
.end method

.method private loadPixel(Z)Landroid/graphics/Typeface;
    .locals 0

    if-eqz p1, :cond_0

    .line 1562
    invoke-static {p0}, Lru/okei/timetable/Ui;->bold(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lru/okei/timetable/Ui;->pixel(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private openFullScreenSetting()V
    .locals 2

    .line 1416
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    return-void

    .line 1420
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_USE_FULL_SCREEN_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1422
    invoke-static {p0}, Lru/okei/timetable/Diagnostics;->packageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1420
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SettingsActivity"

    .line 1424
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const v0, 0x7f060198

    .line 1425
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/SettingsActivity;->flash:Ljava/lang/String;

    .line 1426
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->build()V

    :goto_0
    return-void
.end method

.method private paintHeader(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5

    .line 814
    invoke-virtual {p0}, Lru/okei/timetable/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3fa66666    # 1.3f

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_1

    .line 815
    :cond_1
    invoke-direct {p0, p2}, Lru/okei/timetable/SettingsActivity;->sectionSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 816
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 817
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 820
    :cond_2
    new-instance v1, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 821
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v2

    .line 822
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 824
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f51eb85    # 0.82f

    invoke-direct {v0, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 826
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private pickRingtone()V
    .locals 3

    .line 1434
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/4 v2, 0x4

    .line 1435
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v2, 0x1

    .line 1437
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v2, 0x0

    .line 1438
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x2a

    .line 1440
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lru/okei/timetable/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SettingsActivity"

    .line 1442
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const v0, 0x7f06019d

    .line 1443
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/SettingsActivity;->flash:Ljava/lang/String;

    .line 1444
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->build()V

    :goto_0
    return-void
.end method

.method private pickSong()V
    .locals 2

    .line 1471
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 1472
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "audio/*"

    .line 1473
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x41

    .line 1474
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x29

    .line 1477
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lru/okei/timetable/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SettingsActivity"

    .line 1479
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const v0, 0x7f06019d

    .line 1480
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/okei/timetable/SettingsActivity;->flash:Ljava/lang/String;

    .line 1481
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->build()V

    :goto_0
    return-void
.end method

.method private playThemeWave()V
    .locals 12

    .line 217
    iget-boolean v0, p0, Lru/okei/timetable/SettingsActivity;->themeWaveRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lru/okei/timetable/SettingsActivity;->themeWaveRunning:Z

    .line 222
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->isLight(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v1, v0

    const v2, 0x1020002

    .line 224
    invoke-virtual {p0, v2}, Lru/okei/timetable/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 225
    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->captureScreen(Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    const/4 v5, -0x1

    goto :goto_0

    :cond_1
    const/high16 v5, -0x1000000

    :goto_0
    if-eqz v1, :cond_2

    const v6, -0x19191a

    goto :goto_1

    :cond_2
    const v6, -0xc5c5c6

    :goto_1
    if-eqz v1, :cond_3

    const v7, -0xd0d0e

    goto :goto_2

    :cond_3
    const v7, -0xe3e3e4

    .line 229
    :goto_2
    new-instance v8, Lru/okei/timetable/PixelWaveView;

    invoke-direct {v8, p0, v6, v7, v5}, Lru/okei/timetable/PixelWaveView;-><init>(Landroid/content/Context;III)V

    xor-int/2addr v1, v0

    .line 230
    invoke-virtual {v8, v1}, Lru/okei/timetable/PixelWaveView;->setReverse(Z)V

    const/4 v1, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 233
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 234
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    .line 235
    iget-object v10, p0, Lru/okei/timetable/SettingsActivity;->themeButton:Lru/okei/timetable/ui/ThemeToggleView;

    if-eqz v10, :cond_4

    new-array v6, v1, [I

    new-array v9, v1, [I

    .line 238
    invoke-virtual {v10, v6}, Lru/okei/timetable/ui/ThemeToggleView;->getLocationInWindow([I)V

    .line 239
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    aget v10, v6, v5

    aget v11, v9, v5

    sub-int/2addr v10, v11

    int-to-float v10, v10

    .line 240
    iget-object v11, p0, Lru/okei/timetable/SettingsActivity;->themeButton:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-virtual {v11}, Lru/okei/timetable/ui/ThemeToggleView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v7

    add-float/2addr v10, v11

    aget v6, v6, v0

    aget v0, v9, v0

    sub-int/2addr v6, v0

    int-to-float v0, v6

    .line 241
    iget-object v6, p0, Lru/okei/timetable/SettingsActivity;->themeButton:Lru/okei/timetable/ui/ThemeToggleView;

    invoke-virtual {v6}, Lru/okei/timetable/ui/ThemeToggleView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    add-float v9, v0, v6

    move v6, v10

    .line 243
    :cond_4
    invoke-virtual {v8, v6, v9}, Lru/okei/timetable/PixelWaveView;->setOrigin(FF)V

    .line 244
    invoke-virtual {v8, v3}, Lru/okei/timetable/PixelWaveView;->setSnapshot(Landroid/graphics/Bitmap;)V

    .line 245
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    :cond_5
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->applyThemeInPlace()V

    if-eqz v2, :cond_7

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    new-array v0, v1, [F

    .line 259
    fill-array-data v0, :array_0

    .line 260
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v4, 0x5a

    .line 261
    invoke-static {p0, v4, v5}, Lru/okei/timetable/ui/Motion;->delay(Landroid/content/Context;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v4, 0x30c

    .line 262
    invoke-static {p0, v4, v5}, Lru/okei/timetable/ui/Motion;->duration(Landroid/content/Context;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 263
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    new-instance v1, Lru/okei/timetable/SettingsActivity$8;

    invoke-direct {v1, p0, v8}, Lru/okei/timetable/SettingsActivity$8;-><init>(Lru/okei/timetable/SettingsActivity;Lru/okei/timetable/PixelWaveView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 270
    new-instance v1, Lru/okei/timetable/SettingsActivity$9;

    invoke-direct {v1, p0, v2, v8, v3}, Lru/okei/timetable/SettingsActivity$9;-><init>(Lru/okei/timetable/SettingsActivity;Landroid/view/ViewGroup;Lru/okei/timetable/PixelWaveView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 282
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 253
    :cond_7
    :goto_3
    iput-boolean v5, p0, Lru/okei/timetable/SettingsActivity;->themeWaveRunning:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private removeChange(Ljava/lang/String;I)V
    .locals 2

    .line 1292
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lru/okei/timetable/data/ChangeStore;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-ltz p2, :cond_0

    .line 1293
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 1294
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1296
    :cond_0
    invoke-static {p0, p1, v0}, Lru/okei/timetable/data/ChangeStore;->save(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 1297
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->resync()V

    .line 1298
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->build()V

    return-void
.end method

.method private resetEverything()V
    .locals 7

    const-string v0, "schedule_alarms"

    const-string v1, "schedule_ui"

    const-string v2, "theme"

    const-string v3, "alarm_settings"

    .line 978
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "SettingsActivity"

    const/4 v4, 0x4

    if-ge v2, v4, :cond_0

    .line 981
    :try_start_0
    aget-object v4, v0, v2

    invoke-virtual {p0, v4, v1}, Lru/okei/timetable/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 983
    invoke-static {v3, v4}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 984
    aget-object v3, v0, v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "reset "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 988
    :cond_0
    :try_start_1
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmScheduler;->cancelAll(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 990
    invoke-static {v3, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "reset alarms"

    .line 991
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 993
    :goto_2
    invoke-static {}, Lru/okei/timetable/ui/Theme;->markRecreate()V

    .line 994
    invoke-virtual {p0}, Lru/okei/timetable/SettingsActivity;->recreate()V

    return-void
.end method

.method private resync()V
    .locals 2

    .line 1549
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->currentWeek()Lru/okei/timetable/data/WeekSchedule;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1553
    :cond_0
    iget-object v1, v0, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-static {p0, v1}, Lru/okei/timetable/data/ChangeStore;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lru/okei/timetable/data/ChangeApplier;->apply(Lru/okei/timetable/data/WeekSchedule;Ljava/util/List;)Lru/okei/timetable/data/WeekSchedule;

    move-result-object v0

    invoke-static {p0, v0}, Lru/okei/timetable/alarm/AlarmScheduler;->sync(Landroid/content/Context;Lru/okei/timetable/data/WeekSchedule;)V

    return-void
.end method

.method private ringtoneTitle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 1455
    :try_start_0
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1457
    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1458
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SettingsActivity"

    .line 1463
    invoke-static {v1, v0}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1466
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const p1, 0x7f06017f

    .line 1467
    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private scramble(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 837
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f06013d

    .line 840
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 841
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 842
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lru/okei/timetable/SettingsActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 844
    new-instance v8, Lru/okei/timetable/SettingsActivity$46;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lru/okei/timetable/SettingsActivity$46;-><init>(Lru/okei/timetable/SettingsActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/util/Random;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private sectionArt(Ljava/lang/String;)I
    .locals 1

    const v0, 0x7f060104

    .line 1303
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f020007

    return p1

    :cond_0
    const v0, 0x7f0601a0

    .line 1306
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f020004

    return p1

    :cond_1
    const v0, 0x7f060119

    .line 1309
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f020009

    return p1

    :cond_2
    const v0, 0x7f0601a4

    .line 1312
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x7f020006

    return p1

    :cond_3
    const v0, 0x7f0601a3

    .line 1315
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x7f020008

    return p1

    :cond_4
    const v0, 0x7f0601a1

    .line 1318
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f020005

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private static sectionIconKind(Ljava/lang/String;)I
    .locals 1

    const-string v0, "\u0420\u0410\u0421\u041f\u0418\u0421\u0410\u041d\u0418\u0415"

    .line 1369
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "\u0411\u0423\u0414\u0418\u041b\u042c\u041d\u0418\u041a"

    .line 1372
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "\u0417\u0412\u0423\u041a"

    .line 1375
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    const-string v0, "\u042d\u041a\u0420\u0410\u041d"

    .line 1378
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const-string v0, "\u0417\u0410\u041c\u0415\u041d\u042b"

    .line 1381
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    const-string v0, "\u0420\u0410\u0417\u0420\u0415\u0428\u0415\u041d\u0418\u042f"

    .line 1384
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    const/4 p0, 0x5

    return p0
.end method

.method private sectionSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const v0, 0x7f060104

    .line 1326
    :try_start_0
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    invoke-static {p0}, Lru/okei/timetable/data/Groups;->title(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const v0, 0x7f06014a

    .line 1329
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1330
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->lead(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lru/okei/timetable/SettingsActivity;->formatLead(I)Ljava/lang/String;

    move-result-object p1

    .line 1331
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->count(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f06014b

    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u00b7 "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1332
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->reminders(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f06014c

    .line 1333
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    const v0, 0x7f06014d

    .line 1337
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1338
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->songUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_3

    const p1, 0x7f06014e

    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const p1, 0x7f06014f

    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_4
    const v0, 0x7f060150

    .line 1340
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 1341
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->currentWeek()Lru/okei/timetable/data/WeekSchedule;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 1342
    :cond_5
    iget-object p1, p1, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    invoke-static {p0, p1}, Lru/okei/timetable/data/ChangeStore;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-nez v1, :cond_6

    const p1, 0x7f06012e

    .line 1343
    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    const p1, 0x7f060151

    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_7
    const v0, 0x7f060152

    .line 1345
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1346
    invoke-static {p0}, Lru/okei/timetable/Permissions;->all(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 1348
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 1349
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/okei/timetable/Permissions$Item;

    iget v2, v2, Lru/okei/timetable/Permissions$Item;->kind:I

    invoke-static {p0, v2}, Lru/okei/timetable/Permissions;->granted(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    const v1, 0x7f060139

    .line 1353
    invoke-virtual {p0, v1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    const v0, 0x7f060153

    .line 1355
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1356
    invoke-static {p0}, Lru/okei/timetable/Admin;->isActive(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    const p1, 0x7f060154

    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_b
    const p1, 0x7f060155

    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    return-object p1

    :cond_c
    const v0, 0x7f0601a1

    .line 1358
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    const p1, 0x7f060157

    .line 1359
    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "SettingsActivity"

    .line 1362
    invoke-static {v0, p1}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    const-string p1, ""

    return-object p1
.end method

.method private shorten(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    .line 1542
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1545
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1546
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u2026"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    const p1, 0x7f060199

    .line 1543
    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private showChangesDialog()V
    .locals 21

    move-object/from16 v0, p0

    .line 1199
    invoke-direct/range {p0 .. p0}, Lru/okei/timetable/SettingsActivity;->currentWeek()Lru/okei/timetable/data/WeekSchedule;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1203
    :cond_0
    iget-object v1, v1, Lru/okei/timetable/data/WeekSchedule;->startDate:Ljava/lang/String;

    .line 1204
    invoke-static {v0, v1}, Lru/okei/timetable/data/ChangeStore;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1205
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 1208
    :cond_1
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 1209
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/high16 v5, 0x41a00000    # 20.0f

    .line 1210
    invoke-direct {v0, v5}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v5

    .line 1211
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1212
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1213
    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1214
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1216
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->bg(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v7, 0x40000000    # 2.0f

    .line 1217
    invoke-direct {v0, v7}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v7

    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1218
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x7f060175

    .line 1219
    invoke-virtual {v0, v5}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v7, 0x41600000    # 14.0f

    iget v8, v0, Lru/okei/timetable/SettingsActivity;->FG:I

    invoke-direct {v0, v5, v7, v8, v4}, Lru/okei/timetable/SettingsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    const/16 v7, 0x11

    .line 1220
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v8, 0x41000000    # 8.0f

    .line 1221
    invoke-direct {v0, v8}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v10, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1222
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v5, 0x7f060174

    .line 1223
    invoke-virtual {v0, v5}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v9, v0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    const/high16 v11, 0x41100000    # 9.0f

    invoke-direct {v0, v5, v11, v9, v10}, Lru/okei/timetable/SettingsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 1224
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1225
    invoke-direct {v0, v8}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v8

    invoke-virtual {v5, v10, v10, v10, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1226
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1227
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1228
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1229
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1230
    invoke-virtual {v5, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1231
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x43a50000    # 330.0f

    .line 1232
    invoke-direct {v0, v12}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v12

    const/4 v13, -0x1

    invoke-direct {v9, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1231
    invoke-virtual {v6, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v14, "\u041f\u041e\u041d\u0415\u0414\u0415\u041b\u042c\u041d\u0418\u041a"

    const-string v15, "\u0412\u0422\u041e\u0420\u041d\u0418\u041a"

    const-string v16, "\u0421\u0420\u0415\u0414\u0410"

    const-string v17, "\u0427\u0415\u0422\u0412\u0415\u0420\u0413"

    const-string v18, "\u041f\u042f\u0422\u041d\u0418\u0426\u0410"

    const-string v19, "\u0421\u0423\u0411\u0411\u041e\u0422\u0410"

    const-string v20, "\u0412\u041e\u0421\u041a\u0420\u0415\u0421\u0415\u041d\u042c\u0415"

    .line 1233
    filled-new-array/range {v14 .. v20}, [Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    :goto_0
    const/4 v12, -0x2

    const/4 v15, 0x7

    if-ge v9, v15, :cond_5

    const/4 v15, 0x0

    const/16 v16, 0x1

    .line 1236
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v15, v7, :cond_4

    .line 1238
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/okei/timetable/data/Change;

    .line 1239
    iget v4, v7, Lru/okei/timetable/data/Change;->day:I

    if-eq v4, v9, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v16, :cond_3

    .line 1243
    new-instance v11, Lru/okei/timetable/ui/BreakRule;

    iget v10, v0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    .line 1244
    invoke-static/range {p0 .. p0}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result v14

    iget-object v4, v0, Lru/okei/timetable/SettingsActivity;->pixelBold:Landroid/graphics/Typeface;

    invoke-direct {v11, v0, v10, v14, v4}, Lru/okei/timetable/ui/BreakRule;-><init>(Landroid/content/Context;IILandroid/graphics/Typeface;)V

    .line 1245
    aget-object v4, v5, v9

    invoke-virtual {v11, v4}, Lru/okei/timetable/ui/BreakRule;->setLabel(Ljava/lang/String;)V

    .line 1246
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v10, 0x40c00000    # 6.0f

    .line 1248
    invoke-direct {v0, v10}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v14

    iput v14, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1249
    invoke-virtual {v8, v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v16, 0x0

    goto :goto_2

    :cond_3
    const/high16 v10, 0x40c00000    # 6.0f

    .line 1252
    :goto_2
    invoke-virtual {v7}, Lru/okei/timetable/data/Change;->describe()Ljava/lang/String;

    move-result-object v4

    iget v7, v0, Lru/okei/timetable/SettingsActivity;->FG:I

    const/high16 v11, 0x41300000    # 11.0f

    const/4 v14, 0x0

    invoke-direct {v0, v4, v11, v7, v14}, Lru/okei/timetable/SettingsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1253
    invoke-direct {v0, v10}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v7

    const/high16 v11, 0x41100000    # 9.0f

    invoke-direct {v0, v11}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v14

    invoke-direct {v0, v10}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v10

    invoke-direct {v0, v11}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v12

    invoke-virtual {v4, v7, v14, v10, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1254
    new-instance v7, Lru/okei/timetable/SettingsActivity$55;

    invoke-direct {v7, v0, v1, v15, v3}, Lru/okei/timetable/SettingsActivity$55;-><init>(Lru/okei/timetable/SettingsActivity;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1261
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v12, -0x2

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x1

    const/16 v7, 0x11

    const/4 v10, 0x0

    goto :goto_0

    :cond_5
    const v1, 0x7f060172

    .line 1264
    invoke-virtual {v0, v1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lru/okei/timetable/SettingsActivity;->FG:I

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v5, 0x1

    invoke-direct {v0, v1, v4, v2, v5}, Lru/okei/timetable/SettingsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x11

    .line 1265
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1266
    invoke-direct {v0, v4}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v2

    const/high16 v5, 0x41300000    # 11.0f

    invoke-direct {v0, v5}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v7

    invoke-direct {v0, v4}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v4

    invoke-direct {v0, v5}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v7, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1267
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v4, 0x0

    .line 1268
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 1269
    invoke-direct {v0, v4}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v4

    iget v5, v0, Lru/okei/timetable/SettingsActivity;->FG:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1270
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1271
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v13, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41200000    # 10.0f

    .line 1273
    invoke-direct {v0, v4}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1274
    new-instance v4, Lru/okei/timetable/SettingsActivity$56;

    invoke-direct {v4, v0, v3}, Lru/okei/timetable/SettingsActivity$56;-><init>(Lru/okei/timetable/SettingsActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1280
    invoke-virtual {v6, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1281
    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1282
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1284
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1285
    invoke-virtual/range {p0 .. p0}, Lru/okei/timetable/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v4, 0x3f666666    # 0.9f

    mul-float v2, v2, v4

    float-to-int v2, v2

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v4}, Landroid/view/Window;->setLayout(II)V

    .line 1288
    :cond_6
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showPermissionDialog(Lru/okei/timetable/Permissions$Item;)V
    .locals 7

    .line 1047
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1048
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41b00000    # 22.0f

    .line 1049
    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {p0, v4}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v4

    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v2

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct {p0, v5}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v5

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1050
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->bg(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1052
    iget-object v2, p1, Lru/okei/timetable/Permissions$Item;->title:Ljava/lang/String;

    const/high16 v3, 0x41700000    # 15.0f

    iget v4, p0, Lru/okei/timetable/SettingsActivity;->FG:I

    invoke-direct {p0, v2, v3, v4, v1}, Lru/okei/timetable/SettingsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x3dcccccd    # 0.1f

    .line 1053
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 1054
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1056
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1057
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1058
    invoke-direct {p0, v3}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41200000    # 10.0f

    .line 1059
    invoke-direct {p0, v4}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1060
    iget v4, p0, Lru/okei/timetable/SettingsActivity;->LINE:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1061
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    iget-object v1, p1, Lru/okei/timetable/Permissions$Item;->why:Ljava/lang/String;

    iget v2, p0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    const/4 v4, 0x0

    const/high16 v6, 0x41400000    # 12.0f

    invoke-direct {p0, v1, v6, v2, v4}, Lru/okei/timetable/SettingsActivity;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    .line 1064
    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1065
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1067
    invoke-direct {p0, v6}, Lru/okei/timetable/SettingsActivity;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1068
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1070
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1071
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lru/okei/timetable/SettingsActivity$52;

    invoke-direct {v1, p0, p1}, Lru/okei/timetable/SettingsActivity$52;-><init>(Lru/okei/timetable/SettingsActivity;Lru/okei/timetable/Permissions$Item;)V

    const p1, 0x7f0600fd

    .line 1072
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0600f4

    const/4 v1, 0x0

    .line 1078
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1079
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1080
    new-instance v0, Lru/okei/timetable/SettingsActivity$53;

    invoke-direct {v0, p0, p1}, Lru/okei/timetable/SettingsActivity$53;-><init>(Lru/okei/timetable/SettingsActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1099
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateSectionSummary(Ljava/lang/String;)V
    .locals 1

    .line 830
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->sectionHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 832
    invoke-direct {p0, v0, p1}, Lru/okei/timetable/SettingsActivity;->paintHeader(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private vibrationName(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f06010f

    .line 1449
    :goto_0
    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const p1, 0x7f06015a

    goto :goto_0

    :cond_1
    const p1, 0x7f06015b

    goto :goto_0

    :goto_1
    return-object p1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1487
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2a

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "android.intent.extra.ringtone.PICKED_URI"

    .line 1489
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-nez p1, :cond_0

    .line 1492
    invoke-static {p0}, Lru/okei/timetable/alarm/AlarmSettings;->clearSong(Landroid/content/Context;)V

    goto :goto_0

    .line 1494
    :cond_0
    invoke-direct {p0, p1}, Lru/okei/timetable/SettingsActivity;->ringtoneTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lru/okei/timetable/alarm/AlarmSettings;->setSong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1496
    :goto_0
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->build()V

    return-void

    :cond_1
    const/16 v0, 0x29

    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    if-nez p3, :cond_2

    goto :goto_2

    .line 1502
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 1507
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lru/okei/timetable/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string p3, "SettingsActivity"

    .line 1510
    invoke-static {p3, p2}, Lru/okei/timetable/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1513
    :goto_1
    invoke-direct {p0, p1}, Lru/okei/timetable/SettingsActivity;->displayName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lru/okei/timetable/alarm/AlarmSettings;->setSong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1514
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->build()V

    :cond_4
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040003

    .line 99
    invoke-virtual {p0, v0}, Lru/okei/timetable/SettingsActivity;->setContentView(I)V

    .line 101
    invoke-static {}, Lru/okei/timetable/ui/Theme;->consumeRecreate()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 102
    iput-boolean v1, p0, Lru/okei/timetable/SettingsActivity;->animateNext:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string v3, "settings_open_sections"

    .line 106
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 108
    iget-object v4, p0, Lru/okei/timetable/SettingsActivity;->openSections:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 109
    iput-boolean v1, p0, Lru/okei/timetable/SettingsActivity;->restoredOpenSections:Z

    .line 110
    iput-boolean v2, p0, Lru/okei/timetable/SettingsActivity;->firstSection:Z

    :cond_0
    const-string v3, "settings_scroll_y"

    .line 112
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lru/okei/timetable/SettingsActivity;->restoreScroll:I

    .line 114
    :cond_1
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->fg(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lru/okei/timetable/SettingsActivity;->FG:I

    .line 115
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->muted(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    .line 116
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->dim(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lru/okei/timetable/SettingsActivity;->DIM:I

    .line 117
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->line(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lru/okei/timetable/SettingsActivity;->LINE:I

    .line 118
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->apply(Landroid/app/Activity;)V

    const p1, 0x7f030035

    .line 120
    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/okei/timetable/ui/ThemeToggleView;

    .line 121
    iput-object p1, p0, Lru/okei/timetable/SettingsActivity;->themeButton:Lru/okei/timetable/ui/ThemeToggleView;

    if-eqz p1, :cond_3

    .line 123
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->isLight(Landroid/content/Context;)Z

    move-result v3

    iget v4, p0, Lru/okei/timetable/SettingsActivity;->FG:I

    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->bg(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Lru/okei/timetable/ui/ThemeToggleView;->setState(ZII)V

    .line 124
    new-instance v3, Lru/okei/timetable/SettingsActivity$1;

    invoke-direct {v3, p0}, Lru/okei/timetable/SettingsActivity$1;-><init>(Lru/okei/timetable/SettingsActivity;)V

    invoke-virtual {p1, v3}, Lru/okei/timetable/ui/ThemeToggleView;->setListener(Lru/okei/timetable/ui/ThemeToggleView$Listener;)V

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {p1}, Lru/okei/timetable/ui/ThemeToggleView;->setInstant()V

    goto :goto_0

    .line 145
    :cond_2
    new-instance v3, Lru/okei/timetable/SettingsActivity$3;

    invoke-direct {v3, p0, p1}, Lru/okei/timetable/SettingsActivity$3;-><init>(Lru/okei/timetable/SettingsActivity;Lru/okei/timetable/ui/ThemeToggleView;)V

    const-wide/16 v4, 0x50

    invoke-virtual {p1, v3, v4, v5}, Lru/okei/timetable/ui/ThemeToggleView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    :cond_3
    :goto_0
    invoke-direct {p0, v2}, Lru/okei/timetable/SettingsActivity;->loadPixel(Z)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lru/okei/timetable/SettingsActivity;->pixel:Landroid/graphics/Typeface;

    .line 155
    invoke-direct {p0, v1}, Lru/okei/timetable/SettingsActivity;->loadPixel(Z)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lru/okei/timetable/SettingsActivity;->pixelBold:Landroid/graphics/Typeface;

    const p1, 0x7f030020

    .line 157
    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/okei/timetable/SettingsActivity;->content:Landroid/widget/LinearLayout;

    .line 158
    new-instance p1, Lru/okei/timetable/SettingsRows;

    iget v5, p0, Lru/okei/timetable/SettingsActivity;->FG:I

    iget v6, p0, Lru/okei/timetable/SettingsActivity;->MUTED:I

    iget v7, p0, Lru/okei/timetable/SettingsActivity;->DIM:I

    iget v8, p0, Lru/okei/timetable/SettingsActivity;->LINE:I

    new-instance v9, Lru/okei/timetable/SettingsActivity$4;

    invoke-direct {v9, p0}, Lru/okei/timetable/SettingsActivity$4;-><init>(Lru/okei/timetable/SettingsActivity;)V

    new-instance v10, Lru/okei/timetable/SettingsActivity$5;

    invoke-direct {v10, p0}, Lru/okei/timetable/SettingsActivity$5;-><init>(Lru/okei/timetable/SettingsActivity;)V

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lru/okei/timetable/SettingsRows;-><init>(Landroid/app/Activity;IIIILru/okei/timetable/SettingsRows$Sink;Lru/okei/timetable/SettingsRows$Hook;)V

    iput-object p1, p0, Lru/okei/timetable/SettingsActivity;->builder:Lru/okei/timetable/SettingsRows;

    const p1, 0x7f030021

    .line 169
    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lru/okei/timetable/SettingsActivity;->settingsScroll:Landroid/widget/ScrollView;

    const p1, 0x7f030023

    .line 170
    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 171
    iget-object v1, p0, Lru/okei/timetable/SettingsActivity;->pixelBold:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 172
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/4 v1, 0x0

    .line 173
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 174
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v4, 0x104

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v6, 0x3c

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const p1, 0x7f030022

    .line 176
    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 177
    iget-object v6, p0, Lru/okei/timetable/SettingsActivity;->pixel:Landroid/graphics/Typeface;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 178
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 179
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 180
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0x6e

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const p1, 0x7f03001e

    .line 182
    invoke-virtual {p0, p1}, Lru/okei/timetable/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 183
    iget-object v1, p0, Lru/okei/timetable/SettingsActivity;->pixelBold:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 184
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 185
    new-instance v1, Lru/okei/timetable/SettingsActivity$6;

    invoke-direct {v1, p0}, Lru/okei/timetable/SettingsActivity$6;-><init>(Lru/okei/timetable/SettingsActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->build()V

    if-eqz v0, :cond_4

    .line 192
    iget-object p1, p0, Lru/okei/timetable/SettingsActivity;->content:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    const-wide/16 v0, 0x14

    .line 193
    invoke-static {p1, v0, v1}, Lru/okei/timetable/ui/Motion;->fadeIn(Landroid/view/View;J)V

    .line 195
    :cond_4
    iget p1, p0, Lru/okei/timetable/SettingsActivity;->restoreScroll:I

    if-lez p1, :cond_5

    iget-object p1, p0, Lru/okei/timetable/SettingsActivity;->settingsScroll:Landroid/widget/ScrollView;

    if-eqz p1, :cond_5

    .line 196
    new-instance v0, Lru/okei/timetable/SettingsActivity$7;

    invoke-direct {v0, p0}, Lru/okei/timetable/SettingsActivity$7;-><init>(Lru/okei/timetable/SettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1038
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x29

    if-ne p1, p2, :cond_1

    .line 1040
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    const/4 p2, 0x1

    .line 1041
    :cond_0
    invoke-static {p0, p2}, Lru/okei/timetable/alarm/AlarmSettings;->setBeatByMusic(Landroid/content/Context;Z)V

    .line 1042
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->build()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 438
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->themeChanged(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lru/okei/timetable/SettingsActivity;->recreate()V

    return-void

    .line 442
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 444
    iget-boolean v0, p0, Lru/okei/timetable/SettingsActivity;->resumedOnce:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lru/okei/timetable/SettingsActivity;->retractRunning:Z

    if-nez v0, :cond_1

    .line 445
    invoke-direct {p0}, Lru/okei/timetable/SettingsActivity;->build()V

    :cond_1
    const/4 v0, 0x1

    .line 447
    iput-boolean v0, p0, Lru/okei/timetable/SettingsActivity;->resumedOnce:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lru/okei/timetable/SettingsActivity;->openSections:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "settings_open_sections"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 211
    iget-object v0, p0, Lru/okei/timetable/SettingsActivity;->settingsScroll:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    const-string v1, "settings_scroll_y"

    .line 212
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
