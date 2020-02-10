.class public Ltw/edu/kmu/view/CoverGallery;
.super Landroid/widget/Gallery;
.source "CoverGallery.java"


# instance fields
.field private isAlphaMode:Z

.field private isCircleMode:Z

.field private mCamera:Landroid/graphics/Camera;

.field private mCoverFlowCenter:I

.field private mMaxRotationAngle:I

.field private mMaxZoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/CoverGallery;->mCamera:Landroid/graphics/Camera;

    const/16 p1, 0x3c

    .line 21
    iput p1, p0, Ltw/edu/kmu/view/CoverGallery;->mMaxRotationAngle:I

    const/16 p1, -0xfa

    .line 24
    iput p1, p0, Ltw/edu/kmu/view/CoverGallery;->mMaxZoom:I

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Ltw/edu/kmu/view/CoverGallery;->isCircleMode:Z

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Ltw/edu/kmu/view/CoverGallery;->isAlphaMode:Z

    .line 33
    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/CoverGallery;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/CoverGallery;->mCamera:Landroid/graphics/Camera;

    const/16 p1, 0x3c

    .line 21
    iput p1, p0, Ltw/edu/kmu/view/CoverGallery;->mMaxRotationAngle:I

    const/16 p1, -0xfa

    .line 24
    iput p1, p0, Ltw/edu/kmu/view/CoverGallery;->mMaxZoom:I

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Ltw/edu/kmu/view/CoverGallery;->isCircleMode:Z

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Ltw/edu/kmu/view/CoverGallery;->isAlphaMode:Z

    .line 39
    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/CoverGallery;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/view/CoverGallery;->mCamera:Landroid/graphics/Camera;

    const/16 p1, 0x3c

    .line 21
    iput p1, p0, Ltw/edu/kmu/view/CoverGallery;->mMaxRotationAngle:I

    const/16 p1, -0xfa

    .line 24
    iput p1, p0, Ltw/edu/kmu/view/CoverGallery;->mMaxZoom:I

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Ltw/edu/kmu/view/CoverGallery;->isCircleMode:Z

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Ltw/edu/kmu/view/CoverGallery;->isAlphaMode:Z

    .line 45
    invoke-virtual {p0, p1}, Ltw/edu/kmu/view/CoverGallery;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method private getCenterOfCoverflow()I
    .locals 2

    .line 112
    invoke-virtual {p0}, Ltw/edu/kmu/view/CoverGallery;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ltw/edu/kmu/view/CoverGallery;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Ltw/edu/kmu/view/CoverGallery;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ltw/edu/kmu/view/CoverGallery;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getCenterOfView(Landroid/view/View;)I
    .locals 1

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    return v0
.end method

