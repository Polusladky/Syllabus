.class final Lru/okei/timetable/Permissions$Item;
.super Ljava/lang/Object;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/okei/timetable/Permissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Item"
.end annotation


# instance fields
.field final kind:I

.field final title:Ljava/lang/String;

.field final why:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lru/okei/timetable/Permissions$Item;->kind:I

    .line 34
    iput-object p2, p0, Lru/okei/timetable/Permissions$Item;->title:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lru/okei/timetable/Permissions$Item;->why:Ljava/lang/String;

    return-void
.end method
