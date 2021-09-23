.class public Ltw/edu/kmu/view/MapImageView;
.super Landroid/widget/ImageView;
.source "MapImageView.java"


# static fields
.field static final SCALE_RATE:F = 1.25f

.field private static final TAG:Ljava/lang/String; = "MapImageView"


# instance fields
.field _dy:F

.field private currentFloor:I

.field protected image:Landroid/graphics/drawable/Drawable;

.field private imageHeight:I

.field private imageWidth:I

.field public isDebugMode:Z

.field public isEanbleGPS:Z

.field public isShowCycle:Z

.field private latitude:D

.field private longitude:D

.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mHandler:Landroid/os/Handler;

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field mMinZoom:F

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field mThisHeight:I

.field mThisWidth:I

.field private scaleRate:F

.field public screenHeight:I

.field public screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 1

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/MapImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 41
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/MapImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/MapImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    .line 48
    new-array p1, p1, [F

    iput-object p1, p0, Ltw/edu/kmu/view/MapImageView;->mMatrixValues:[F

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Ltw/edu/kmu/view/MapImageView;->image:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Ltw/edu/kmu/view/MapImageView;->mThisWidth:I

    iput p1, p0, Ltw/edu/kmu/view/MapImageView;->mThisHeight:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 58
    iput p1, p0, Ltw/edu/kmu/view/MapImageView;->mMaxZoom:F

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Ltw/edu/kmu/view/MapImageView;->currentFloor:I

    .line 76
    iput-boolean p1, p0, Ltw/edu/kmu/view/MapImageView;->isEanbleGPS:Z

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Ltw/edu/kmu/view/MapImageView;->isShowCycle:Z

    .line 80
    iput-boolean p1, p0, Ltw/edu/kmu/view/MapImageView;->isDebugMode:Z

    .line 192
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/MapImageView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 457
    iput p1, p0, Ltw/edu/kmu/view/MapImageView;->_dy:F

    .line 84
    iput p3, p0, Ltw/edu/kmu/view/MapImageView;->imageHeight:I

    .line 85
    iput p2, p0, Ltw/edu/kmu/view/MapImageView;->imageWidth:I

    .line 86
    iput p4, p0, Ltw/edu/kmu/view/MapImageView;->screenWidth:I

    .line 87
    iput p5, p0, Ltw/edu/kmu/view/MapImageView;->screenHeight:I

    .line 88
    invoke-direct {p0}, Ltw/edu/kmu/view/MapImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/MapImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 41
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/MapImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/MapImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    .line 48
    new-array p1, p1, [F

    iput-object p1, p0, Ltw/edu/kmu/view/MapImageView;->mMatrixValues:[F

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Ltw/edu/kmu/view/MapImageView;->image:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Ltw/edu/kmu/view/MapImageView;->mThisWidth:I

    iput p1, p0, Ltw/edu/kmu/view/MapImageView;->mThisHeight:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 58
    iput p1, p0, Ltw/edu/kmu/view/MapImageView;->mMaxZoom:F

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Ltw/edu/kmu/view/MapImageView;->currentFloor:I

    .line 76
    iput-boolean p1, p0, Ltw/edu/kmu/view/MapImageView;->isEanbleGPS:Z

    const/4 p2, 0x1

    .line 78
    iput-boolean p2, p0, Ltw/edu/kmu/view/MapImageView;->isShowCycle:Z

    .line 80
    iput-boolean p1, p0, Ltw/edu/kmu/view/MapImageView;->isDebugMode:Z

    .line 192
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/MapImageView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 457
    iput p1, p0, Ltw/edu/kmu/view/MapImageView;->_dy:F

    .line 93
    iput p4, p0, Ltw/edu/kmu/view/MapImageView;->imageHeight:I

    .line 94
    iput p3, p0, Ltw/edu/kmu/view/MapImageView;->imageWidth:I

    .line 95
    iput p5, p0, Ltw/edu/kmu/view/MapImageView;->screenWidth:I

    .line 96
    iput p6, p0, Ltw/edu/kmu/view/MapImageView;->screenHeight:I

    .line 97
    invoke-direct {p0}, Ltw/edu/kmu/view/MapImageView;->init()V

    return-void
.end method

.method private DrawGPSDomestic(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 505
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const v3, -0xffff01

    .line 506
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 509
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/view/MapImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/view/MapImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 512
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/view/MapImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    .line 513
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/view/MapImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x2

    .line 516
    new-array v7, v6, [D

    fill-array-data v7, :array_0

    .line 517
    new-array v8, v6, [F

    fill-array-data v8, :array_1

    .line 520
    new-array v9, v6, [D

    fill-array-data v9, :array_2

    .line 521
    new-array v10, v6, [F

    fill-array-data v10, :array_3

    .line 524
    iget-boolean v11, v0, Ltw/edu/kmu/view/MapImageView;->isDebugMode:Z

    const/high16 v12, 0x41200000    # 10.0f

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v11, :cond_0

    .line 527
    aget v11, v8, v14

    mul-float v11, v11, v4

    iget v15, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    mul-float v11, v11, v15

    aget v15, v8, v13

    mul-float v15, v15, v5

    iget v6, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    mul-float v15, v15, v6

    add-float/2addr v15, v3

    invoke-virtual {v1, v11, v15, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 529
    aget v6, v10, v14

    mul-float v6, v6, v4

    iget v11, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    mul-float v6, v6, v11

    aget v11, v10, v13

    mul-float v11, v11, v5

    iget v15, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    mul-float v11, v11, v15

    add-float/2addr v11, v3

    invoke-virtual {v1, v6, v11, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 531
    iget v6, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    const/4 v11, 0x0

    mul-float v6, v6, v11

    iget v15, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    mul-float v15, v15, v11

    add-float/2addr v15, v3

    invoke-virtual {v1, v6, v15, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 534
    iget v6, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    mul-float v6, v6, v4

    iget v11, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    mul-float v11, v11, v5

    add-float/2addr v11, v3

    invoke-virtual {v1, v6, v11, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v2, 0x2

    .line 539
    new-array v2, v2, [D

    iget-wide v12, v0, Ltw/edu/kmu/view/MapImageView;->latitude:D

    aput-wide v12, v2, v14

    iget-wide v11, v0, Ltw/edu/kmu/view/MapImageView;->longitude:D

    const/4 v6, 0x1

    aput-wide v11, v2, v6

    .line 541
    aget v11, v8, v14

    aget v12, v10, v14

    sub-float/2addr v11, v12

    float-to-double v11, v11

    aget-wide v15, v7, v6

    aget-wide v17, v9, v6

    sub-double v15, v15, v17

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v15

    .line 542
    aget v8, v8, v6

    aget v13, v10, v6

    sub-float/2addr v8, v13

    float-to-double v0, v8

    aget-wide v15, v7, v14

    aget-wide v7, v9, v14

    sub-double/2addr v15, v7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v15

    .line 544
    aget-wide v7, v2, v6

    aget-wide v15, v9, v6

    sub-double/2addr v7, v15

    mul-double v7, v7, v11

    aget v6, v10, v14

    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v11

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    move-object/from16 v4, p0

    iget v6, v4, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    float-to-double v11, v3

    .line 545
    aget-wide v15, v2, v14

    aget-wide v2, v9, v14

    sub-double/2addr v15, v2

    mul-double v15, v15, v0

    const/4 v0, 0x1

    aget v0, v10, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v15, v0

    float-to-double v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v15, v0

    iget v0, v4, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v15, v0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v15

    const-string v0, "sample\u4f4d\u7f6e"

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u5b9a\u4f4d\u9ede"

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v4, Ltw/edu/kmu/view/MapImageView;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v4, Ltw/edu/kmu/view/MapImageView;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x10000

    .line 549
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 550
    iget-boolean v1, v4, Ltw/edu/kmu/view/MapImageView;->isShowCycle:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xff

    .line 551
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 553
    :cond_1
    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    double-to-float v1, v7

    double-to-float v2, v11

    move-object/from16 v3, p1

    const/high16 v5, 0x41200000    # 10.0f

    .line 555
    invoke-virtual {v3, v1, v2, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x40369225d8d79d0aL    # 22.57089
        0x405e161b089a0275L    # 120.3454
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3e851eb8    # 0.26f
    .end array-data

    :array_2
    .array-data 8
        0x40369212d77318fcL    # 22.5706
        0x405e1609fe86833cL    # 120.34436
    .end array-data

    :array_3
    .array-data 4
        0x3e051eb8    # 0.13f
        0x3f47ae14    # 0.78f
    .end array-data
.end method

.method private DrawGPSInteternal(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 559
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const v3, -0xffff01

    .line 560
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 564
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/view/MapImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/view/MapImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 567
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/view/MapImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    .line 568
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/view/MapImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x2

    .line 571
    new-array v7, v6, [D

    fill-array-data v7, :array_0

    .line 572
    new-array v8, v6, [F

    fill-array-data v8, :array_1

    .line 575
    new-array v9, v6, [D

    fill-array-data v9, :array_2

    .line 576
    new-array v10, v6, [F

    fill-array-data v10, :array_3

    .line 578
    iget-boolean v11, v0, Ltw/edu/kmu/view/MapImageView;->isDebugMode:Z

    const/high16 v12, 0x41200000    # 10.0f

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v11, :cond_0

    .line 581
    aget v11, v8, v14

    mul-float v11, v11, v4

    iget v15, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    mul-float v11, v11, v15

    aget v15, v8, v13

    mul-float v15, v15, v5

    iget v6, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    mul-float v15, v15, v6

    add-float/2addr v15, v3

    invoke-virtual {v1, v11, v15, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 583
    aget v6, v10, v14

    mul-float v6, v6, v4

    iget v11, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    mul-float v6, v6, v11

    aget v11, v10, v13

    mul-float v11, v11, v5

    iget v15, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    mul-float v11, v11, v15

    add-float/2addr v11, v3

    invoke-virtual {v1, v6, v11, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 585
    iget v6, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    const/4 v11, 0x0

    mul-float v6, v6, v11

    iget v15, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    mul-float v15, v15, v11

    add-float/2addr v15, v3

    invoke-virtual {v1, v6, v15, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 587
    iget v6, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    mul-float v6, v6, v4

    iget v11, v0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    mul-float v11, v11, v5

    add-float/2addr v11, v3

    invoke-virtual {v1, v6, v11, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v2, 0x2

    .line 594
    new-array v2, v2, [D

    iget-wide v12, v0, Ltw/edu/kmu/view/MapImageView;->latitude:D

    aput-wide v12, v2, v14

    iget-wide v11, v0, Ltw/edu/kmu/view/MapImageView;->longitude:D

    const/4 v6, 0x1

    aput-wide v11, v2, v6

    .line 596
    aget v11, v8, v14

    aget v12, v10, v14

    sub-float/2addr v11, v12

    float-to-double v11, v11

    aget-wide v15, v7, v6

    aget-wide v17, v9, v6

    sub-double v15, v15, v17

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v15

    .line 597
    aget v8, v8, v6

    aget v13, v10, v6

    sub-float/2addr v8, v13

    float-to-double v0, v8

    aget-wide v15, v7, v14

    aget-wide v7, v9, v14

    sub-double/2addr v15, v7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v15

    .line 599
    aget-wide v7, v2, v6

    aget-wide v15, v9, v6

    sub-double/2addr v7, v15

    mul-double v7, v7, v11

    aget v6, v10, v14

    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v11

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    move-object/from16 v4, p0

    iget v6, v4, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    float-to-double v11, v3

    .line 600
    aget-wide v15, v2, v14

    aget-wide v2, v9, v14

    sub-double/2addr v15, v2

    mul-double v15, v15, v0

    const/4 v0, 0x1

    aget v0, v10, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v15, v0

    float-to-double v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v15, v0

    iget v0, v4, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v15, v0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v15

    const-string v0, "sample\u4f4d\u7f6e"

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u5b9a\u4f4d\u9ede"

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v4, Ltw/edu/kmu/view/MapImageView;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v4, Ltw/edu/kmu/view/MapImageView;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x10000

    .line 604
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 605
    iget-boolean v1, v4, Ltw/edu/kmu/view/MapImageView;->isShowCycle:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xff

    .line 606
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 608
    :cond_1
    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    double-to-float v1, v7

    double-to-float v2, v11

    move-object/from16 v3, p1

    const/high16 v5, 0x41200000    # 10.0f

    .line 610
    invoke-virtual {v3, v1, v2, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x4036925657fb6998L    # 22.57163
        0x405e15d41743e964L    # 120.34107
    .end array-data

    :array_1
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3f266666    # 0.65f
    .end array-data

    :array_2
    .array-data 8
        0x40369234eb9a176eL    # 22.57112
        0x405e15cb1465e892L    # 120.34052
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f547ae1    # 0.83f
    .end array-data
.end method

.method private arithScaleRate()V
    .locals 3

    .line 145
    iget v0, p0, Ltw/edu/kmu/view/MapImageView;->screenWidth:I

    int-to-float v0, v0

    iget v1, p0, Ltw/edu/kmu/view/MapImageView;->imageWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 146
    iget v1, p0, Ltw/edu/kmu/view/MapImageView;->screenHeight:I

    int-to-float v1, v1

    iget v2, p0, Ltw/edu/kmu/view/MapImageView;->imageHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 147
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    return-void
.end method

.method private init()V
    .locals 2

    const-string v0, "MapImageView"

    const-string v1, "init start"

    .line 282
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/MapImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 6

    .line 238
    iget-object v0, p0, Ltw/edu/kmu/view/MapImageView;->image:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 245
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Ltw/edu/kmu/view/MapImageView;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Ltw/edu/kmu/view/MapImageView;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 248
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 250
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 251
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p2, :cond_3

    .line 256
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float v5, v0, p2

    if-gez v5, :cond_1

    sub-float/2addr p2, v0

    div-float/2addr p2, v3

    .line 258
    iget v0, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v0

    goto :goto_0

    .line 259
    :cond_1
    iget v0, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 260
    iget p2, v1, Landroid/graphics/RectF;->top:F

    neg-float p2, p2

    goto :goto_0

    .line 261
    :cond_2
    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float p2, v0, p2

    if-gez p2, :cond_3

    .line 262
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v0

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_6

    .line 267
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    cmpg-float v0, v2, p1

    if-gez v0, :cond_4

    sub-float/2addr p1, v2

    div-float/2addr p1, v3

    .line 269
    iget v0, v1, Landroid/graphics/RectF;->left:F

    sub-float v4, p1, v0

    goto :goto_1

    .line 270
    :cond_4
    iget v0, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 271
    iget p1, v1, Landroid/graphics/RectF;->left:F

    neg-float v4, p1

    goto :goto_1

    .line 272
    :cond_5
    iget v0, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_6

    .line 273
    iget v0, v1, Landroid/graphics/RectF;->right:F

    sub-float v4, p1, v0

    .line 277
    :cond_6
    :goto_1
    invoke-virtual {p0, v4, p2}, Ltw/edu/kmu/view/MapImageView;->postTranslate(FF)V

    .line 278
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/MapImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getCurrentFloor()I
    .locals 1

    .line 118
    iget v0, p0, Ltw/edu/kmu/view/MapImageView;->currentFloor:I

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 163
    iget v0, p0, Ltw/edu/kmu/view/MapImageView;->imageHeight:I

    return v0
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 334
    iget-object v0, p0, Ltw/edu/kmu/view/MapImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Ltw/edu/kmu/view/MapImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 335
    iget-object v0, p0, Ltw/edu/kmu/view/MapImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Ltw/edu/kmu/view/MapImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 336
    iget-object v0, p0, Ltw/edu/kmu/view/MapImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 155
    iget v0, p0, Ltw/edu/kmu/view/MapImageView;->imageWidth:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 134
    iget-wide v0, p0, Ltw/edu/kmu/view/MapImageView;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 126
    iget-wide v0, p0, Ltw/edu/kmu/view/MapImageView;->longitude:D

    return-wide v0
.end method

.method protected getScale()F
    .locals 1

    .line 327
    iget-object v0, p0, Ltw/edu/kmu/view/MapImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/MapImageView;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/view/MapImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result p1

    return p1
.end method

.method public getScaleRate()F
    .locals 1

    .line 151
    iget v0, p0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 314
    iget-object v0, p0, Ltw/edu/kmu/view/MapImageView;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 316
    iget p1, p0, Ltw/edu/kmu/view/MapImageView;->screenWidth:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, v0

    iget v0, p0, Ltw/edu/kmu/view/MapImageView;->imageWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Ltw/edu/kmu/view/MapImageView;->mMinZoom:F

    .line 318
    iget-object p1, p0, Ltw/edu/kmu/view/MapImageView;->mMatrixValues:[F

    aget p1, p1, p2

    return p1
.end method

.method public isEanbleGPS()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Ltw/edu/kmu/view/MapImageView;->isEanbleGPS:Z

    return v0
.end method

.method public isShowCycle()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Ltw/edu/kmu/view/MapImageView;->isShowCycle:Z

    return v0
.end method

.method public layoutToCenter()V
    .locals 5

    .line 292
    iget v0, p0, Ltw/edu/kmu/view/MapImageView;->imageWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getScale()F

    move-result v1

    mul-float v0, v0, v1

    .line 293
    iget v1, p0, Ltw/edu/kmu/view/MapImageView;->imageHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getScale()F

    move-result v2

    mul-float v1, v1, v2

    .line 296
    iget v2, p0, Ltw/edu/kmu/view/MapImageView;->screenWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    .line 297
    iget v0, p0, Ltw/edu/kmu/view/MapImageView;->screenHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    cmpl-float v4, v0, v3

    if-lez v4, :cond_1

    div-float v3, v0, v1

    .line 309
    :cond_1
    invoke-virtual {p0, v2, v3}, Ltw/edu/kmu/view/MapImageView;->postTranslate(FF)V

    .line 310
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/MapImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected maxZoom()F
    .locals 3

    .line 346
    iget-object v0, p0, Ltw/edu/kmu/view/MapImageView;->image:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 352
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/view/MapImageView;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Ltw/edu/kmu/view/MapImageView;->mThisWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 353
    iget-object v1, p0, Ltw/edu/kmu/view/MapImageView;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Ltw/edu/kmu/view/MapImageView;->mThisHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 354
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 487
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 489
    iget-boolean v0, p0, Ltw/edu/kmu/view/MapImageView;->isEanbleGPS:Z

    if-nez v0, :cond_0

    return-void

    .line 491
    :cond_0
    iget v0, p0, Ltw/edu/kmu/view/MapImageView;->currentFloor:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 492
    invoke-direct {p0, p1}, Ltw/edu/kmu/view/MapImageView;->DrawGPSDomestic(Landroid/graphics/Canvas;)V

    return-void

    .line 494
    :cond_1
    iget v0, p0, Ltw/edu/kmu/view/MapImageView;->currentFloor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Ltw/edu/kmu/view/MapImageView;->currentFloor:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 496
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Ltw/edu/kmu/view/MapImageView;->DrawGPSInteternal(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 172
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p1, 0x1

    return p1

    .line 176
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 181
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 185
    invoke-virtual {p0, v1}, Ltw/edu/kmu/view/MapImageView;->zoomTo(F)V

    const/4 p1, 0x1

    return p1

    .line 189
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected panBy(FF)V
    .locals 0

    .line 478
    invoke-virtual {p0, p1, p2}, Ltw/edu/kmu/view/MapImageView;->postTranslate(FF)V

    .line 479
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/MapImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public postTranslate(FF)V
    .locals 1

    .line 454
    iget-object v0, p0, Ltw/edu/kmu/view/MapImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 455
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/MapImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected postTranslateDur(FF)V
    .locals 7

    const/4 v0, 0x0

    .line 459
    iput v0, p0, Ltw/edu/kmu/view/MapImageView;->_dy:F

    div-float v6, p1, p2

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 462
    iget-object p1, p0, Ltw/edu/kmu/view/MapImageView;->mHandler:Landroid/os/Handler;

    new-instance v0, Ltw/edu/kmu/view/MapImageView$2;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Ltw/edu/kmu/view/MapImageView$2;-><init>(Ltw/edu/kmu/view/MapImageView;FJF)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCurrentFloor(I)V
    .locals 0

    .line 122
    iput p1, p0, Ltw/edu/kmu/view/MapImageView;->currentFloor:I

    return-void
.end method

.method public setEanbleGPS(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Ltw/edu/kmu/view/MapImageView;->isEanbleGPS:Z

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 197
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iput-object p1, p0, Ltw/edu/kmu/view/MapImageView;->image:Landroid/graphics/drawable/Drawable;

    .line 200
    invoke-direct {p0}, Ltw/edu/kmu/view/MapImageView;->arithScaleRate()V

    .line 202
    iget p1, p0, Ltw/edu/kmu/view/MapImageView;->scaleRate:F

    iget v0, p0, Ltw/edu/kmu/view/MapImageView;->screenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Ltw/edu/kmu/view/MapImageView;->screenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0, p1, v0, v2}, Ltw/edu/kmu/view/MapImageView;->zoomTo(FFF)V

    .line 205
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->layoutToCenter()V

    return-void
.end method

.method public setImageHeight(I)V
    .locals 0

    .line 167
    iput p1, p0, Ltw/edu/kmu/view/MapImageView;->imageHeight:I

    return-void
.end method

.method public setImageWidth(I)V
    .locals 0

    .line 159
    iput p1, p0, Ltw/edu/kmu/view/MapImageView;->imageWidth:I

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 138
    iput-wide p1, p0, Ltw/edu/kmu/view/MapImageView;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 130
    iput-wide p1, p0, Ltw/edu/kmu/view/MapImageView;->longitude:D

    return-void
.end method

.method public setShowCycle(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Ltw/edu/kmu/view/MapImageView;->isShowCycle:Z

    return-void
.end method

.method protected zoomIn()V
    .locals 1

    const/high16 v0, 0x3fa00000    # 1.25f

    .line 408
    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/MapImageView;->zoomIn(F)V

    return-void
.end method

.method protected zoomIn(F)V
    .locals 3

    .line 416
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getScale()F

    move-result v0

    iget v1, p0, Ltw/edu/kmu/view/MapImageView;->mMaxZoom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    return-void

    .line 418
    :cond_0
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getScale()F

    move-result v0

    iget v1, p0, Ltw/edu/kmu/view/MapImageView;->mMinZoom:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/view/MapImageView;->image:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    return-void

    .line 425
    :cond_2
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 426
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 428
    iget-object v1, p0, Ltw/edu/kmu/view/MapImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 429
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/MapImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected zoomOut()V
    .locals 1

    const/high16 v0, 0x3fa00000    # 1.25f

    .line 412
    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/MapImageView;->zoomOut(F)V

    return-void
.end method

.method protected zoomOut(F)V
    .locals 4

    .line 433
    iget-object v0, p0, Ltw/edu/kmu/view/MapImageView;->image:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 437
    :cond_0
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 438
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 441
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v3, p0, Ltw/edu/kmu/view/MapImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v1, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    const/high16 v3, 0x3f800000    # 1.0f

    div-float p1, v3, p1

    .line 442
    invoke-virtual {v1, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 444
    invoke-virtual {p0, v1}, Ltw/edu/kmu/view/MapImageView;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 445
    iget-object p1, p0, Ltw/edu/kmu/view/MapImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 447
    :cond_1
    iget-object v1, p0, Ltw/edu/kmu/view/MapImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 449
    :goto_0
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/MapImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 p1, 0x1

    .line 450
    invoke-virtual {p0, p1, p1}, Ltw/edu/kmu/view/MapImageView;->center(ZZ)V

    return-void
.end method

.method protected zoomTo(F)V
    .locals 3

    .line 393
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 394
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 396
    invoke-virtual {p0, p1, v0, v2}, Ltw/edu/kmu/view/MapImageView;->zoomTo(FFF)V

    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 1

    .line 359
    iget v0, p0, Ltw/edu/kmu/view/MapImageView;->mMaxZoom:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 360
    iget p1, p0, Ltw/edu/kmu/view/MapImageView;->mMaxZoom:F

    goto :goto_0

    .line 361
    :cond_0
    iget v0, p0, Ltw/edu/kmu/view/MapImageView;->mMinZoom:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 362
    iget p1, p0, Ltw/edu/kmu/view/MapImageView;->mMinZoom:F

    .line 365
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getScale()F

    move-result v0

    div-float/2addr p1, v0

    .line 368
    iget-object v0, p0, Ltw/edu/kmu/view/MapImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 369
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/MapImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 p1, 0x1

    .line 370
    invoke-virtual {p0, p1, p1}, Ltw/edu/kmu/view/MapImageView;->center(ZZ)V

    return-void
.end method

.method public zoomTo(FFFF)V
    .locals 10

    .line 374
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getScale()F

    move-result v0

    sub-float/2addr p1, v0

    div-float v6, p1, p4

    .line 375
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getScale()F

    move-result v5

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 378
    iget-object p1, p0, Ltw/edu/kmu/view/MapImageView;->mHandler:Landroid/os/Handler;

    new-instance v9, Ltw/edu/kmu/view/MapImageView$1;

    move-object v0, v9

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Ltw/edu/kmu/view/MapImageView$1;-><init>(Ltw/edu/kmu/view/MapImageView;FJFFFF)V

    invoke-virtual {p1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected zoomToPoint(FFF)V
    .locals 3

    .line 400
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 401
    invoke-virtual {p0}, Ltw/edu/kmu/view/MapImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float p2, v0, p2

    sub-float p3, v2, p3

    .line 403
    invoke-virtual {p0, p2, p3}, Ltw/edu/kmu/view/MapImageView;->panBy(FF)V

    .line 404
    invoke-virtual {p0, p1, v0, v2}, Ltw/edu/kmu/view/MapImageView;->zoomTo(FFF)V

    return-void
.end method
