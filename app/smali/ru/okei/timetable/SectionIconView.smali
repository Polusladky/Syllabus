.class public Lru/okei/timetable/SectionIconView;
.super Landroid/view/View;
.source "SectionIconView.java"


# static fields
.field public static final ARROW:I = 0x3

.field public static final BELL:I = 0x1

.field private static final CELLS:I = 0x10

.field public static final GEAR:I = 0x5

.field public static final GRID:I = 0x0

.field public static final KEY:I = 0x4

.field public static final PHONE:I = 0x2

.field public static final SOUND:I = 0x6


# instance fields
.field private kind:I

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/okei/timetable/SectionIconView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lru/okei/timetable/SectionIconView;->kind:I

    .line 30
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 32
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, -0x89898a

    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x2

    .line 35
    invoke-virtual {p0, p1}, Lru/okei/timetable/SectionIconView;->setImportantForAccessibility(I)V

    return-void
.end method

.method private block(Landroid/graphics/Canvas;FFFFFFF)V
    .locals 6

    mul-float p5, p5, p4

    add-float/2addr p5, p2

    .line 108
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    int-to-float v1, p5

    mul-float p6, p6, p4

    add-float/2addr p6, p3

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p5

    int-to-float v2, p5

    mul-float p7, p7, p4

    add-float/2addr p2, p7

    .line 109
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float v3, p2

    mul-float p8, p8, p4

    add-float/2addr p3, p8

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float v4, p2

    iget-object v5, p0, Lru/okei/timetable/SectionIconView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 108
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 50
    invoke-virtual {p0}, Lru/okei/timetable/SectionIconView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lru/okei/timetable/SectionIconView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    .line 51
    invoke-virtual {p0}, Lru/okei/timetable/SectionIconView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v0

    sub-float/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v11, v2, v3

    .line 52
    invoke-virtual {p0}, Lru/okei/timetable/SectionIconView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    div-float v1, v2, v3

    .line 53
    iget v2, p0, Lru/okei/timetable/SectionIconView;->kind:I

    packed-switch v2, :pswitch_data_0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v10, 0x41000000    # 8.0f

    move-object v2, p0

    move-object v3, p1

    move v4, v11

    move v5, v1

    move v6, v0

    .line 98
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x41100000    # 9.0f

    const/high16 v9, 0x41700000    # 15.0f

    .line 99
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x41100000    # 9.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v10, 0x41700000    # 15.0f

    .line 100
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x41100000    # 9.0f

    const/high16 v9, 0x41700000    # 15.0f

    .line 101
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    goto/16 :goto_0

    :pswitch_0
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v10, 0x41200000    # 10.0f

    move-object v2, p0

    move-object v3, p1

    move v4, v11

    move v5, v1

    move v6, v0

    .line 90
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v9, 0x40c00000    # 6.0f

    const/high16 v10, 0x41400000    # 12.0f

    .line 91
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v10, 0x41600000    # 14.0f

    .line 92
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x41300000    # 11.0f

    const/high16 v10, 0x40e00000    # 7.0f

    .line 93
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v8, 0x41100000    # 9.0f

    const/high16 v10, 0x41300000    # 11.0f

    .line 94
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x41400000    # 12.0f

    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v9, 0x41500000    # 13.0f

    const/high16 v10, 0x41500000    # 13.0f

    .line 95
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    goto/16 :goto_0

    :pswitch_1
    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x41200000    # 10.0f

    move-object v2, p0

    move-object v3, p1

    move v4, v11

    move v5, v1

    move v6, v0

    .line 83
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x40e00000    # 7.0f

    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v9, 0x41100000    # 9.0f

    const/high16 v10, 0x40c00000    # 6.0f

    .line 84
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v10, 0x41500000    # 13.0f

    .line 85
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x40e00000    # 7.0f

    const/high16 v9, 0x40c00000    # 6.0f

    const/high16 v10, 0x41100000    # 9.0f

    .line 86
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v9, 0x41500000    # 13.0f

    .line 87
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    goto/16 :goto_0

    :pswitch_2
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v10, 0x40c00000    # 6.0f

    move-object v2, p0

    move-object v3, p1

    move v4, v11

    move v5, v1

    move v6, v0

    .line 74
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v10, 0x41300000    # 11.0f

    .line 75
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v10, 0x41200000    # 10.0f

    .line 76
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x40e00000    # 7.0f

    const/high16 v9, 0x41000000    # 8.0f

    .line 77
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x40e00000    # 7.0f

    const/high16 v9, 0x41500000    # 13.0f

    const/high16 v10, 0x41100000    # 9.0f

    .line 78
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x41300000    # 11.0f

    const/high16 v8, 0x41100000    # 9.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x41300000    # 11.0f

    .line 79
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x41500000    # 13.0f

    const/high16 v9, 0x41600000    # 14.0f

    .line 80
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    goto/16 :goto_0

    :pswitch_3
    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x40e00000    # 7.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x41100000    # 9.0f

    move-object v2, p0

    move-object v3, p1

    move v4, v11

    move v5, v1

    move v6, v0

    .line 68
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x41300000    # 11.0f

    const/high16 v10, 0x41300000    # 11.0f

    .line 69
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x41300000    # 11.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x41200000    # 10.0f

    .line 70
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x41400000    # 12.0f

    const/high16 v8, 0x40e00000    # 7.0f

    const/high16 v9, 0x41500000    # 13.0f

    const/high16 v10, 0x41100000    # 9.0f

    .line 71
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    goto :goto_0

    :pswitch_4
    const/high16 v7, 0x40a00000    # 5.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x41300000    # 11.0f

    const/high16 v10, 0x40400000    # 3.0f

    move-object v2, p0

    move-object v3, p1

    move v4, v11

    move v5, v1

    move v6, v0

    .line 61
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v8, 0x41500000    # 13.0f

    const/high16 v10, 0x41600000    # 14.0f

    .line 62
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v9, 0x40c00000    # 6.0f

    const/high16 v10, 0x41500000    # 13.0f

    .line 63
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v9, 0x41300000    # 11.0f

    .line 64
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x40e00000    # 7.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x41100000    # 9.0f

    .line 65
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    goto :goto_0

    :pswitch_5
    const/high16 v7, 0x40e00000    # 7.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x41100000    # 9.0f

    const/high16 v10, 0x40800000    # 4.0f

    move-object v2, p0

    move-object v3, p1

    move v4, v11

    move v5, v1

    move v6, v0

    .line 55
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x41300000    # 11.0f

    .line 56
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x41300000    # 11.0f

    const/high16 v9, 0x41500000    # 13.0f

    const/high16 v10, 0x41400000    # 12.0f

    .line 57
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    const/high16 v7, 0x40e00000    # 7.0f

    const/high16 v8, 0x41500000    # 13.0f

    const/high16 v9, 0x41100000    # 9.0f

    const/high16 v10, 0x41600000    # 14.0f

    .line 58
    invoke-direct/range {v2 .. v10}, Lru/okei/timetable/SectionIconView;->block(Landroid/graphics/Canvas;FFFFFFF)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lru/okei/timetable/SectionIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    invoke-virtual {p0}, Lru/okei/timetable/SectionIconView;->invalidate()V

    return-void
.end method

.method public setKind(I)V
    .locals 0

    .line 39
    iput p1, p0, Lru/okei/timetable/SectionIconView;->kind:I

    .line 40
    invoke-virtual {p0}, Lru/okei/timetable/SectionIconView;->invalidate()V

    return-void
.end method
