.class public Ltw/edu/kmu/ar/gui/RadarPoints;
.super Ljava/lang/Object;
.source "RadarPoints.java"

# interfaces
.implements Lorg/mixare/lib/gui/ScreenObj;


# static fields
.field private static final TAG:Ljava/lang/String; = "RadarPoints"

.field static originX:F

.field static originY:F

.field static radarColor:I


# instance fields
.field private allPoiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xff

    const/16 v1, 0xec

    const/16 v2, 0x7b

    const/16 v3, 0x9

    .line 56
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radarColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42700000    # 60.0f

    .line 50
    iput v0, p0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    return-void
.end method


# virtual methods
.method public getAllPoiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Ltw/edu/kmu/ar/gui/RadarPoints;->allPoiList:Ljava/util/List;

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    .line 141
    iget v0, p0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 145
    iget v0, p0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    return v0
.end method

.method public getWidth()F
    .locals 2

    .line 136
    iget v0, p0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public paint(Lorg/mixare/lib/gui/PaintScreen;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 64
    invoke-virtual {v1, v2}, Lorg/mixare/lib/gui/PaintScreen;->setFill(Z)V

    .line 65
    sget v3, Ltw/edu/kmu/ar/gui/RadarPoints;->radarColor:I

    invoke-virtual {v1, v3}, Lorg/mixare/lib/gui/PaintScreen;->setColor(I)V

    .line 67
    sget v3, Ltw/edu/kmu/ar/gui/RadarPoints;->originX:F

    iget v4, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    add-float/2addr v3, v4

    sget v4, Ltw/edu/kmu/ar/gui/RadarPoints;->originY:F

    iget v5, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    add-float/2addr v4, v5

    iget v5, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    invoke-virtual {v1, v3, v4, v5}, Lorg/mixare/lib/gui/PaintScreen;->paintCircle(FFF)V

    const/16 v3, 0xff

    .line 68
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/mixare/lib/gui/PaintScreen;->setColor(I)V

    .line 69
    sget v4, Ltw/edu/kmu/ar/gui/RadarPoints;->originX:F

    iget v5, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    add-float/2addr v4, v5

    sget v5, Ltw/edu/kmu/ar/gui/RadarPoints;->originY:F

    iget v6, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    add-float/2addr v5, v6

    iget v6, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v6, v6, v7

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v6, v8

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v6, v9

    invoke-virtual {v1, v4, v5, v6}, Lorg/mixare/lib/gui/PaintScreen;->paintCircle(FFF)V

    const/16 v4, 0xd1

    const/16 v5, 0x71

    const/16 v6, 0x18

    .line 71
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/mixare/lib/gui/PaintScreen;->setColor(I)V

    .line 72
    sget v4, Ltw/edu/kmu/ar/gui/RadarPoints;->originX:F

    iget v5, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    add-float/2addr v4, v5

    sget v5, Ltw/edu/kmu/ar/gui/RadarPoints;->originY:F

    iget v6, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    add-float/2addr v5, v6

    iget v6, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    mul-float v6, v6, v7

    div-float/2addr v6, v8

    invoke-virtual {v1, v4, v5, v6}, Lorg/mixare/lib/gui/PaintScreen;->paintCircle(FFF)V

    .line 74
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/mixare/lib/gui/PaintScreen;->setColor(I)V

    .line 75
    sget v4, Ltw/edu/kmu/ar/gui/RadarPoints;->originX:F

    iget v5, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    add-float/2addr v4, v5

    sget v5, Ltw/edu/kmu/ar/gui/RadarPoints;->originY:F

    iget v6, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    add-float/2addr v5, v6

    iget v6, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    mul-float v6, v6, v9

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v9

    invoke-virtual {v1, v4, v5, v6}, Lorg/mixare/lib/gui/PaintScreen;->paintCircle(FFF)V

    const/16 v4, 0xa5

    const/16 v5, 0x5e

    const/16 v6, 0x2a

    .line 76
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/mixare/lib/gui/PaintScreen;->setColor(I)V

    .line 77
    sget v4, Ltw/edu/kmu/ar/gui/RadarPoints;->originX:F

    iget v5, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    add-float/2addr v4, v5

    sget v5, Ltw/edu/kmu/ar/gui/RadarPoints;->originY:F

    iget v6, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    add-float/2addr v5, v6

    iget v6, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    mul-float v6, v6, v9

    div-float/2addr v6, v7

    invoke-virtual {v1, v4, v5, v6}, Lorg/mixare/lib/gui/PaintScreen;->paintCircle(FFF)V

    .line 83
    iget-object v4, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->allPoiList:Ljava/util/List;

    iget-object v5, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->allPoiList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "distance"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->allPoiList:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v10, "distance"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    sub-double/2addr v4, v10

    const-wide v10, 0x3ff3333333333333L    # 1.2

    mul-double v4, v4, v10

    .line 103
    iget-object v6, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->allPoiList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 105
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v1, v11}, Lorg/mixare/lib/gui/PaintScreen;->setColor(I)V

    const-string v11, "aa"

    .line 107
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide v13, 0x4056800000000000L    # 90.0

    sub-double/2addr v11, v13

    const-string v13, "distance"

    .line 109
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    iget-object v10, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->allPoiList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v15, "distance"

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    sub-double/2addr v13, v15

    iget v10, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    float-to-double v2, v10

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v2

    div-double/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v13, v13, v15

    double-to-float v3, v13

    .line 112
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v13, v13, v10

    double-to-float v2, v13

    .line 114
    iget v10, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    add-float/2addr v3, v10

    sub-float/2addr v3, v9

    iget v10, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    add-float/2addr v2, v10

    sub-float/2addr v2, v9

    invoke-virtual {v1, v3, v2, v7, v7}, Lorg/mixare/lib/gui/PaintScreen;->paintRect(FFFF)V

    const/4 v2, 0x1

    const/16 v3, 0xff

    goto/16 :goto_0

    .line 119
    :cond_0
    invoke-virtual {v1, v2}, Lorg/mixare/lib/gui/PaintScreen;->setFill(Z)V

    const/16 v2, 0xff

    .line 120
    invoke-static {v2, v2, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mixare/lib/gui/PaintScreen;->setColor(I)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 121
    invoke-virtual {v1, v2}, Lorg/mixare/lib/gui/PaintScreen;->setFontSize(F)V

    const/4 v2, 0x0

    .line 122
    iget v3, v0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    add-float/2addr v3, v2

    sub-float/2addr v3, v9

    const/high16 v2, -0x40800000    # -1.0f

    const-string v4, "N"

    invoke-virtual {v1, v3, v2, v4, v8}, Lorg/mixare/lib/gui/PaintScreen;->paintText(FFLjava/lang/String;Z)V

    return-void
.end method

.method public setAllPoiList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Ltw/edu/kmu/ar/gui/RadarPoints;->allPoiList:Ljava/util/List;

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 149
    iput p1, p0, Ltw/edu/kmu/ar/gui/RadarPoints;->radius:F

    return-void
.end method
