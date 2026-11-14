.class Lru/okei/timetable/ui/PixelRevealText$2;
.super Ljava/lang/Object;
.source "PixelRevealText.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/ui/PixelRevealText;->rasterize(Ljava/lang/String;Landroid/graphics/Typeface;FF[IZ)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bottom:Z

.field final synthetic val$colsF:I

.field final synthetic val$letters:[I


# direct methods
.method constructor <init>(I[IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    iput p1, p0, Lru/okei/timetable/ui/PixelRevealText$2;->val$colsF:I

    iput-object p2, p0, Lru/okei/timetable/ui/PixelRevealText$2;->val$letters:[I

    iput-boolean p3, p0, Lru/okei/timetable/ui/PixelRevealText$2;->val$bottom:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 3

    .line 161
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lru/okei/timetable/ui/PixelRevealText$2;->val$colsF:I

    div-int/2addr v0, v1

    .line 162
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lru/okei/timetable/ui/PixelRevealText$2;->val$colsF:I

    div-int/2addr v1, v2

    .line 163
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v2, p0, Lru/okei/timetable/ui/PixelRevealText$2;->val$colsF:I

    rem-int/2addr p1, v2

    .line 164
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v2, p0, Lru/okei/timetable/ui/PixelRevealText$2;->val$colsF:I

    rem-int/2addr p2, v2

    .line 165
    iget-object v2, p0, Lru/okei/timetable/ui/PixelRevealText$2;->val$letters:[I

    aget p1, v2, p1

    aget p2, v2, p2

    if-eq p1, p2, :cond_0

    sub-int/2addr p1, p2

    return p1

    .line 168
    :cond_0
    iget-boolean p1, p0, Lru/okei/timetable/ui/PixelRevealText$2;->val$bottom:Z

    if-eqz p1, :cond_1

    sub-int/2addr v1, v0

    return v1

    :cond_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 158
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lru/okei/timetable/ui/PixelRevealText$2;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
