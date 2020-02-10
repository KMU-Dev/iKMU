.class public Ltw/edu/kmu/view/RadarView;
.super Landroid/widget/ImageView;
.source "RadarView.java"


# static fields
.field public static final MODE_POI_ROTATE:I = 0x1

.field public static final MODE_RADAR_ROTATE:I


# instance fields
.field private currentMode:I

.field private disLimit:D

.field private matrix:Landroid/graphics/Matrix;

.field private midX:F

.field private midY:F

.field private paint:Landroid/graphics/Paint;

.field private poiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltw/edu/kmu/vo/Poi;",
            ">;"
        }
    .end annotation
.end field

.field private rotate:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/RadarView;->matrix:Landroid/graphics/Matrix;

    .line 65
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/RadarView;->paint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    .line 66
    iput p1, p0, Ltw/edu/kmu/view/RadarView;->currentMode:I

    return-void
.end method


# virtual methods
.method public getDisLimit()D
    .locals 2

    .line 39
    iget-wide v0, p0, Ltw/edu/kmu/view/RadarView;->disLimit:D

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    .line 158
    iget v0, p0, Ltw/edu/kmu/view/RadarView;->currentMode:I

    return v0
.end method

.method public getPoiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltw/edu/kmu/vo/Poi;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Ltw/edu/kmu/view/RadarView;->poiList:Ljava/util/List;

    return-object v0
.end method

