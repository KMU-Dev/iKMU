.class public Ltw/edu/kmu/view/ZoomImageView;
.super Landroid/widget/ImageView;
.source "ZoomImageView.java"


# static fields
.field static final SCALE_RATE:F = 1.25f

.field private static final TAG:Ljava/lang/String; = "ZoomImageView"


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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 1

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 38
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 42
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    .line 45
    new-array p1, p1, [F

    iput-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mMatrixValues:[F

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->image:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mThisWidth:I

    iput p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mThisHeight:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 55
    iput p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mMaxZoom:F

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Ltw/edu/kmu/view/ZoomImageView;->currentFloor:I

    .line 73
    iput-boolean p1, p0, Ltw/edu/kmu/view/ZoomImageView;->isEanbleGPS:Z

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Ltw/edu/kmu/view/ZoomImageView;->isShowCycle:Z

    .line 77
    iput-boolean p1, p0, Ltw/edu/kmu/view/ZoomImageView;->isDebugMode:Z

    .line 194
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 459
    iput p1, p0, Ltw/edu/kmu/view/ZoomImageView;->_dy:F

    .line 81
    iput p3, p0, Ltw/edu/kmu/view/ZoomImageView;->imageHeight:I

    .line 82
    iput p2, p0, Ltw/edu/kmu/view/ZoomImageView;->imageWidth:I

    .line 83
    iput p4, p0, Ltw/edu/kmu/view/ZoomImageView;->screenWidth:I

    .line 84
    iput p5, p0, Ltw/edu/kmu/view/ZoomImageView;->screenHeight:I

    .line 85
    invoke-direct {p0}, Ltw/edu/kmu/view/ZoomImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 38
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 42
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    .line 45
    new-array p1, p1, [F

    iput-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mMatrixValues:[F

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->image:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mThisWidth:I

    iput p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mThisHeight:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 55
    iput p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mMaxZoom:F

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Ltw/edu/kmu/view/ZoomImageView;->currentFloor:I

    .line 73
    iput-boolean p1, p0, Ltw/edu/kmu/view/ZoomImageView;->isEanbleGPS:Z

    const/4 p2, 0x1

    .line 75
    iput-boolean p2, p0, Ltw/edu/kmu/view/ZoomImageView;->isShowCycle:Z

    .line 77
    iput-boolean p1, p0, Ltw/edu/kmu/view/ZoomImageView;->isDebugMode:Z

    .line 194
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 459
    iput p1, p0, Ltw/edu/kmu/view/ZoomImageView;->_dy:F

    .line 90
    iput p4, p0, Ltw/edu/kmu/view/ZoomImageView;->imageHeight:I

    .line 91
    iput p3, p0, Ltw/edu/kmu/view/ZoomImageView;->imageWidth:I

    .line 92
    iput p5, p0, Ltw/edu/kmu/view/ZoomImageView;->screenWidth:I

    .line 93
    iput p6, p0, Ltw/edu/kmu/view/ZoomImageView;->screenHeight:I

    .line 94
    invoke-direct {p0}, Ltw/edu/kmu/view/ZoomImageView;->init()V

    return-void
.end method

.method private DrawGPSDomestic(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 507
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const v3, -0xffff01

    .line 508
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 511
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/view/ZoomImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/view/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 514
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/view/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    .line 515
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/view/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x2

    .line 518
    new-array v7, v6, [D

    fill-array-data v7, :array_0

    .line 519
    new-array v8, v6, [F

    fill-array-data v8, :array_1

    .line 522
    new-array v9, v6, [D

    fill-array-data v9, :array_2

    .line 523
    new-array v10, v6, [F

    fill-array-data v10, :array_3

    .line 526
    iget-boolean v11, v0, Ltw/edu/kmu/view/ZoomImageView;->isDebugMode:Z

    const/high16 v12, 0x41200000    # 10.0f

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v11, :cond_0

    .line 529
    aget v11, v8, v14

    mul-float v11, v11, v4

    iget v15, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    mul-float v11, v11, v15

    aget v15, v8, v13

    mul-float v15, v15, v5

    iget v6, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    mul-float v15, v15, v6

    add-float/2addr v15, v3

    invoke-virtual {v1, v11, v15, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 531
    aget v6, v10, v14

    mul-float v6, v6, v4

    iget v11, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    mul-float v6, v6, v11

    aget v11, v10, v13

    mul-float v11, v11, v5

    iget v15, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    mul-float v11, v11, v15

    add-float/2addr v11, v3

    invoke-virtual {v1, v6, v11, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 533
    iget v6, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    const/4 v11, 0x0

    mul-float v6, v6, v11

    iget v15, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    mul-float v15, v15, v11

    add-float/2addr v15, v3

    invoke-virtual {v1, v6, v15, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 536
    iget v6, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    mul-float v6, v6, v4

    iget v11, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    mul-float v11, v11, v5

    add-float/2addr v11, v3

    invoke-virtual {v1, v6, v11, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v2, 0x2

    .line 541
    new-array v2, v2, [D

    iget-wide v12, v0, Ltw/edu/kmu/view/ZoomImageView;->latitude:D

    aput-wide v12, v2, v14

    iget-wide v11, v0, Ltw/edu/kmu/view/ZoomImageView;->longitude:D

    const/4 v6, 0x1

    aput-wide v11, v2, v6

    .line 543
    aget v11, v8, v14

    aget v12, v10, v14

    sub-float/2addr v11, v12

    float-to-double v11, v11

    aget-wide v15, v7, v6

    aget-wide v17, v9, v6

    sub-double v15, v15, v17

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v15

    .line 544
    aget v8, v8, v6

    aget v13, v10, v6

    sub-float/2addr v8, v13

    float-to-double v0, v8

    aget-wide v15, v7, v14

    aget-wide v7, v9, v14

    sub-double/2addr v15, v7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v15

    .line 546
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

    iget v6, v4, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    float-to-double v11, v3

    .line 547
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

    iget v0, v4, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v15, v0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v15

    const-string v0, "sample\u4f4d\u7f6e"

    .line 548
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

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v4, Ltw/edu/kmu/view/ZoomImageView;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v4, Ltw/edu/kmu/view/ZoomImageView;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x10000

    .line 551
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 552
    iget-boolean v1, v4, Ltw/edu/kmu/view/ZoomImageView;->isShowCycle:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xff

    .line 553
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 555
    :cond_1
    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    double-to-float v1, v7

    double-to-float v2, v11

    move-object/from16 v3, p1

    const/high16 v5, 0x41200000    # 10.0f

    .line 557
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

    .line 561
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const v3, -0xffff01

    .line 562
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 566
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/view/ZoomImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/view/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 569
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/view/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    .line 570
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/view/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x2

    .line 573
    new-array v7, v6, [D

    fill-array-data v7, :array_0

    .line 574
    new-array v8, v6, [F

    fill-array-data v8, :array_1

    .line 577
    new-array v9, v6, [D

    fill-array-data v9, :array_2

    .line 578
    new-array v10, v6, [F

    fill-array-data v10, :array_3

    .line 580
    iget-boolean v11, v0, Ltw/edu/kmu/view/ZoomImageView;->isDebugMode:Z

    const/high16 v12, 0x41200000    # 10.0f

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v11, :cond_0

    .line 583
    aget v11, v8, v14

    mul-float v11, v11, v4

    iget v15, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    mul-float v11, v11, v15

    aget v15, v8, v13

    mul-float v15, v15, v5

    iget v6, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    mul-float v15, v15, v6

    add-float/2addr v15, v3

    invoke-virtual {v1, v11, v15, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 585
    aget v6, v10, v14

    mul-float v6, v6, v4

    iget v11, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    mul-float v6, v6, v11

    aget v11, v10, v13

    mul-float v11, v11, v5

    iget v15, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    mul-float v11, v11, v15

    add-float/2addr v11, v3

    invoke-virtual {v1, v6, v11, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 587
    iget v6, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    const/4 v11, 0x0

    mul-float v6, v6, v11

    iget v15, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    mul-float v15, v15, v11

    add-float/2addr v15, v3

    invoke-virtual {v1, v6, v15, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 589
    iget v6, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    mul-float v6, v6, v4

    iget v11, v0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    mul-float v11, v11, v5

    add-float/2addr v11, v3

    invoke-virtual {v1, v6, v11, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v2, 0x2

    .line 596
    new-array v2, v2, [D

    iget-wide v12, v0, Ltw/edu/kmu/view/ZoomImageView;->latitude:D

    aput-wide v12, v2, v14

    iget-wide v11, v0, Ltw/edu/kmu/view/ZoomImageView;->longitude:D

    const/4 v6, 0x1

    aput-wide v11, v2, v6

    .line 598
    aget v11, v8, v14

    aget v12, v10, v14

    sub-float/2addr v11, v12

    float-to-double v11, v11

    aget-wide v15, v7, v6

    aget-wide v17, v9, v6

    sub-double v15, v15, v17

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v15

    .line 599
    aget v8, v8, v6

    aget v13, v10, v6

    sub-float/2addr v8, v13

    float-to-double v0, v8

    aget-wide v15, v7, v14

    aget-wide v7, v9, v14

    sub-double/2addr v15, v7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v15

    .line 601
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

    iget v6, v4, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    float-to-double v11, v3

    .line 602
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

    iget v0, v4, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v15, v0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v15

    const-string v0, "sample\u4f4d\u7f6e"

    .line 603
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

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v4, Ltw/edu/kmu/view/ZoomImageView;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v4, Ltw/edu/kmu/view/ZoomImageView;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x10000

    .line 606
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 607
    iget-boolean v1, v4, Ltw/edu/kmu/view/ZoomImageView;->isShowCycle:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xff

    .line 608
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 610
    :cond_1
    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    double-to-float v1, v7

    double-to-float v2, v11

    move-object/from16 v3, p1

    const/high16 v5, 0x41200000    # 10.0f

    .line 612
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

    .line 147
    iget v0, p0, Ltw/edu/kmu/view/ZoomImageView;->screenWidth:I

    int-to-float v0, v0

    iget v1, p0, Ltw/edu/kmu/view/ZoomImageView;->imageWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 148
    iget v1, p0, Ltw/edu/kmu/view/ZoomImageView;->screenHeight:I

    int-to-float v1, v1

    iget v2, p0, Ltw/edu/kmu/view/ZoomImageView;->imageHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 149
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    return-void
.end method

.method private init()V
    .locals 2

    .line 284
    sget-object v0, Ltw/edu/kmu/view/ZoomImageView;->TAG:Ljava/lang/String;

    const-string v1, "init start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/ZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 6

    .line 240
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageView;->image:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 247
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Ltw/edu/kmu/view/ZoomImageView;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Ltw/edu/kmu/view/ZoomImageView;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 250
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 252
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 253
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p2, :cond_3

    .line 258
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float v5, v0, p2

    if-gez v5, :cond_1

    sub-float/2addr p2, v0

    div-float/2addr p2, v3

    .line 260
    iget v0, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v0

    goto :goto_0

    .line 261
    :cond_1
    iget v0, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 262
    iget p2, v1, Landroid/graphics/RectF;->top:F

    neg-float p2, p2

    goto :goto_0

    .line 263
    :cond_2
    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float p2, v0, p2

    if-gez p2, :cond_3

    .line 264
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v0

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_6

    .line 269
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    cmpg-float v0, v2, p1

    if-gez v0, :cond_4

    sub-float/2addr p1, v2

    div-float/2addr p1, v3

    .line 271
    iget v0, v1, Landroid/graphics/RectF;->left:F

    sub-float v4, p1, v0

    goto :goto_1

    .line 272
    :cond_4
    iget v0, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 273
    iget p1, v1, Landroid/graphics/RectF;->left:F

    neg-float v4, p1

    goto :goto_1

    .line 274
    :cond_5
    iget v0, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_6

    .line 275
    iget v0, v1, Landroid/graphics/RectF;->right:F

    sub-float v4, p1, v0

    .line 279
    :cond_6
    :goto_1
    invoke-virtual {p0, v4, p2}, Ltw/edu/kmu/view/ZoomImageView;->postTranslate(FF)V

    .line 280
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getCurrentFloor()I
    .locals 1

    .line 115
    iget v0, p0, Ltw/edu/kmu/view/ZoomImageView;->currentFloor:I

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 165
    iget v0, p0, Ltw/edu/kmu/view/ZoomImageView;->imageHeight:I

    return v0
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 336
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Ltw/edu/kmu/view/ZoomImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 337
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Ltw/edu/kmu/view/ZoomImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 338
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 157
    iget v0, p0, Ltw/edu/kmu/view/ZoomImageView;->imageWidth:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 131
    iget-wide v0, p0, Ltw/edu/kmu/view/ZoomImageView;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 123
    iget-wide v0, p0, Ltw/edu/kmu/view/ZoomImageView;->longitude:D

    return-wide v0
.end method

.method protected getScale()F
    .locals 1

    .line 329
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/ZoomImageView;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/view/ZoomImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result p1

    return p1
.end method

.method public getScaleRate()F
    .locals 1

    .line 153
    iget v0, p0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 316
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageView;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 318
    iget p1, p0, Ltw/edu/kmu/view/ZoomImageView;->screenWidth:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, v0

    iget v0, p0, Ltw/edu/kmu/view/ZoomImageView;->imageWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mMinZoom:F

    .line 320
    iget-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mMatrixValues:[F

    aget p1, p1, p2

    return p1
.end method

.method public isEanbleGPS()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Ltw/edu/kmu/view/ZoomImageView;->isEanbleGPS:Z

    return v0
.end method

.method public isShowCycle()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Ltw/edu/kmu/view/ZoomImageView;->isShowCycle:Z

    return v0
.end method

.method public layoutToCenter()V
    .locals 5

    .line 294
    iget v0, p0, Ltw/edu/kmu/view/ZoomImageView;->imageWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getScale()F

    move-result v1

    mul-float v0, v0, v1

    .line 295
    iget v1, p0, Ltw/edu/kmu/view/ZoomImageView;->imageHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getScale()F

    move-result v2

    mul-float v1, v1, v2

    .line 298
    iget v2, p0, Ltw/edu/kmu/view/ZoomImageView;->screenWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    .line 299
    iget v0, p0, Ltw/edu/kmu/view/ZoomImageView;->screenHeight:I

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

    .line 311
    :cond_1
    invoke-virtual {p0, v2, v3}, Ltw/edu/kmu/view/ZoomImageView;->postTranslate(FF)V

    .line 312
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected maxZoom()F
    .locals 3

    .line 348
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageView;->image:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 354
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageView;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Ltw/edu/kmu/view/ZoomImageView;->mThisWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 355
    iget-object v1, p0, Ltw/edu/kmu/view/ZoomImageView;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Ltw/edu/kmu/view/ZoomImageView;->mThisHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 356
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 489
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 491
    iget-boolean v0, p0, Ltw/edu/kmu/view/ZoomImageView;->isEanbleGPS:Z

    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    iget v0, p0, Ltw/edu/kmu/view/ZoomImageView;->currentFloor:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 494
    invoke-direct {p0, p1}, Ltw/edu/kmu/view/ZoomImageView;->DrawGPSDomestic(Landroid/graphics/Canvas;)V

    return-void

    .line 496
    :cond_1
    iget v0, p0, Ltw/edu/kmu/view/ZoomImageView;->currentFloor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Ltw/edu/kmu/view/ZoomImageView;->currentFloor:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 498
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Ltw/edu/kmu/view/ZoomImageView;->DrawGPSInteternal(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 174
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p1, 0x1

    return p1

    .line 178
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 183
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 187
    invoke-virtual {p0, v1}, Ltw/edu/kmu/view/ZoomImageView;->zoomTo(F)V

    const/4 p1, 0x1

    return p1

    .line 191
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected panBy(FF)V
    .locals 0

    .line 480
    invoke-virtual {p0, p1, p2}, Ltw/edu/kmu/view/ZoomImageView;->postTranslate(FF)V

    .line 481
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public postTranslate(FF)V
    .locals 1

    .line 456
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 457
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected postTranslateDur(FF)V
    .locals 7

    const/4 v0, 0x0

    .line 461
    iput v0, p0, Ltw/edu/kmu/view/ZoomImageView;->_dy:F

    div-float v6, p1, p2

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 464
    iget-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mHandler:Landroid/os/Handler;

    new-instance v0, Ltw/edu/kmu/view/ZoomImageView$2;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Ltw/edu/kmu/view/ZoomImageView$2;-><init>(Ltw/edu/kmu/view/ZoomImageView;FJF)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCurrentFloor(I)V
    .locals 0

    .line 119
    iput p1, p0, Ltw/edu/kmu/view/ZoomImageView;->currentFloor:I

    return-void
.end method

.method public setEanbleGPS(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Ltw/edu/kmu/view/ZoomImageView;->isEanbleGPS:Z

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 199
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    iput-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->image:Landroid/graphics/drawable/Drawable;

    .line 202
    invoke-direct {p0}, Ltw/edu/kmu/view/ZoomImageView;->arithScaleRate()V

    .line 204
    iget p1, p0, Ltw/edu/kmu/view/ZoomImageView;->scaleRate:F

    iget v0, p0, Ltw/edu/kmu/view/ZoomImageView;->screenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Ltw/edu/kmu/view/ZoomImageView;->screenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0, p1, v0, v2}, Ltw/edu/kmu/view/ZoomImageView;->zoomTo(FFF)V

    .line 207
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->layoutToCenter()V

    return-void
.end method

.method public setImageHeight(I)V
    .locals 0

    .line 169
    iput p1, p0, Ltw/edu/kmu/view/ZoomImageView;->imageHeight:I

    return-void
.end method

.method public setImageWidth(I)V
    .locals 0

    .line 161
    iput p1, p0, Ltw/edu/kmu/view/ZoomImageView;->imageWidth:I

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 135
    iput-wide p1, p0, Ltw/edu/kmu/view/ZoomImageView;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 127
    iput-wide p1, p0, Ltw/edu/kmu/view/ZoomImageView;->longitude:D

    return-void
.end method

.method public setMMaxZoom(F)V
    .locals 0

    .line 139
    iput p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mMaxZoom:F

    return-void
.end method

.method public setShowCycle(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Ltw/edu/kmu/view/ZoomImageView;->isShowCycle:Z

    return-void
.end method

.method protected zoomIn()V
    .locals 1

    const/high16 v0, 0x3fa00000    # 1.25f

    .line 410
    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/ZoomImageView;->zoomIn(F)V

    return-void
.end method

.method protected zoomIn(F)V
    .locals 3

    .line 418
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getScale()F

    move-result v0

    iget v1, p0, Ltw/edu/kmu/view/ZoomImageView;->mMaxZoom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getScale()F

    move-result v0

    iget v1, p0, Ltw/edu/kmu/view/ZoomImageView;->mMinZoom:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageView;->image:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    return-void

    .line 427
    :cond_2
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 428
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 430
    iget-object v1, p0, Ltw/edu/kmu/view/ZoomImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 431
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected zoomOut()V
    .locals 1

    const/high16 v0, 0x3fa00000    # 1.25f

    .line 414
    invoke-virtual {p0, v0}, Ltw/edu/kmu/view/ZoomImageView;->zoomOut(F)V

    return-void
.end method

.method protected zoomOut(F)V
    .locals 4

    .line 435
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageView;->image:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 440
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 443
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v3, p0, Ltw/edu/kmu/view/ZoomImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v1, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    const/high16 v3, 0x3f800000    # 1.0f

    div-float p1, v3, p1

    .line 444
    invoke-virtual {v1, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 446
    invoke-virtual {p0, v1}, Ltw/edu/kmu/view/ZoomImageView;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 447
    iget-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 449
    :cond_1
    iget-object v1, p0, Ltw/edu/kmu/view/ZoomImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 451
    :goto_0
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 p1, 0x1

    .line 452
    invoke-virtual {p0, p1, p1}, Ltw/edu/kmu/view/ZoomImageView;->center(ZZ)V

    return-void
.end method

.method protected zoomTo(F)V
    .locals 3

    .line 395
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 396
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 398
    invoke-virtual {p0, p1, v0, v2}, Ltw/edu/kmu/view/ZoomImageView;->zoomTo(FFF)V

    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 1

    .line 361
    iget v0, p0, Ltw/edu/kmu/view/ZoomImageView;->mMaxZoom:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 362
    iget p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mMaxZoom:F

    goto :goto_0

    .line 363
    :cond_0
    iget v0, p0, Ltw/edu/kmu/view/ZoomImageView;->mMinZoom:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 364
    iget p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mMinZoom:F

    .line 367
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getScale()F

    move-result v0

    div-float/2addr p1, v0

    .line 370
    iget-object v0, p0, Ltw/edu/kmu/view/ZoomImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 371
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 p1, 0x1

    .line 372
    invoke-virtual {p0, p1, p1}, Ltw/edu/kmu/view/ZoomImageView;->center(ZZ)V

    return-void
.end method

.method public zoomTo(FFFF)V
    .locals 10

    .line 376
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getScale()F

    move-result v0

    sub-float/2addr p1, v0

    div-float v6, p1, p4

    .line 377
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getScale()F

    move-result v5

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 380
    iget-object p1, p0, Ltw/edu/kmu/view/ZoomImageView;->mHandler:Landroid/os/Handler;

    new-instance v9, Ltw/edu/kmu/view/ZoomImageView$1;

    move-object v0, v9

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Ltw/edu/kmu/view/ZoomImageView$1;-><init>(Ltw/edu/kmu/view/ZoomImageView;FJFFFF)V

    invoke-virtual {p1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected zoomToPoint(FFF)V
    .locals 3

    .line 402
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 403
    invoke-virtual {p0}, Ltw/edu/kmu/view/ZoomImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float p2, v0, p2

    sub-float p3, v2, p3

    .line 405
    invoke-virtual {p0, p2, p3}, Ltw/edu/kmu/view/ZoomImageView;->panBy(FF)V

    .line 406
    invoke-virtual {p0, p1, v0, v2}, Ltw/edu/kmu/view/ZoomImageView;->zoomTo(FFF)V

    return-void
.end method
