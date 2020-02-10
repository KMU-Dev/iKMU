.class public Llecho/lib/hellocharts/util/FloatUtils;
.super Ljava/lang/Object;
.source "FloatUtils.java"


# static fields
.field public static final POW10:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    .line 4
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Llecho/lib/hellocharts/util/FloatUtils;->POW10:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static almostEqual(FFFF)Z
    .locals 2

    sub-float v0, p0, p1

    .line 64
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x1

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_0

    return v1

    .line 69
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 70
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p2, p0, p1

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    move p0, p1

    :goto_0
    mul-float p0, p0, p3

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static computeAutoGeneratedAxisValues(FFILlecho/lib/hellocharts/util/AxisAutoValues;)V
    .locals 9

    sub-float v0, p1, p0

    float-to-double v0, v0

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    const-wide/16 v3, 0x0

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_0

    goto/16 :goto_3

    :cond_0
    int-to-double v3, p2

    .line 160
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v3

    .line 161
    invoke-static {v0, v1}, Llecho/lib/hellocharts/util/FloatUtils;->roundToOneSignificantFigure(D)F

    move-result p2

    float-to-double v0, p2

    .line 162
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v3

    double-to-int p2, v3

    int-to-double v3, p2

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 163
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v7, v0, v3

    double-to-int p2, v7

    const/4 v7, 0x5

    if-le p2, v7, :cond_1

    mul-double v3, v3, v5

    .line 166
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :cond_1
    float-to-double v3, p0

    .line 169
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    mul-double v3, v3, v0

    float-to-double p0, p1

    .line 170
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Llecho/lib/hellocharts/util/FloatUtils;->nextUp(D)D

    move-result-wide p0

    move-wide v5, v3

    const/4 p2, 0x0

    :goto_0
    cmpg-double v7, v5, p0

    if-gtz v7, :cond_2

    add-int/lit8 p2, p2, 0x1

    add-double/2addr v5, v0

    goto :goto_0

    .line 179
    :cond_2
    iput p2, p3, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    .line 181
    iget-object p0, p3, Llecho/lib/hellocharts/util/AxisAutoValues;->values:[F

    array-length p0, p0

    if-ge p0, p2, :cond_3

    .line 183
    new-array p0, p2, [F

    iput-object p0, p3, Llecho/lib/hellocharts/util/AxisAutoValues;->values:[F

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-ge p0, p2, :cond_4

    .line 187
    iget-object p1, p3, Llecho/lib/hellocharts/util/AxisAutoValues;->values:[F

    double-to-float v5, v3

    aput v5, p1, p0

    add-double/2addr v3, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, v0, p0

    if-gez p2, :cond_5

    .line 191
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide p0

    neg-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    iput p0, p3, Llecho/lib/hellocharts/util/AxisAutoValues;->decimals:I

    goto :goto_2

    .line 193
    :cond_5
    iput v2, p3, Llecho/lib/hellocharts/util/AxisAutoValues;->decimals:I

    :goto_2
    return-void

    .line 155
    :cond_6
    :goto_3
    new-array p0, v2, [F

    iput-object p0, p3, Llecho/lib/hellocharts/util/AxisAutoValues;->values:[F

    .line 156
    iput v2, p3, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    return-void
.end method

.method public static formatFloat([CFIIC)I
    .locals 10

    .line 100
    sget-object v0, Llecho/lib/hellocharts/util/FloatUtils;->POW10:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-lt p3, v0, :cond_0

    sub-int/2addr p2, v1

    const/16 p1, 0x2e

    .line 101
    aput-char p1, p0, p2

    return v1

    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0x30

    cmpl-float v3, p1, v0

    if-nez v3, :cond_1

    sub-int/2addr p2, v1

    .line 106
    aput-char v2, p0, p2

    return v1

    :cond_1
    const/4 v3, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    neg-float p1, p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 113
    :goto_0
    sget-object v4, Llecho/lib/hellocharts/util/FloatUtils;->POW10:[I

    array-length v4, v4

    if-le p3, v4, :cond_3

    .line 114
    sget-object p3, Llecho/lib/hellocharts/util/FloatUtils;->POW10:[I

    array-length p3, p3

    sub-int/2addr p3, v1

    .line 116
    :cond_3
    sget-object v4, Llecho/lib/hellocharts/util/FloatUtils;->POW10:[I

    aget v4, v4, p3

    int-to-float v4, v4

    mul-float p1, p1, v4

    .line 117
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v4, p1

    sub-int/2addr p2, v1

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_7

    add-int/lit8 p1, p3, 0x1

    if-ge v3, p1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p2, 0x1

    .line 130
    aget-char p1, p0, p1

    if-ne p1, p4, :cond_5

    add-int/lit8 p1, p2, -0x1

    .line 131
    aput-char v2, p0, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move p1, p2

    :goto_2
    if-eqz v0, :cond_6

    const/16 p2, 0x2d

    .line 135
    aput-char p2, p0, p1

    add-int/lit8 v3, v3, 0x1

    :cond_6
    return v3

    :cond_7
    :goto_3
    const-wide/16 v6, 0xa

    .line 121
    rem-long v8, v4, v6

    long-to-int p1, v8

    .line 122
    div-long/2addr v4, v6

    add-int/lit8 v1, p2, -0x1

    add-int/2addr p1, v2

    int-to-char p1, p1

    .line 123
    aput-char p1, p0, p2

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p3, :cond_8

    add-int/lit8 p1, v1, -0x1

    .line 126
    aput-char p4, p0, v1

    add-int/lit8 v3, v3, 0x1

    move p2, p1

    goto :goto_1

    :cond_8
    move p2, v1

    goto :goto_1
.end method

.method public static nextDown(D)D
    .locals 5

    .line 49
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1

    const-wide/high16 p0, -0x4960000000000000L    # -1.401298464324817E-45

    return-wide p0

    .line 55
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    cmpl-double v4, p0, v0

    if-lez v4, :cond_2

    const/4 p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    int-to-long p0, p0

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    :cond_3
    :goto_1
    return-wide p0
.end method

.method public static nextDownF(F)F
    .locals 2

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_1

    const p0, -0x7fffffff

    return p0

    .line 28
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    cmpl-float p0, p0, v0

    if-lez p0, :cond_2

    const/4 p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    add-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_3
    :goto_1
    return p0
.end method

.method public static nextUp(D)D
    .locals 5

    .line 37
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    add-double/2addr p0, v0

    .line 41
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    cmpl-double v4, p0, v0

    if-ltz v4, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    int-to-long p0, p0

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_1
    return-wide p0
.end method

.method public static nextUpF(F)F
    .locals 2

    .line 10
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    add-float/2addr p0, v0

    .line 14
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    add-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_2
    :goto_1
    return p0
.end method

.method public static roundToOneSignificantFigure(D)F
    .locals 5

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    neg-double v0, p0

    goto :goto_0

    :cond_0
    move-wide v0, p0

    .line 85
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    rsub-int/lit8 v0, v0, 0x1

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    int-to-double v3, v0

    .line 87
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, v0

    .line 88
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method
