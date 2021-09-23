.class public Llecho/lib/hellocharts/renderer/LineChartRenderer;
.super Llecho/lib/hellocharts/renderer/AbstractChartRenderer;
.source "LineChartRenderer.java"


# static fields
.field private static final DEFAULT_LINE_STROKE_WIDTH_DP:I = 0x3

.field private static final DEFAULT_TOUCH_TOLERANCE_MARGIN_DP:I = 0x4

.field private static final LINE_SMOOTHNESS:F = 0.16f

.field private static final MODE_DRAW:I = 0x0

.field private static final MODE_HIGHLIGHT:I = 0x1


# instance fields
.field private baseValue:F

.field private checkPrecision:I

.field private dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

.field private linePaint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private pointPaint:Landroid/graphics/Paint;

.field private softwareBitmap:Landroid/graphics/Bitmap;

.field private softwareCanvas:Landroid/graphics/Canvas;

.field private tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

.field private touchToleranceMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    .line 41
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    .line 42
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    .line 43
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    .line 46
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareCanvas:Landroid/graphics/Canvas;

    .line 47
    new-instance p1, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {p1}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 51
    iput-object p3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    .line 53
    iget p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/4 p2, 0x4

    invoke-static {p1, p2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result p1

    iput p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->touchToleranceMargin:I

    .line 55
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 58
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    iget p3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/4 v0, 0x3

    invoke-static {p3, v0}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/4 p2, 0x2

    invoke-static {p1, p2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result p1

    iput p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->checkPrecision:I

    return-void
.end method

.method private calculateContentRectInternalMargin()I
    .locals 4

    .line 199
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/Line;

    .line 201
    invoke-direct {p0, v2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->checkIfShouldDrawPoints(Llecho/lib/hellocharts/model/Line;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Line;->getPointRadius()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    if-le v2, v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 208
    :cond_1
    iget v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-static {v0, v1}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v0

    return v0
.end method

.method private calculateMaxViewport()V
    .locals 5

    .line 174
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    const/4 v1, 0x1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v0, v2, v1, v1, v2}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    .line 175
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/Line;

    .line 179
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/PointValue;

    .line 180
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v3

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v4, v4, Llecho/lib/hellocharts/model/Viewport;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 181
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v4

    iput v4, v3, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 183
    :cond_2
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v3

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v4, v4, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 184
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v4

    iput v4, v3, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 186
    :cond_3
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v3

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v4, v4, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 187
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v4

    iput v4, v3, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 189
    :cond_4
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v3

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v4, v4, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 190
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v2

    iput v2, v3, Llecho/lib/hellocharts/model/Viewport;->top:F

    goto :goto_0

    :cond_5
    return-void
.end method

.method private checkIfShouldDrawPoints(Llecho/lib/hellocharts/model/Line;)Z
    .locals 2

    .line 147
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Line;->hasPoints()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private drawArea(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V
    .locals 6

    .line 477
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 483
    :cond_0
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    .line 484
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->baseValue:F

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 487
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llecho/lib/hellocharts/model/PointValue;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 488
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v5

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/PointValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v0

    invoke-virtual {v4, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v0

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 491
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 492
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 493
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 495
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 496
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getAreaTransparency()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 497
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 498
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V
    .locals 9

    .line 431
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    .line 432
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getFormatter()Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    move-result-object v1

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBuffer:[C

    invoke-interface {v1, v2, p3}, Llecho/lib/hellocharts/formatter/LineChartValueFormatter;->formatChartValue([CLlecho/lib/hellocharts/model/PointValue;)I

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 438
    :cond_0
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBuffer:[C

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBuffer:[C

    array-length v3, v3

    sub-int/2addr v3, v7

    invoke-virtual {v1, v2, v3, v7}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 439
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    sub-float v4, p4, v3

    .line 440
    iget v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    add-float/2addr v3, p4

    .line 441
    iget v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    .line 446
    invoke-virtual {p3}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result p3

    iget v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->baseValue:F

    cmpl-float p3, p3, v5

    if-ltz p3, :cond_1

    sub-float p3, p5, p6

    int-to-float v5, v2

    sub-float v5, p3, v5

    .line 447
    iget v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    goto :goto_0

    :cond_1
    add-float v5, p5, p6

    int-to-float p3, v2

    add-float/2addr p3, v5

    .line 451
    iget v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr p3, v6

    .line 454
    :goto_0
    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_2

    add-float v5, p5, p6

    int-to-float p3, v2

    add-float/2addr p3, v5

    .line 456
    iget v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr p3, v6

    .line 458
    :cond_2
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    cmpl-float v6, p3, v6

    if-lez v6, :cond_3

    sub-float p3, p5, p6

    int-to-float p5, v2

    sub-float p5, p3, p5

    .line 459
    iget p6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 p6, p6, 0x2

    int-to-float p6, p6

    sub-float v5, p5, p6

    .line 462
    :cond_3
    iget p5, v0, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    cmpg-float p5, v4, p5

    if-gez p5, :cond_4

    add-float p5, p4, v1

    .line 464
    iget p6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 p6, p6, 0x2

    int-to-float p6, p6

    add-float/2addr p5, p6

    move v4, p4

    goto :goto_1

    :cond_4
    move p5, v3

    .line 466
    :goto_1
    iget p6, v0, Landroid/graphics/Rect;->right:I

    int-to-float p6, p6

    cmpl-float p6, p5, p6

    if-lez p6, :cond_5

    sub-float p5, p4, v1

    .line 467
    iget p6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 p6, p6, 0x2

    int-to-float p6, p6

    sub-float v4, p5, p6

    goto :goto_2

    :cond_5
    move p4, p5

    .line 471
    :goto_2
    iget-object p5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p5, v4, v5, p4, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 472
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBuffer:[C

    iget-object p3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBuffer:[C

    array-length p3, p3

    sub-int v6, p3, v7

    .line 473
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getDarkenColor()I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    .line 472
    invoke-virtual/range {v3 .. v8}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawLabelTextAndBackground(Landroid/graphics/Canvas;[CIII)V

    return-void
.end method

.method private drawPath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V
    .locals 5

    .line 215
    invoke-direct {p0, p2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->prepareLinePaint(Llecho/lib/hellocharts/model/Line;)V

    .line 218
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/PointValue;

    .line 220
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v3

    .line 221
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v2

    invoke-virtual {v4, v2}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v2

    if-nez v1, :cond_0

    .line 224
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 226
    :cond_0
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 235
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->isFilled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawArea(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    .line 239
    :cond_2
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method private drawPoint(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V
    .locals 6

    .line 396
    sget-object p3, Llecho/lib/hellocharts/model/ValueShape;->SQUARE:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v0

    invoke-virtual {p3, v0}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    sub-float v1, p4, p6

    sub-float v2, p5, p6

    add-float v3, p4, p6

    add-float v4, p5, p6

    .line 397
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 399
    :cond_0
    sget-object p3, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v0

    invoke-virtual {p3, v0}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 400
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p5, p6, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 401
    :cond_1
    sget-object p3, Llecho/lib/hellocharts/model/ValueShape;->DIAMOND:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v0

    invoke-virtual {p3, v0}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 402
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 p2, 0x42340000    # 45.0f

    .line 403
    invoke-virtual {p1, p2, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    sub-float v1, p4, p6

    sub-float v2, p5, p6

    add-float v3, p4, p6

    add-float v4, p5, p6

    .line 404
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 406
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void

    .line 408
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid point shape: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private drawPoints(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;II)V
    .locals 15

    move-object v8, p0

    move/from16 v9, p4

    .line 369
    iget-object v0, v8, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->getPointColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Llecho/lib/hellocharts/model/PointValue;

    .line 372
    iget v0, v8, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->getPointRadius()I

    move-result v1

    invoke-static {v0, v1}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v12

    .line 373
    iget-object v0, v8, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v7}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v13

    .line 374
    iget-object v0, v8, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v7}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v14

    .line 375
    iget-object v0, v8, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v1, v8, Llecho/lib/hellocharts/renderer/LineChartRenderer;->checkPrecision:I

    int-to-float v1, v1

    invoke-virtual {v0, v13, v14, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->isWithinContentRect(FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v9, :cond_0

    int-to-float v6, v12

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    move v4, v13

    move v5, v14

    .line 380
    invoke-direct/range {v0 .. v6}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawPoint(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->hasLabels()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    iget v0, v8, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelOffset:I

    add-int/2addr v12, v0

    int-to-float v6, v12

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    move v4, v13

    move v5, v14

    invoke-direct/range {v0 .. v6}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne v0, v9, :cond_1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    move v4, v13

    move v5, v14

    move/from16 v6, p3

    move v7, v11

    .line 385
    invoke-direct/range {v0 .. v7}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->highlightPoint(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFII)V

    goto :goto_1

    .line 387
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot process points in mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private drawSmoothPath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 275
    invoke-direct {v0, v1}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->prepareLinePaint(Llecho/lib/hellocharts/model/Line;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/4 v4, 0x0

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/high16 v8, 0x7fc00000    # Float.NaN

    const/high16 v9, 0x7fc00000    # Float.NaN

    :goto_0
    if-ge v4, v2, :cond_7

    .line 288
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 289
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/PointValue;

    .line 290
    iget-object v6, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v10

    invoke-virtual {v6, v10}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v6

    .line 291
    iget-object v10, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v3

    invoke-virtual {v10, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v3

    move/from16 v19, v6

    move v6, v3

    move/from16 v3, v19

    .line 293
    :cond_0
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_2

    if-lez v4, :cond_1

    .line 295
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v5

    add-int/lit8 v8, v4, -0x1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llecho/lib/hellocharts/model/PointValue;

    .line 296
    iget-object v8, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v5}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v10

    invoke-virtual {v8, v10}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v8

    .line 297
    iget-object v10, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v5}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v5

    invoke-virtual {v10, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v5

    move/from16 v19, v8

    move v8, v5

    move/from16 v5, v19

    goto :goto_1

    :cond_1
    move v5, v3

    move v8, v6

    .line 304
    :cond_2
    :goto_1
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v7, 0x1

    if-le v4, v7, :cond_3

    .line 306
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v7

    add-int/lit8 v9, v4, -0x2

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llecho/lib/hellocharts/model/PointValue;

    .line 307
    iget-object v9, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v7}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v10

    invoke-virtual {v9, v10}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v9

    .line 308
    iget-object v10, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v7}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v7

    invoke-virtual {v10, v7}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v7

    move/from16 v19, v9

    move v9, v7

    move/from16 v7, v19

    goto :goto_2

    :cond_3
    move v7, v5

    move v9, v8

    :cond_4
    :goto_2
    add-int/lit8 v10, v2, -0x1

    if-ge v4, v10, :cond_5

    .line 317
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v10

    add-int/lit8 v11, v4, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Llecho/lib/hellocharts/model/PointValue;

    .line 318
    iget-object v11, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v10}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v12

    invoke-virtual {v11, v12}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v11

    .line 319
    iget-object v12, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v10}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v10

    invoke-virtual {v12, v10}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v10

    move/from16 v18, v10

    move/from16 v17, v11

    goto :goto_3

    :cond_5
    move/from16 v17, v3

    move/from16 v18, v6

    :goto_3
    if-nez v4, :cond_6

    .line 327
    iget-object v7, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_4

    :cond_6
    sub-float v7, v3, v7

    sub-float v9, v6, v9

    sub-float v10, v17, v5

    sub-float v11, v18, v8

    const v12, 0x3e23d70a    # 0.16f

    mul-float v7, v7, v12

    add-float/2addr v7, v5

    mul-float v9, v9, v12

    add-float/2addr v9, v8

    mul-float v10, v10, v12

    sub-float v13, v3, v10

    mul-float v11, v11, v12

    sub-float v14, v6, v11

    .line 338
    iget-object v10, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    move v11, v7

    move v12, v9

    move v15, v3

    move/from16 v16, v6

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v7, v5

    move v9, v8

    move v5, v3

    move v8, v6

    move/from16 v3, v17

    move/from16 v6, v18

    goto/16 :goto_0

    .line 352
    :cond_7
    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->isFilled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 354
    invoke-direct/range {p0 .. p2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawArea(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    .line 356
    :cond_8
    iget-object v1, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method private drawSquarePath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V
    .locals 6

    .line 243
    invoke-direct {p0, p2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->prepareLinePaint(Llecho/lib/hellocharts/model/Line;)V

    .line 247
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/PointValue;

    .line 249
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v4

    .line 250
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v3

    invoke-virtual {v5, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v3

    if-nez v1, :cond_0

    .line 253
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 255
    :cond_0
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 267
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->isFilled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawArea(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    .line 271
    :cond_2
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method private highlightPoint(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFII)V
    .locals 7

    .line 420
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v0

    if-ne v0, p6, :cond_1

    iget-object p6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {p6}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result p6

    if-ne p6, p7, :cond_1

    .line 421
    iget p6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getPointRadius()I

    move-result p7

    invoke-static {p6, p7}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result p6

    .line 422
    iget-object p7, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getDarkenColor()I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    iget p7, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->touchToleranceMargin:I

    add-int/2addr p7, p6

    int-to-float v6, p7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawPoint(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V

    .line 424
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->hasLabels()Z

    move-result p7

    if-nez p7, :cond_0

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected()Z

    move-result p7

    if-eqz p7, :cond_1

    .line 425
    :cond_0
    iget p7, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelOffset:I

    add-int/2addr p6, p7

    int-to-float v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V

    :cond_1
    return-void
.end method

.method private highlightPoints(Landroid/graphics/Canvas;)V
    .locals 3

    .line 413
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v0

    .line 414
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v1}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/Line;

    const/4 v2, 0x1

    .line 415
    invoke-direct {p0, p1, v1, v0, v2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawPoints(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;II)V

    return-void
.end method

.method private isInArea(FFFFF)Z
    .locals 2

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    float-to-double p1, p3

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 504
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    float-to-double p3, p4

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    add-double/2addr p1, p3

    float-to-double p3, p5

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    mul-double p3, p3, v0

    cmpg-double p5, p1, p3

    if-gtz p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private prepareLinePaint(Llecho/lib/hellocharts/model/Line;)V
    .locals 3

    .line 360
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Line;->getStrokeWidth()I

    move-result v2

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 361
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Line;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Line;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method


# virtual methods
.method public checkTouch(FF)Z
    .locals 12

    .line 152
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 153
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/Line;

    .line 156
    invoke-direct {p0, v0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->checkIfShouldDrawPoints(Llecho/lib/hellocharts/model/Line;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Line;->getPointRadius()I

    move-result v2

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v9

    .line 159
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/PointValue;

    .line 160
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v1

    .line 161
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v0

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v2

    .line 162
    iget v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->touchToleranceMargin:I

    add-int/2addr v0, v9

    int-to-float v5, v0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->isInArea(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    sget-object v1, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->LINE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v0, v8, v11, v1}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->isTouched()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 100
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    .line 106
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    .line 108
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 113
    :goto_0
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/Line;

    .line 114
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Line;->hasLines()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Line;->isCubic()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    invoke-direct {p0, v1, v2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawSmoothPath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Line;->isSquare()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    invoke-direct {p0, v1, v2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawSquarePath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    goto :goto_1

    .line 120
    :cond_3
    invoke-direct {p0, v1, v2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawPath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    goto :goto_1

    .line 125
    :cond_4
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 126
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public drawUnclipped(Landroid/graphics/Canvas;)V
    .locals 5

    .line 132
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/Line;

    .line 135
    invoke-direct {p0, v3}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->checkIfShouldDrawPoints(Llecho/lib/hellocharts/model/Line;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-direct {p0, p1, v3, v2, v1}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawPoints(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->highlightPoints(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public onChartDataChanged()V
    .locals 2

    .line 80
    invoke-super {p0}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->onChartDataChanged()V

    .line 81
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->calculateContentRectInternalMargin()I

    move-result v0

    .line 82
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1, v0, v0, v0, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRectByInternalMargins(IIII)V

    .line 84
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getBaseValue()F

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->baseValue:F

    .line 86
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->onChartViewportChanged()V

    return-void
.end method

.method public onChartSizeChanged()V
    .locals 3

    .line 68
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->calculateContentRectInternalMargin()I

    move-result v0

    .line 69
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1, v0, v0, v0, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRectByInternalMargins(IIII)V

    .line 71
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getChartWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getChartHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getChartWidth()I

    move-result v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getChartHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    .line 74
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onChartViewportChanged()V
    .locals 2

    .line 91
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->isViewportCalculationEnabled:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->calculateMaxViewport()V

    .line 93
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 94
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    :cond_0
    return-void
.end method
