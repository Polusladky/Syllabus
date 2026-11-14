.class public Lru/okei/timetable/App;
.super Landroid/app/Application;
.source "App.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 13
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 14
    invoke-static {p0}, Lru/okei/timetable/CrashLog;->install(Landroid/content/Context;)V

    return-void
.end method
