.class public final Lru/okei/timetable/ui/Theme;
.super Ljava/lang/Object;
.source "Theme.java"


# static fields
.field private static final APPLIED:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final DARK_BG:I = -0x1000000

.field public static final DARK_DIM:I = -0x616162

.field public static final DARK_FG:I = -0x1

.field public static final DARK_LINE:I = -0xd9d9da

.field public static final DARK_MUTED:I = -0x373738

.field private static final KEY_CLEAN:Ljava/lang/String; = "clean"

.field private static final KEY_LIGHT:Ljava/lang/String; = "light"

.field private static final KEY_MODE:Ljava/lang/String; = "mode"

.field public static final LIGHT_BG:I = -0x1

.field public static final LIGHT_DIM:I = -0xaaaaab

.field public static final LIGHT_FG:I = -0xe5e5e6

.field public static final LIGHT_LINE:I = -0x1b1b1c

.field public static final LIGHT_MUTED:I = -0xc0c0c1

.field public static final MODE_AUTO:I = 0x2

.field public static final MODE_DARK:I = 0x0

.field public static final MODE_LIGHT:I = 0x1

.field private static final PREFS:Ljava/lang/String; = "theme"

.field private static pendingRecreate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lru/okei/timetable/ui/Theme;->APPLIED:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/app/Activity;)V
    .locals 6

    .line 168
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->isLight(Landroid/content/Context;)Z

    move-result v0

    .line 169
    sget-object v1, Lru/okei/timetable/ui/Theme;->APPLIED:Ljava/util/WeakHashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->bg(Landroid/content/Context;)I

    move-result v1

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 172
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    invoke-virtual {v2, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 174
    invoke-virtual {v2, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 175
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    .line 176
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    if-eqz v0, :cond_0

    or-int/lit16 v3, v3, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 v3, v3, -0x2001

    .line 183
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_2

    if-eqz v0, :cond_1

    or-int/lit8 v3, v3, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v3, v3, -0x11

    .line 190
    :cond_2
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    const v0, 0x1020002

    .line 193
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 195
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 197
    :cond_4
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->tint(Landroid/view/View;)V

    return-void
.end method

.method private static backgroundFor(IZ)I
    .locals 3

    const/high16 v0, -0x1000000

    or-int v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v0, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, -0x1

    :cond_2
    return v0
.end method

.method public static bg(Landroid/content/Context;)I
    .locals 0

    .line 129
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->isLight(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/high16 p0, -0x1000000

    :goto_0
    return p0
.end method

.method public static consumeRecreate()Z
    .locals 2

    .line 64
    sget-boolean v0, Lru/okei/timetable/ui/Theme;->pendingRecreate:Z

    const/4 v1, 0x0

    .line 65
    sput-boolean v1, Lru/okei/timetable/ui/Theme;->pendingRecreate:Z

    return v0
.end method

.method public static dim(Landroid/content/Context;)I
    .locals 0

    .line 145
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->isLight(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, -0xaaaaab

    goto :goto_0

    :cond_0
    const p0, -0x616162

    :goto_0
    return p0
.end method

.method public static fg(Landroid/content/Context;)I
    .locals 0

    .line 133
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->isLight(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, -0xe5e5e6

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static inkFor(IZ)I
    .locals 2

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    mul-int/lit16 v0, v0, 0x12b

    mul-int/lit16 v1, v1, 0x24b

    add-int/2addr v0, v1

    mul-int/lit8 p0, p0, 0x72

    add-int/2addr v0, p0

    .line 242
    div-int/lit16 v0, v0, 0x3e8

    if-eqz p1, :cond_2

    const/16 p0, 0xc8

    const p1, -0xe5e5e6

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x5a

    if-le v0, p0, :cond_1

    const p1, -0xc0c0c1

    :cond_1
    :goto_0
    return p1

    :cond_2
    const/16 p0, 0x3c

    const/4 p1, -0x1

    if-ge v0, p0, :cond_3

    goto :goto_1

    :cond_3
    const/16 p0, 0xaa

    if-ge v0, p0, :cond_4

    const p1, -0x373738

    :cond_4
    :goto_1
    return p1
.end method

.method public static isLight(Landroid/content/Context;)Z
    .locals 2

    .line 93
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->mode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 97
    :cond_0
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->isNight(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public static isNight(Landroid/content/Context;)Z
    .locals 1

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static line(Landroid/content/Context;)I
    .locals 0

    .line 141
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->isLight(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, -0x1b1b1c

    goto :goto_0

    :cond_0
    const p0, -0xd9d9da

    :goto_0
    return p0
.end method

.method public static markRecreate()V
    .locals 1

    const/4 v0, 0x1

    .line 54
    sput-boolean v0, Lru/okei/timetable/ui/Theme;->pendingRecreate:Z

    return-void
.end method

.method public static mode(Landroid/content/Context;)I
    .locals 3

    .line 74
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mode"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "light"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static muted(Landroid/content/Context;)I
    .locals 0

    .line 137
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->isLight(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, -0xc0c0c1

    goto :goto_0

    :cond_0
    const p0, -0x373738

    :goto_0
    return p0
.end method

.method public static nextMode(Landroid/content/Context;)I
    .locals 1

    .line 108
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->mode(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p0, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "theme"

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static setLight(Landroid/content/Context;Z)V
    .locals 0

    .line 104
    invoke-static {p0, p1}, Lru/okei/timetable/ui/Theme;->setMode(Landroid/content/Context;I)V

    return-void
.end method

.method public static setMode(Landroid/content/Context;I)V
    .locals 1

    .line 83
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "mode"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static swap(I)I
    .locals 2

    const/high16 v0, -0x1000000

    const/4 v1, -0x1

    if-eq p0, v0, :cond_5

    const v0, -0xd5d5d6

    if-eq p0, v0, :cond_4

    const v0, -0xb5b5b6

    if-eq p0, v0, :cond_3

    const v0, -0x89898a

    if-eq p0, v0, :cond_2

    const v0, -0x656566

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    return p0

    :cond_0
    const p0, -0xe5e5e6

    return p0

    :cond_1
    const p0, -0xaaaaab

    return p0

    :cond_2
    const p0, -0xc0c0c1

    return p0

    :cond_3
    const p0, -0x616162

    return p0

    :cond_4
    const p0, -0x1b1b1c

    return p0

    :cond_5
    return v1
.end method

.method public static themeChanged(Landroid/app/Activity;)Z
    .locals 1

    .line 59
    sget-object v0, Lru/okei/timetable/ui/Theme;->APPLIED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->isLight(Landroid/content/Context;)Z

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static tint(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lru/okei/timetable/ui/Theme;->isLight(Landroid/content/Context;)Z

    move-result v0

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 206
    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1

    .line 207
    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    .line 208
    invoke-static {v1, v0}, Lru/okei/timetable/ui/Theme;->backgroundFor(IZ)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 210
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_1
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 214
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    .line 215
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    .line 216
    invoke-static {v2, v0}, Lru/okei/timetable/ui/Theme;->inkFor(IZ)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 218
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    :cond_2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 222
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 223
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 224
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lru/okei/timetable/ui/Theme;->tint(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static toggle(Landroid/content/Context;)Z
    .locals 1

    .line 113
    invoke-static {p0}, Lru/okei/timetable/ui/Theme;->isLight(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 114
    invoke-static {p0, v0}, Lru/okei/timetable/ui/Theme;->setMode(Landroid/content/Context;I)V

    return v0
.end method
