.class public Llecho/lib/hellocharts/renderer/AxesRenderer;
.super Ljava/lang/Object;
.source "AxesRenderer.java"


# static fields
.field private static final BOTTOM:I = 0x3

.field private static final DEFAULT_AXIS_MARGIN_DP:I = 0x2

.field private static final LEFT:I = 0x1

.field private static final RIGHT:I = 0x2

.field private static final TOP:I

.field private static final labelWidthChars:[C


# instance fields
.field private autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

.field private autoValuesToDrawTab:[[F

.field private axisMargin:I

.field private chart:Llecho/lib/hellocharts/view/Chart;

.field private computator:Llecho/lib/hellocharts/computator/ChartComputator;

.field private density:F

.field private fontMetricsTab:[Landroid/graphics/Paint$FontMetricsInt;

.field private labelBaselineTab:[F

.field private labelBuffer:[C

.field private labelDimensionForMarginsTab:[I

.field private labelDimensionForStepsTab:[I

.field private labelPaintTab:[Landroid/graphics/Paint;

.field private labelTextAscentTab:[I

.field private labelTextDescentTab:[I

.field private labelWidthTab:[I

.field private linePaintTab:[Landroid/graphics/Paint;

.field private linesDrawBufferTab:[[F

.field private nameBaselineTab:[F

.field private namePaintTab:[Landroid/graphics/Paint;

.field private rawValuesTab:[[F

.field private scaledDensity:F

.field private separationLineTab:[F

.field private tiltedLabelXTranslation:[I

.field private tiltedLabelYTranslation:[I

.field private valuesToDrawNumTab:[I

.field private valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    .line 39
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthChars:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V
    .locals 7

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 50
    new-array v1, v0, [Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    .line 51
    new-array v1, v0, [Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v6

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    .line 52
    new-array v1, v0, [Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v6

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linePaintTab:[Landroid/graphics/Paint;

    .line 53
    new-array v1, v0, [F

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    .line 54
    new-array v1, v0, [F

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    .line 55
    new-array v1, v0, [F

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    .line 56
    new-array v1, v0, [I

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    .line 57
    new-array v1, v0, [I

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    .line 58
    new-array v1, v0, [I

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    .line 59
    new-array v1, v0, [I

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    .line 60
    new-array v1, v0, [I

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    .line 61
    new-array v1, v0, [I

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelXTranslation:[I

    .line 62
    new-array v1, v0, [I

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelYTranslation:[I

    .line 63
    new-array v1, v0, [Landroid/graphics/Paint$FontMetricsInt;

    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    aput-object v2, v1, v6

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->fontMetricsTab:[Landroid/graphics/Paint$FontMetricsInt;

    const/16 v1, 0x40

    .line 68
    new-array v1, v1, [C

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    .line 73
    new-array v1, v0, [I

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawNumTab:[I

    .line 78
    filled-new-array {v0, v3}, [I

    move-result-object v1

    const-class v2, F

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    .line 84
    filled-new-array {v0, v3}, [I

    move-result-object v1

    const-class v2, F

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesToDrawTab:[[F

    .line 89
    filled-new-array {v0, v3}, [I

    move-result-object v1

    const-class v2, Llecho/lib/hellocharts/model/AxisValue;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Llecho/lib/hellocharts/model/AxisValue;

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;

    .line 94
    filled-new-array {v0, v3}, [I

    move-result-object v1

    const-class v2, F

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    .line 99
    new-array v1, v0, [Llecho/lib/hellocharts/util/AxisAutoValues;

    new-instance v2, Llecho/lib/hellocharts/util/AxisAutoValues;

    invoke-direct {v2}, Llecho/lib/hellocharts/util/AxisAutoValues;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Llecho/lib/hellocharts/util/AxisAutoValues;

    invoke-direct {v2}, Llecho/lib/hellocharts/util/AxisAutoValues;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Llecho/lib/hellocharts/util/AxisAutoValues;

    invoke-direct {v2}, Llecho/lib/hellocharts/util/AxisAutoValues;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Llecho/lib/hellocharts/util/AxisAutoValues;

    invoke-direct {v2}, Llecho/lib/hellocharts/util/AxisAutoValues;-><init>()V

    aput-object v2, v1, v6

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    .line 103
    iput-object p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    .line 104
    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object p2

    iput-object p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->density:F

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->scaledDensity:F

    .line 107
    iget p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->density:F

    invoke-static {p1, v5}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result p1

    iput p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    :goto_0
    if-ge v3, v0, :cond_0

    .line 109
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, v3

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, v3

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, v3

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, v3

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linePaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, v3

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linePaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, v3

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkRawValue(Landroid/graphics/Rect;FZIZ)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    if-eqz p5, :cond_1

    .line 512
    iget-object p4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    const/4 p5, 0x3

    aget p4, p4, p5

    iget p5, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr p4, p5

    int-to-float p4, p4

    .line 513
    iget-object p5, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget p5, p5, p3

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr p5, v1

    int-to-float p5, p5

    .line 514
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, p4

    cmpg-float p4, p2, v1

    if-gtz p4, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr p1, p5

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    return v0

    :cond_0
    return p3

    .line 520
    :cond_1
    iget-object p5, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    aget p4, p5, p4

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    .line 521
    iget p5, p1, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    add-float/2addr p5, p4

    cmpl-float p5, p2, p5

    if-ltz p5, :cond_2

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    sub-float/2addr p1, p4

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_2

    return v0

    :cond_2
    return p3

    :cond_3
    return v0
.end method

.method private drawAxisLabelsAndName(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V
    .locals 12

    .line 576
    invoke-direct {p0, p3}, Llecho/lib/hellocharts/renderer/AxesRenderer;->isAxisVertical(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v1, p3, :cond_2

    const/4 v1, 0x2

    if-ne v1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const/4 v1, 0x3

    if-ne v1, p3, :cond_3

    .line 580
    :cond_1
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v1, v1, p3

    goto :goto_1

    .line 578
    :cond_2
    :goto_0
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v1, v1, p3

    move v2, v1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x0

    .line 583
    :goto_2
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawNumTab:[I

    aget v4, v4, p3

    if-ge v3, v4, :cond_7

    .line 585
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 586
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesToDrawTab:[[F

    aget-object v4, v4, p3

    aget v4, v4, v3

    .line 587
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->getFormatter()Llecho/lib/hellocharts/formatter/AxisValueFormatter;

    move-result-object v5

    iget-object v6, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    iget-object v7, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v7, v7, p3

    iget v7, v7, Llecho/lib/hellocharts/util/AxisAutoValues;->decimals:I

    invoke-interface {v5, v6, v4, v7}, Llecho/lib/hellocharts/formatter/AxisValueFormatter;->formatValueForAutoGeneratedAxis([CFI)I

    move-result v4

    :goto_3
    move v8, v4

    goto :goto_4

    .line 590
    :cond_4
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;

    aget-object v4, v4, p3

    aget-object v4, v4, v3

    .line 591
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->getFormatter()Llecho/lib/hellocharts/formatter/AxisValueFormatter;

    move-result-object v5

    iget-object v6, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    invoke-interface {v5, v6, v4}, Llecho/lib/hellocharts/formatter/AxisValueFormatter;->formatValueForManualAxis([CLlecho/lib/hellocharts/model/AxisValue;)I

    move-result v4

    goto :goto_3

    :goto_4
    if-eqz v0, :cond_5

    .line 595
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v1, v1, p3

    aget v1, v1, v3

    goto :goto_5

    .line 597
    :cond_5
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v2, v2, p3

    aget v2, v2, v3

    .line 600
    :goto_5
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->hasTiltedLabels()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 601
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 602
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelXTranslation:[I

    aget v4, v4, p3

    int-to-float v4, v4

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelYTranslation:[I

    aget v5, v5, p3

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v4, -0x3dcc0000    # -45.0f

    .line 603
    invoke-virtual {p1, v4, v2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 604
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    array-length v4, v4

    sub-int v7, v4, v8

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v11, v4, p3

    move-object v5, p1

    move v9, v2

    move v10, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 606
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    .line 608
    :cond_6
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    array-length v4, v4

    sub-int v7, v4, v8

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v11, v4, p3

    move-object v5, p1

    move v9, v2

    move v10, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 614
    :cond_7
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v1

    .line 615
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v0, :cond_8

    .line 617
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 618
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 619
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    aget v1, v1, p3

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object p3, v2, p3

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 621
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    .line 623
    :cond_8
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    aget v1, v1, p3

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object p3, v2, p3

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9
    :goto_7
    return-void
.end method

.method private drawAxisLines(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 532
    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v2

    .line 537
    invoke-direct {v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->isAxisVertical(I)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v6, v1, :cond_3

    const/4 v6, 0x2

    if-ne v6, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_2

    if-ne v4, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_2

    .line 545
    :cond_2
    :goto_0
    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    .line 546
    iget v7, v2, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    .line 547
    iget-object v8, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    aget v8, v8, v1

    .line 548
    iget v9, v2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    .line 549
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move v11, v6

    move v13, v7

    move v12, v8

    move v14, v12

    move v6, v2

    const/4 v2, 0x0

    goto :goto_2

    .line 539
    :cond_3
    :goto_1
    iget-object v6, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    aget v6, v6, v1

    .line 540
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    .line 541
    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    .line 542
    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    .line 543
    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move v11, v6

    move v13, v11

    move v12, v7

    move v14, v8

    move v5, v9

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 552
    :goto_2
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Axis;->hasSeparationLine()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 553
    iget-object v7, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v15, v7, v1

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 556
    :cond_4
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Axis;->hasLines()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    move v8, v6

    move v6, v2

    const/4 v2, 0x0

    .line 558
    :goto_3
    iget-object v10, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawNumTab:[I

    aget v10, v10, v1

    if-ge v2, v10, :cond_6

    if-eqz v3, :cond_5

    .line 560
    iget-object v8, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v8, v8, v1

    aget v8, v8, v2

    move v9, v8

    goto :goto_4

    .line 562
    :cond_5
    iget-object v5, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v5, v5, v1

    aget v5, v5, v2

    move v6, v5

    .line 564
    :goto_4
    iget-object v10, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v10, v10, v1

    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v12, v11, 0x0

    aput v5, v10, v12

    .line 565
    iget-object v10, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v10, v10, v1

    add-int/lit8 v12, v11, 0x1

    aput v9, v10, v12

    .line 566
    iget-object v10, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v10, v10, v1

    add-int/lit8 v12, v11, 0x2

    aput v6, v10, v12

    .line 567
    iget-object v10, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v10, v10, v1

    add-int/2addr v11, v4

    aput v8, v10, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 569
    :cond_6
    iget-object v3, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v3, v3, v1

    mul-int/lit8 v2, v2, 0x4

    iget-object v4, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linePaintTab:[Landroid/graphics/Paint;

    aget-object v1, v4, v1

    move-object/from16 v4, p1

    invoke-virtual {v4, v3, v7, v2, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method private getAxisNameMargin(Llecho/lib/hellocharts/model/Axis;I)I
    .locals 1

    .line 257
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 258
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget p1, p1, p2

    add-int/2addr p1, v0

    .line 259
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget p2, v0, p2

    add-int/2addr p1, p2

    .line 260
    iget p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int v0, p1, p2

    :cond_0
    return v0
.end method

.method private initAxis(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisAttributes(Llecho/lib/hellocharts/model/Axis;I)V

    .line 145
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisMargin(Llecho/lib/hellocharts/model/Axis;I)V

    .line 146
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisMeasurements(Llecho/lib/hellocharts/model/Axis;I)V

    return-void
.end method

.method private initAxisAttributes(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 1

    .line 150
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisPaints(Llecho/lib/hellocharts/model/Axis;I)V

    .line 151
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisTextAlignment(Llecho/lib/hellocharts/model/Axis;I)V

    .line 152
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->hasTiltedLabels()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisDimensionForTiltedLabels(I)V

    .line 154
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->intiTiltedLabelsTranslation(Llecho/lib/hellocharts/model/Axis;I)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-direct {p0, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisDimension(I)V

    :goto_0
    return-void
.end method

.method private initAxisDimension(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq v0, p1, :cond_2

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    .line 210
    :cond_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p1

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    aput v1, v0, p1

    .line 212
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    aget v1, v1, p1

    aput v1, v0, p1

    goto :goto_1

    .line 207
    :cond_2
    :goto_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    aget v1, v1, p1

    aput v1, v0, p1

    .line 208
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p1

    aput v1, v0, p1

    :cond_3
    :goto_1
    return-void
.end method

.method private initAxisDimensionForTiltedLabels(I)V
    .locals 6

    .line 199
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    aget v0, v0, p1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 200
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p1

    int-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 201
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    add-int/2addr v1, v0

    aput v1, v2, p1

    .line 202
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v1, v1, p1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, v0, p1

    return-void
.end method

.method private initAxisMargin(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 3

    .line 248
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    :cond_0
    iget v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v2, v2, p2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 251
    :cond_1
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->getAxisNameMargin(Llecho/lib/hellocharts/model/Axis;I)I

    move-result p1

    add-int/2addr v1, p1

    .line 252
    invoke-direct {p0, v1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->insetContentRectWithAxesMargins(II)V

    return-void
.end method

.method private initAxisMeasurements(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 279
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 280
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    .line 281
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v1, v1, p2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    goto :goto_0

    .line 284
    :cond_0
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    .line 285
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v0, v0, p2

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v1, v1, p2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v1, v1, p2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, p2

    .line 288
    :goto_0
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    aput v0, p1, p2

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p2, :cond_3

    .line 290
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 291
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    .line 292
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    goto :goto_1

    .line 295
    :cond_2
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    .line 296
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v0, v0, p2

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v1, v1, p2

    int-to-float v1, v1

    add-float/2addr v0, v1

    aput v0, p1, p2

    .line 299
    :goto_1
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    aput v0, p1, p2

    goto/16 :goto_4

    :cond_3
    const/4 v0, 0x3

    if-ne v0, p2, :cond_5

    .line 301
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 302
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v1, v1, p2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    .line 304
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    goto :goto_2

    .line 307
    :cond_4
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    .line 309
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v0, v0, p2

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v1, v1, p2

    int-to-float v1, v1

    add-float/2addr v0, v1

    aput v0, p1, p2

    .line 312
    :goto_2
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    aput v0, p1, p2

    goto :goto_4

    :cond_5
    if-nez p2, :cond_7

    .line 314
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 315
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    .line 317
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v1, v1, p2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    goto :goto_3

    .line 320
    :cond_6
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v1, v1, p2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, p2

    .line 322
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v0, v0, p2

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v1, v1, p2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, p2

    .line 325
    :goto_3
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    aput v0, p1, p2

    :goto_4
    return-void

    .line 327
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid axis position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initAxisPaints(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 4

    .line 161
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 164
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 166
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->scaledDensity:F

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getTextSize()I

    move-result v2

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->sp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 168
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->fontMetricsTab:[Landroid/graphics/Paint$FontMetricsInt;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 169
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->scaledDensity:F

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getTextSize()I

    move-result v2

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->sp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 171
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linePaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getLineColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->fontMetricsTab:[Landroid/graphics/Paint$FontMetricsInt;

    aget-object v1, v1, p2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aput v1, v0, p2

    .line 174
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->fontMetricsTab:[Landroid/graphics/Paint$FontMetricsInt;

    aget-object v1, v1, p2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aput v1, v0, p2

    .line 175
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, p2

    sget-object v2, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthChars:[C

    const/4 v3, 0x0

    .line 176
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getMaxLabelChars()I

    move-result p1

    .line 175
    invoke-virtual {v1, v2, v3, p1}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    float-to-int p1, p1

    aput p1, v0, p2

    return-void
.end method

.method private initAxisTextAlignment(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 2

    .line 180
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz p2, :cond_4

    const/4 v0, 0x3

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2

    .line 184
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, p2

    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 187
    :cond_1
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, p2

    sget-object p2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne v0, p2, :cond_5

    .line 190
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 191
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, p2

    sget-object p2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 193
    :cond_3
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, p2

    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 182
    :cond_4
    :goto_0
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object p1, p1, p2

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private insetContentRectWithAxesMargins(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p2, :cond_0

    .line 267
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v0, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRect(IIII)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, p2, :cond_1

    .line 269
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object p2

    invoke-virtual {p2, v0, v0, p1, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRect(IIII)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 271
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object p2

    invoke-virtual {p2, v0, p1, v0, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRect(IIII)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v1, p2, :cond_3

    .line 273
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object p2

    invoke-virtual {p2, v0, v0, v0, p1}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRect(IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method private intiTiltedLabelsTranslation(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 6

    .line 217
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    aget v0, v0, p2

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 218
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p2

    int-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 221
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result p1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p1, :cond_3

    if-ne v3, p2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v5, p2, :cond_1

    neg-int p1, v0

    .line 225
    div-int/2addr p1, v5

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    .line 227
    div-int/2addr v0, v5

    add-int/2addr v1, v0

    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget p1, p1, p2

    sub-int p1, v1, p1

    goto :goto_1

    :cond_2
    if-ne v2, p2, :cond_5

    neg-int p1, v0

    .line 229
    div-int/2addr p1, v5

    goto :goto_1

    :cond_3
    if-ne v3, p2, :cond_4

    neg-int p1, v0

    .line 233
    div-int/2addr p1, v5

    goto :goto_1

    :cond_4
    if-ne v5, p2, :cond_6

    :goto_0
    move v4, v1

    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    if-nez p2, :cond_7

    neg-int p1, v0

    .line 237
    div-int/2addr p1, v5

    goto :goto_1

    :cond_7
    if-ne v2, p2, :cond_5

    .line 239
    div-int/2addr v0, v5

    add-int/2addr v1, v0

    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget p1, p1, p2

    sub-int p1, v1, p1

    .line 242
    :goto_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelXTranslation:[I

    aput v4, v0, p2

    .line 243
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelYTranslation:[I

    aput p1, v0, p2

    return-void
.end method

.method private isAxisVertical(I)Z
    .locals 3

    const/4 v0, 0x1

    if-eq v0, p1, :cond_3

    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 635
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid axis position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private onChartDataOrSizeChanged()V
    .locals 2

    .line 127
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisXTop()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxis(Llecho/lib/hellocharts/model/Axis;I)V

    .line 128
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxis(Llecho/lib/hellocharts/model/Axis;I)V

    .line 129
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisYLeft()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxis(Llecho/lib/hellocharts/model/Axis;I)V

    .line 130
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxis(Llecho/lib/hellocharts/model/Axis;I)V

    return-void
.end method

.method private prepareAutoGeneratedAxis(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 11

    .line 463
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getVisibleViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 464
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    .line 465
    invoke-direct {p0, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->isAxisVertical(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 469
    iget v2, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 470
    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 471
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_0

    .line 473
    :cond_0
    iget v2, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 474
    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 475
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 477
    :goto_0
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    aget v4, v4, p2

    div-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v4, v4, p2

    invoke-static {v2, v0, v3, v4}, Llecho/lib/hellocharts/util/FloatUtils;->computeAutoGeneratedAxisValues(FFILlecho/lib/hellocharts/util/AxisAutoValues;)V

    .line 480
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->hasLines()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v0, v0, p2

    array-length v0, v0

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v2, v2, p2

    iget v2, v2, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    mul-int/lit8 v2, v2, 0x4

    if-ge v0, v2, :cond_1

    .line 482
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v2, v2, p2

    iget v2, v2, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [F

    aput-object v2, v0, p2

    .line 485
    :cond_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v0, v0, p2

    array-length v0, v0

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v2, v2, p2

    iget v2, v2, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    if-ge v0, v2, :cond_2

    .line 486
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v2, v2, p2

    iget v2, v2, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    new-array v2, v2, [F

    aput-object v2, v0, p2

    .line 488
    :cond_2
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesToDrawTab:[[F

    aget-object v0, v0, p2

    array-length v0, v0

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v2, v2, p2

    iget v2, v2, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    if-ge v0, v2, :cond_3

    .line 489
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesToDrawTab:[[F

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v2, v2, p2

    iget v2, v2, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    new-array v2, v2, [F

    aput-object v2, v0, p2

    :cond_3
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 494
    :goto_1
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v2, v2, p2

    iget v2, v2, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    if-ge v0, v2, :cond_6

    if-eqz v8, :cond_4

    .line 496
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v3, v3, p2

    iget-object v3, v3, Llecho/lib/hellocharts/util/AxisAutoValues;->values:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v2

    :goto_2
    move v10, v2

    goto :goto_3

    .line 498
    :cond_4
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v3, v3, p2

    iget-object v3, v3, Llecho/lib/hellocharts/util/AxisAutoValues;->values:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v2

    goto :goto_2

    .line 500
    :goto_3
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result v5

    move-object v2, p0

    move-object v3, v1

    move v4, v10

    move v6, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Llecho/lib/hellocharts/renderer/AxesRenderer;->checkRawValue(Landroid/graphics/Rect;FZIZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 501
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v2, v2, p2

    aput v10, v2, v9

    .line 502
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesToDrawTab:[[F

    aget-object v2, v2, p2

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v3, v3, p2

    iget-object v3, v3, Llecho/lib/hellocharts/util/AxisAutoValues;->values:[F

    aget v3, v3, v0

    aput v3, v2, v9

    add-int/lit8 v9, v9, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 506
    :cond_6
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawNumTab:[I

    aput v9, p1, p2

    return-void
.end method

.method private prepareAxisToDraw(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 1

    .line 363
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareAutoGeneratedAxis(Llecho/lib/hellocharts/model/Axis;I)V

    goto :goto_0

    .line 366
    :cond_0
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareCustomAxis(Llecho/lib/hellocharts/model/Axis;I)V

    :goto_0
    return-void
.end method

.method private prepareCustomAxis(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 18

    move-object/from16 v6, p0

    move/from16 v7, p2

    .line 398
    iget-object v0, v6, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 399
    iget-object v1, v6, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getVisibleViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    .line 400
    iget-object v2, v6, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v8

    .line 401
    invoke-direct {v6, v7}, Llecho/lib/hellocharts/renderer/AxesRenderer;->isAxisVertical(I)Z

    move-result v9

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v9, :cond_1

    .line 405
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_0

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_0

    .line 406
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v0

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v5

    div-float/2addr v0, v5

    mul-float v0, v0, v4

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 408
    :goto_0
    iget v4, v1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 409
    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->top:F

    :goto_1
    move v11, v1

    move v10, v4

    goto :goto_3

    .line 411
    :cond_1
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_2

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_2

    .line 412
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v0

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v5

    div-float/2addr v0, v5

    mul-float v0, v0, v4

    goto :goto_2

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 414
    :goto_2
    iget v4, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 415
    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->right:F

    goto :goto_1

    :goto_3
    cmpl-float v1, v0, v3

    if-nez v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_3
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 421
    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v6, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    aget v4, v4, v7

    mul-int v3, v3, v4

    int-to-double v3, v3

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v12

    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    .line 420
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v12, v0

    .line 423
    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->hasLines()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v0, v0, v7

    array-length v0, v0

    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_4

    .line 424
    iget-object v0, v6, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [F

    aput-object v1, v0, v7

    .line 427
    :cond_4
    iget-object v0, v6, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v0, v0, v7

    array-length v0, v0

    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 428
    iget-object v0, v6, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    aput-object v1, v0, v7

    .line 431
    :cond_5
    iget-object v0, v6, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;

    aget-object v0, v0, v7

    array-length v0, v0

    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 432
    iget-object v0, v6, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;

    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Llecho/lib/hellocharts/model/AxisValue;

    aput-object v1, v0, v7

    .line 438
    :cond_6
    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v0, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_7
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Llecho/lib/hellocharts/model/AxisValue;

    .line 440
    invoke-virtual/range {v16 .. v16}, Llecho/lib/hellocharts/model/AxisValue;->getValue()F

    move-result v0

    cmpl-float v1, v0, v10

    if-ltz v1, :cond_7

    cmpg-float v1, v0, v11

    if-gtz v1, :cond_7

    .line 443
    rem-int v1, v15, v12

    if-nez v1, :cond_9

    if-eqz v9, :cond_8

    .line 445
    iget-object v1, v6, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v0

    :goto_5
    move/from16 v17, v0

    goto :goto_6

    .line 447
    :cond_8
    iget-object v1, v6, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v0

    goto :goto_5

    .line 449
    :goto_6
    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result v3

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v17

    move/from16 v4, p2

    move v5, v9

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/AxesRenderer;->checkRawValue(Landroid/graphics/Rect;FZIZ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 450
    iget-object v0, v6, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v0, v0, v7

    aput v17, v0, v14

    .line 451
    iget-object v0, v6, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;

    aget-object v0, v0, v7

    aput-object v16, v0, v14

    add-int/lit8 v14, v14, 0x1

    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 459
    :cond_a
    iget-object v0, v6, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawNumTab:[I

    aput v14, v0, v7

    return-void
.end method


# virtual methods
.method public drawInBackground(Landroid/graphics/Canvas;)V
    .locals 2

    .line 337
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisYLeft()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 339
    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareAxisToDraw(Llecho/lib/hellocharts/model/Axis;I)V

    .line 340
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLines(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 343
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 345
    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareAxisToDraw(Llecho/lib/hellocharts/model/Axis;I)V

    .line 346
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLines(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 349
    :cond_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 351
    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareAxisToDraw(Llecho/lib/hellocharts/model/Axis;I)V

    .line 352
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLines(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 355
    :cond_2
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisXTop()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 357
    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareAxisToDraw(Llecho/lib/hellocharts/model/Axis;I)V

    .line 358
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLines(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    :cond_3
    return-void
.end method

.method public drawInForeground(Landroid/graphics/Canvas;)V
    .locals 2

    .line 376
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisYLeft()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 378
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLabelsAndName(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 381
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 383
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLabelsAndName(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 386
    :cond_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 388
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLabelsAndName(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 391
    :cond_2
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisXTop()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 393
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLabelsAndName(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    :cond_3
    return-void
.end method

.method public onChartDataChanged()V
    .locals 0

    .line 123
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/AxesRenderer;->onChartDataOrSizeChanged()V

    return-void
.end method

.method public onChartSizeChanged()V
    .locals 0

    .line 119
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/AxesRenderer;->onChartDataOrSizeChanged()V

    return-void
.end method

.method public resetRenderer()V
    .locals 1

    .line 134
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    return-void
.end method
