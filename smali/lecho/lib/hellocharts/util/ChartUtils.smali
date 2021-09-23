.class public abstract Llecho/lib/hellocharts/util/ChartUtils;
.super Ljava/lang/Object;
.source "ChartUtils.java"


# static fields
.field public static final COLORS:[I

.field public static final COLOR_BLUE:I

.field public static final COLOR_GREEN:I

.field private static COLOR_INDEX:I = 0x0

.field public static final COLOR_ORANGE:I

.field public static final COLOR_RED:I

.field public static final COLOR_VIOLET:I

.field private static final DARKEN_INTENSITY:F = 0.9f

.field private static final DARKEN_SATURATION:F = 1.1f

.field public static final DEFAULT_COLOR:I

.field public static final DEFAULT_DARKEN_COLOR:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "#DFDFDF"

    .line 9
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    const-string v0, "#DDDDDD"

    .line 10
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    const-string v0, "#33B5E5"

    .line 11
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_BLUE:I

    const-string v0, "#AA66CC"

    .line 12
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_VIOLET:I

    const-string v0, "#99CC00"

    .line 13
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_GREEN:I

    const-string v0, "#FFBB33"

    .line 14
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_ORANGE:I

    const-string v0, "#FF4444"

    .line 15
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_RED:I

    const/4 v0, 0x5

    .line 16
    new-array v0, v0, [I

    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_BLUE:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_VIOLET:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_GREEN:I

    const/4 v3, 0x2

    aput v1, v0, v3

    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_ORANGE:I

    const/4 v3, 0x3

    aput v1, v0, v3

    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_RED:I

    const/4 v3, 0x4

    aput v1, v0, v3

    sput-object v0, Llecho/lib/hellocharts/util/ChartUtils;->COLORS:[I

    .line 19
    sput v2, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static darkenColor(I)I
    .locals 4

    const/4 v0, 0x3

    .line 61
    new-array v0, v0, [F

    .line 62
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 63
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x1

    .line 64
    aget v2, v0, p0

    const v3, 0x3f8ccccd    # 1.1f

    mul-float v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, p0

    const/4 p0, 0x2

    .line 65
    aget v2, v0, p0

    const v3, 0x3f666666    # 0.9f

    mul-float v2, v2, v3

    aput v2, v0, p0

    .line 66
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    .line 67
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v1, v0, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static dp2px(FI)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static mm2px(Landroid/content/Context;I)I
    .locals 1

    int-to-float p1, p1

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x5

    .line 56
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static final nextColor()I
    .locals 3

    .line 26
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_INDEX:I

    sget-object v1, Llecho/lib/hellocharts/util/ChartUtils;->COLORS:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 27
    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_INDEX:I

    .line 29
    :cond_0
    sget-object v0, Llecho/lib/hellocharts/util/ChartUtils;->COLORS:[I

    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_INDEX:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_INDEX:I

    aget v0, v0, v1

    return v0
.end method

.method public static final pickColor()I
    .locals 5

    .line 22
    sget-object v0, Llecho/lib/hellocharts/util/ChartUtils;->COLORS:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sget-object v3, Llecho/lib/hellocharts/util/ChartUtils;->COLORS:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public static px2dp(FI)I
    .locals 0

    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-double p0, p1

    .line 41
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static px2sp(FI)I
    .locals 0

    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-double p0, p1

    .line 52
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static sp2px(FI)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method
