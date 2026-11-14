.class public final Lru/okei/timetable/ui/TextScramble;
.super Ljava/lang/Object;
.source "TextScramble.java"


# static fields
.field private static final LETTERS:Ljava/lang/String; = "\u0410\u0411\u0412\u0413\u0414\u0415\u0416\u0417\u0418\u041a\u041b\u041c\u041d\u041e\u041f\u0420\u0421\u0422\u0423\u0424\u0425\u0426\u0427\u0428\u0429\u042d\u042e\u042f0123456789"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animate(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 8

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xa

    const/16 v2, 0x1e

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0xe

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 28
    new-instance v7, Lru/okei/timetable/ui/TextScramble$1;

    move-object v1, v7

    move-object v2, p1

    move-object v5, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lru/okei/timetable/ui/TextScramble$1;-><init>(Ljava/lang/String;ILjava/util/Random;Landroid/widget/TextView;Landroid/os/Handler;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
