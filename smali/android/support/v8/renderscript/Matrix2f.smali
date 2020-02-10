.class public Landroid/support/v8/renderscript/Matrix2f;
.super Ljava/lang/Object;
.source "Matrix2f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 33
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    .line 34
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix2f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 45
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    .line 46
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    iget-object v1, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public get(II)F
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1
.end method

.method public getArray()[F
    .locals 1

    .line 56
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    return-object v0
.end method

.method public load(Landroid/support/v8/renderscript/Matrix2f;)V
    .locals 3

    .line 98
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix2f;->getArray()[F

    move-result-object p1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    iget-object v1, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .line 85
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 86
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 88
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 89
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    const/4 v2, 0x3

    aput v1, v0, v2

    return-void
.end method

.method public loadMultiply(Landroid/support/v8/renderscript/Matrix2f;Landroid/support/v8/renderscript/Matrix2f;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ge v3, v2, :cond_0

    .line 141
    invoke-virtual {p2, v1, v3}, Landroid/support/v8/renderscript/Matrix2f;->get(II)F

    move-result v7

    .line 142
    invoke-virtual {p1, v3, v0}, Landroid/support/v8/renderscript/Matrix2f;->get(II)F

    move-result v8

    mul-float v8, v8, v7

    add-float/2addr v4, v8

    .line 143
    invoke-virtual {p1, v3, v6}, Landroid/support/v8/renderscript/Matrix2f;->get(II)F

    move-result v6

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 145
    :cond_0
    invoke-virtual {p0, v1, v0, v4}, Landroid/support/v8/renderscript/Matrix2f;->set(IIF)V

    .line 146
    invoke-virtual {p0, v1, v6, v5}, Landroid/support/v8/renderscript/Matrix2f;->set(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public loadRotate(F)V
    .locals 4

    const v0, 0x3c8efa35

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 109
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 111
    iget-object v1, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 112
    iget-object v1, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    neg-float v2, v0

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 113
    iget-object v1, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    const/4 v2, 0x2

    aput v0, v1, v2

    .line 114
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    return-void
.end method

.method public loadScale(FF)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix2f;->loadIdentity()V

    .line 125
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 126
    iget-object p1, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    const/4 v0, 0x3

    aput p2, p1, v0

    return-void
.end method

.method public multiply(Landroid/support/v8/renderscript/Matrix2f;)V
    .locals 1

    .line 156
    new-instance v0, Landroid/support/v8/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix2f;-><init>()V

    .line 157
    invoke-virtual {v0, p0, p1}, Landroid/support/v8/renderscript/Matrix2f;->loadMultiply(Landroid/support/v8/renderscript/Matrix2f;Landroid/support/v8/renderscript/Matrix2f;)V

    .line 158
    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix2f;->load(Landroid/support/v8/renderscript/Matrix2f;)V

    return-void
.end method

.method public rotate(F)V
    .locals 1

    .line 167
    new-instance v0, Landroid/support/v8/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix2f;-><init>()V

    .line 168
    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Matrix2f;->loadRotate(F)V

    .line 169
    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix2f;->multiply(Landroid/support/v8/renderscript/Matrix2f;)V

    return-void
.end method

.method public scale(FF)V
    .locals 1

    .line 179
    new-instance v0, Landroid/support/v8/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix2f;-><init>()V

    .line 180
    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/Matrix2f;->loadScale(FF)V

    .line 181
    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix2f;->multiply(Landroid/support/v8/renderscript/Matrix2f;)V

    return-void
.end method

.method public set(IIF)V
    .locals 1

    .line 78
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    aput p3, v0, p1

    return-void
.end method

.method public transpose()V
    .locals 5

    .line 187
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 188
    iget-object v2, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    iget-object v3, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    aput v3, v2, v1

    .line 189
    iget-object v1, p0, Landroid/support/v8/renderscript/Matrix2f;->mMat:[F

    aput v0, v1, v4

    return-void
.end method