.method public getRotate()F
    .locals 1

    .line 54
    iget v0, p0, Ltw/edu/kmu/view/RadarView;->rotate:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 71
    iget v0, p0, Ltw/edu/kmu/view/RadarView;->currentMode:I

    const/high16 v1, 0x40a00000    # 5.0f

    const v2, -0xffff01

    if-nez v0, :cond_4

    .line 72
    iget-object v0, p0, Ltw/edu/kmu/view/RadarView;->poiList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Ltw/edu/kmu/view/RadarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Ltw/edu/kmu/view/RadarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    invoke-virtual {p0}, Ltw/edu/kmu/view/RadarView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Ltw/edu/kmu/view/RadarView;->midX:F

    .line 79
    invoke-virtual {p0}, Ltw/edu/kmu/view/RadarView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Ltw/edu/kmu/view/RadarView;->midY:F

    .line 80
    iget-object v0, p0, Ltw/edu/kmu/view/RadarView;->poiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltw/edu/kmu/vo/Poi;

    .line 81
    invoke-virtual {v1}, Ltw/edu/kmu/vo/Poi;->getTempAngle()D

    move-result-wide v2

    .line 82
    invoke-virtual {v1}, Ltw/edu/kmu/vo/Poi;->getTempDistance()D

    move-result-wide v4

    iget-wide v6, p0, Ltw/edu/kmu/view/RadarView;->disLimit:D

    div-double/2addr v4, v6

    iget v1, p0, Ltw/edu/kmu/view/RadarView;->midX:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    const-wide v6, 0x4070e00000000000L    # 270.0

    cmpl-double v1, v2, v6

    if-ltz v1, :cond_0

    const-wide v6, 0x4076800000000000L    # 360.0

    sub-double/2addr v6, v2

    .line 85
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 86
    iget v3, p0, Ltw/edu/kmu/view/RadarView;->midX:F

    float-to-double v6, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v8

    double-to-float v3, v6

    iget v6, p0, Ltw/edu/kmu/view/RadarView;->midY:F

    float-to-double v6, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v4, v4, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v4

    double-to-float v1, v6

    iget-object v2, p0, Ltw/edu/kmu/view/RadarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v1, v2, v6

    if-ltz v1, :cond_1

    sub-double/2addr v2, v6

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 89
    iget v3, p0, Ltw/edu/kmu/view/RadarView;->midX:F

    float-to-double v6, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v8

    double-to-float v3, v6

    iget v6, p0, Ltw/edu/kmu/view/RadarView;->midY:F

    float-to-double v6, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v4, v4, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v4

    double-to-float v1, v6

    iget-object v2, p0, Ltw/edu/kmu/view/RadarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1
    const-wide v8, 0x4056800000000000L    # 90.0

    cmpl-double v1, v2, v8

    if-ltz v1, :cond_2

    sub-double/2addr v6, v2

    .line 91
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 92
    iget v3, p0, Ltw/edu/kmu/view/RadarView;->midX:F

    float-to-double v6, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    double-to-float v3, v6

    iget v6, p0, Ltw/edu/kmu/view/RadarView;->midY:F

    float-to-double v6, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v4, v4, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v4

    double-to-float v1, v6

    iget-object v2, p0, Ltw/edu/kmu/view/RadarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 94
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 95
    iget v3, p0, Ltw/edu/kmu/view/RadarView;->midX:F

    float-to-double v6, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    double-to-float v3, v6

    iget v6, p0, Ltw/edu/kmu/view/RadarView;->midY:F

    float-to-double v6, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v4, v4, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v4

    double-to-float v1, v6

    iget-object v2, p0, Ltw/edu/kmu/view/RadarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 100
    :cond_3
    invoke-virtual {p0}, Ltw/edu/kmu/view/RadarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070175

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/view/RadarView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Ltw/edu/kmu/view/RadarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 101
    iget v0, p0, Ltw/edu/kmu/view/RadarView;->rotate:F

    invoke-virtual {p0}, Ltw/edu/kmu/view/RadarView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Ltw/edu/kmu/view/RadarView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_2

    .line 103
    :cond_4
    iget v0, p0, Ltw/edu/kmu/view/RadarView;->currentMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_9

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    iget v0, p0, Ltw/edu/kmu/view/RadarView;->rotate:F

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float v0, v3, v0

    invoke-virtual {p0}, Ltw/edu/kmu/view/RadarView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Ltw/edu/kmu/view/RadarView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 106
    invoke-virtual {p0}, Ltw/edu/kmu/view/RadarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 107
    invoke-static {}, Ltw/edu/kmu/resource/ImageResource;->getInstance()Ltw/edu/kmu/resource/ImageResource;

    move-result-object v0

    const v4, 0x7f07015c

    invoke-virtual {p0}, Ltw/edu/kmu/view/RadarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v6, 0x78

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(ILandroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Ltw/edu/kmu/view/RadarView;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-string v0, "AR\u96f7\u9054\u5bec\u5ea6\u6e2c\u8a66"

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "width:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltw/edu/kmu/view/RadarView;->getWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\theight:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltw/edu/kmu/view/RadarView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 111
    iget-object v0, p0, Ltw/edu/kmu/view/RadarView;->poiList:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Ltw/edu/kmu/view/RadarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v0, p0, Ltw/edu/kmu/view/RadarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    invoke-virtual {p0}, Ltw/edu/kmu/view/RadarView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput v0, p0, Ltw/edu/kmu/view/RadarView;->midX:F

    .line 120
    invoke-virtual {p0}, Ltw/edu/kmu/view/RadarView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Ltw/edu/kmu/view/RadarView;->midY:F

    .line 123
    iget-object v0, p0, Ltw/edu/kmu/view/RadarView;->poiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltw/edu/kmu/vo/Poi;

    .line 124
    invoke-virtual {v1}, Ltw/edu/kmu/vo/Poi;->getTempAngle()D

    move-result-wide v6

    .line 125
    invoke-virtual {v1}, Ltw/edu/kmu/vo/Poi;->getTempDistance()D

    move-result-wide v1

    iget-wide v8, p0, Ltw/edu/kmu/view/RadarView;->disLimit:D

    div-double/2addr v1, v8

    iget v4, p0, Ltw/edu/kmu/view/RadarView;->midX:F

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v8

    double-to-float v4, v6

    .line 126
    iget v6, p0, Ltw/edu/kmu/view/RadarView;->rotate:F

    sub-float/2addr v4, v6

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_5

    add-float/2addr v4, v3

    :cond_5
    const/high16 v6, 0x43870000    # 270.0f

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_6

    sub-float v4, v3, v4

    float-to-double v6, v4

    .line 132
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 133
    iget v4, p0, Ltw/edu/kmu/view/RadarView;->midX:F

    float-to-double v8, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v10, v10, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v10

    double-to-float v4, v8

    iget v8, p0, Ltw/edu/kmu/view/RadarView;->midY:F

    float-to-double v8, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v1, v1, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v1

    double-to-float v1, v8

    iget-object v2, p0, Ltw/edu/kmu/view/RadarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    const/high16 v6, 0x43340000    # 180.0f

    cmpl-float v7, v4, v6

    if-ltz v7, :cond_7

    sub-float/2addr v4, v6

    float-to-double v6, v4

    .line 135
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 136
    iget v4, p0, Ltw/edu/kmu/view/RadarView;->midX:F

    float-to-double v8, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v10, v10, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v10

    double-to-float v4, v8

    iget v8, p0, Ltw/edu/kmu/view/RadarView;->midY:F

    float-to-double v8, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v1, v1, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v1

    double-to-float v1, v8

    iget-object v2, p0, Ltw/edu/kmu/view/RadarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_7
    const/high16 v7, 0x42b40000    # 90.0f

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_8

    sub-float/2addr v6, v4

    float-to-double v6, v6

    .line 138
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 139
    iget v4, p0, Ltw/edu/kmu/view/RadarView;->midX:F

    float-to-double v8, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v10, v10, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    double-to-float v4, v8

    iget v8, p0, Ltw/edu/kmu/view/RadarView;->midY:F

    float-to-double v8, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v1, v1, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v1

    double-to-float v1, v8

    iget-object v2, p0, Ltw/edu/kmu/view/RadarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_8
    float-to-double v6, v4

    .line 141
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 142
    iget v4, p0, Ltw/edu/kmu/view/RadarView;->midX:F

    float-to-double v8, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v10, v10, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    double-to-float v4, v8

    iget v8, p0, Ltw/edu/kmu/view/RadarView;->midY:F

    float-to-double v8, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v1, v1, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v1

    double-to-float v1, v8

    iget-object v2, p0, Ltw/edu/kmu/view/RadarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 149
    :cond_9
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setDisLimit(D)V
    .locals 0

    .line 43
    iput-wide p1, p0, Ltw/edu/kmu/view/RadarView;->disLimit:D

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 154
    iput p1, p0, Ltw/edu/kmu/view/RadarView;->currentMode:I

    return-void
.end method

.method public setPoiList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltw/edu/kmu/vo/Poi;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Ltw/edu/kmu/view/RadarView;->poiList:Ljava/util/List;

    return-void
.end method

.method public setRotate(F)V
    .locals 0

    .line 58
    iput p1, p0, Ltw/edu/kmu/view/RadarView;->rotate:F

    return-void
.end method