.method private transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;I)V
    .locals 11

    .line 121
    iget-object v0, p0, Ltw/edu/kmu/view/CoverGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 122
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 123
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 124
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 125
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 126
    iget-object v3, p0, Ltw/edu/kmu/view/CoverGallery;->mCamera:Landroid/graphics/Camera;

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {v3, v4, v4, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 128
    iget v3, p0, Ltw/edu/kmu/view/CoverGallery;->mMaxRotationAngle:I

    if-gt v2, v3, :cond_2

    .line 129
    iget v3, p0, Ltw/edu/kmu/view/CoverGallery;->mMaxZoom:I

    int-to-double v5, v3

    int-to-double v7, v2

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    double-to-float v3, v5

    .line 130
    iget-object v5, p0, Ltw/edu/kmu/view/CoverGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v4, v4, v3}, Landroid/graphics/Camera;->translate(FFF)V

    .line 131
    iget-boolean v3, p0, Ltw/edu/kmu/view/CoverGallery;->isCircleMode:Z

    const/high16 v5, 0x40200000    # 2.5f

    const/high16 v6, 0x437f0000    # 255.0f

    if-eqz v3, :cond_1

    const/16 v3, 0x28

    if-ge v2, v3, :cond_0

    .line 133
    iget-object v3, p0, Ltw/edu/kmu/view/CoverGallery;->mCamera:Landroid/graphics/Camera;

    const/high16 v7, 0x431b0000    # 155.0f

    invoke-virtual {v3, v4, v7, v4}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v3, p0, Ltw/edu/kmu/view/CoverGallery;->mCamera:Landroid/graphics/Camera;

    int-to-float v7, v2

    mul-float v7, v7, v5

    sub-float v7, v6, v7

    invoke-virtual {v3, v4, v7, v4}, Landroid/graphics/Camera;->translate(FFF)V

    .line 138
    :cond_1
    :goto_0
    iget-boolean v3, p0, Ltw/edu/kmu/view/CoverGallery;->isAlphaMode:Z

    if-eqz v3, :cond_2

    int-to-float v2, v2

    mul-float v2, v2, v5

    sub-float/2addr v6, v2

    float-to-int v2, v6

    .line 139
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 142
    :cond_2
    iget-object p1, p0, Ltw/edu/kmu/view/CoverGallery;->mCamera:Landroid/graphics/Camera;

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 143
    iget-object p1, p0, Ltw/edu/kmu/view/CoverGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p1, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 144
    div-int/lit8 v1, v1, 0x2

    neg-int p1, v1

    int-to-float p1, p1

    div-int/lit8 v0, v0, 0x2

    neg-int p3, v0

    int-to-float p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float p1, v1

    int-to-float p3, v0

    .line 145
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 146
    iget-object p1, p0, Ltw/edu/kmu/view/CoverGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p1}, Landroid/graphics/Camera;->restore()V

    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 3

    .line 93
    invoke-direct {p0, p1}, Ltw/edu/kmu/view/CoverGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 97
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    const/4 v2, 0x2

    .line 98
    invoke-virtual {p2, v2}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 99
    iget v2, p0, Ltw/edu/kmu/view/CoverGallery;->mCoverFlowCenter:I

    if-ne v0, v2, :cond_0

    .line 100
    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ltw/edu/kmu/view/CoverGallery;->transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;I)V

    goto :goto_1

    .line 102
    :cond_0
    iget v2, p0, Ltw/edu/kmu/view/CoverGallery;->mCoverFlowCenter:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Ltw/edu/kmu/view/CoverGallery;->mMaxRotationAngle:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 103
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Ltw/edu/kmu/view/CoverGallery;->mMaxRotationAngle:I

    if-le v1, v2, :cond_2

    if-gez v0, :cond_1

    .line 104
    iget v0, p0, Ltw/edu/kmu/view/CoverGallery;->mMaxRotationAngle:I

    neg-int v0, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Ltw/edu/kmu/view/CoverGallery;->mMaxRotationAngle:I

    .line 106
    :cond_2
    :goto_0
    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2, v0}, Ltw/edu/kmu/view/CoverGallery;->transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;I)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public getmMaxRotationAngle()I
    .locals 1

    .line 52
    iget v0, p0, Ltw/edu/kmu/view/CoverGallery;->mMaxRotationAngle:I

    return v0
.end method

.method public getmMaxZoom()I
    .locals 1

    .line 62
    iget v0, p0, Ltw/edu/kmu/view/CoverGallery;->mMaxZoom:I

    return v0
.end method

.method public isAlphaMode()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Ltw/edu/kmu/view/CoverGallery;->isAlphaMode:Z

    return v0
.end method

.method public isCircleMode()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Ltw/edu/kmu/view/CoverGallery;->isCircleMode:Z

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 152
    invoke-direct {p0}, Ltw/edu/kmu/view/CoverGallery;->getCenterOfCoverflow()I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/view/CoverGallery;->mCoverFlowCenter:I

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onSizeChanged(IIII)V

    return-void
.end method

.method public setAlphaMode(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Ltw/edu/kmu/view/CoverGallery;->isAlphaMode:Z

    return-void
.end method

.method public setCircleMode(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Ltw/edu/kmu/view/CoverGallery;->isCircleMode:Z

    return-void
.end method

.method public setmMaxRotationAngle(I)V
    .locals 0

    .line 57
    iput p1, p0, Ltw/edu/kmu/view/CoverGallery;->mMaxRotationAngle:I

    return-void
.end method

.method public setmMaxZoom(I)V
    .locals 0

    .line 67
    iput p1, p0, Ltw/edu/kmu/view/CoverGallery;->mMaxZoom:I

    return-void
.end method
