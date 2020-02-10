.class public Llecho/lib/hellocharts/renderer/BubbleChartRenderer;
.super Llecho/lib/hellocharts/renderer/AbstractChartRenderer;
.source "BubbleChartRenderer.java"


# static fields
.field private static final DEFAULT_TOUCH_ADDITIONAL_DP:I = 0x4

.field private static final MODE_DRAW:I = 0x0

.field private static final MODE_HIGHLIGHT:I = 0x1


# instance fields
.field private bubbleCenter:Landroid/graphics/PointF;

.field private bubblePaint:Landroid/graphics/Paint;

.field private bubbleRect:Landroid/graphics/RectF;

.field private bubbleScaleX:F

.field private bubbleScaleY:F

.field private dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

.field private hasLabels:Z

.field private hasLabelsOnlyForSelected:Z

.field private isBubbleScaledByX:Z

.field private maxRadius:F

.field private minRawRadius:F

.field private tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

.field private touchAdditional:I

.field private valueFormatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/BubbleChartDataProvider;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->isBubbleScaledByX:Z

    .line 55
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    .line 56
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubblePaint:Landroid/graphics/Paint;

    .line 61
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleRect:Landroid/graphics/RectF;

    .line 66
    new-instance p2, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {p2}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object p2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 70
    iput-object p3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

    .line 72
    iget p2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->density:F

    const/4 p3, 0x4

    invoke-static {p2, p3}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result p2

    iput p2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->touchAdditional:I

    .line 74
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubblePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubblePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private calculateMaxViewport()V
    .locals 6

    .line 305
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v1}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    .line 306
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/BubbleChartDataProvider;->getBubbleChartData()Llecho/lib/hellocharts/model/BubbleChartData;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleChartData;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/BubbleValue;

    .line 309
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/BubbleValue;->getZ()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1

    .line 310
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/BubbleValue;->getZ()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 312
    :cond_1
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/BubbleValue;->getX()F

    move-result v4

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v5, v5, Llecho/lib/hellocharts/model/Viewport;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 313
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/BubbleValue;->getX()F

    move-result v5

    iput v5, v4, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 315
    :cond_2
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/BubbleValue;->getX()F

    move-result v4

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v5, v5, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 316
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/BubbleValue;->getX()F

    move-result v5

    iput v5, v4, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 318
    :cond_3
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/BubbleValue;->getY()F

    move-result v4

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v5, v5, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 319
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/BubbleValue;->getY()F

    move-result v5

    iput v5, v4, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 321
    :cond_4
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/BubbleValue;->getY()F

    move-result v4

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v5, v5, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 322
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/BubbleValue;->getY()F

    move-result v3

    iput v3, v4, Llecho/lib/hellocharts/model/Viewport;->top:F

    goto :goto_0

    :cond_5
    float-to-double v1, v2

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    .line 326
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->maxRadius:F

    .line 329
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v1

    iget v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->maxRadius:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v2, v2, v3

    div-float/2addr v1, v2

    iput v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleX:F

    .line 330
    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleX:F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_6

    .line 332
    iput v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleX:F

    .line 335
    :cond_6
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v1

    iget v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->maxRadius:F

    mul-float v5, v5, v3

    div-float/2addr v1, v5

    iput v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleY:F

    .line 336
    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleY:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_7

    .line 338
    iput v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleY:F

    .line 342
    :cond_7
    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleX:F

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleChartData;->getBubbleScale()F

    move-result v2

    mul-float v1, v1, v2

    iput v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleX:F

    .line 343
    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleY:F

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleChartData;->getBubbleScale()F

    move-result v0

    mul-float v1, v1, v0

    iput v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleY:F

    .line 346
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->maxRadius:F

    neg-float v1, v1

    iget v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleX:F

    mul-float v1, v1, v2

    iget v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->maxRadius:F

    neg-float v2, v2

    iget v3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleY:F

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Llecho/lib/hellocharts/model/Viewport;->inset(FF)V

    .line 348
    iget v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->density:F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

    invoke-interface {v1}, Llecho/lib/hellocharts/provider/BubbleChartDataProvider;->getBubbleChartData()Llecho/lib/hellocharts/model/BubbleChartData;

    move-result-object v1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/BubbleChartData;->getMinBubbleRadius()I

    move-result v1

    invoke-static {v0, v1}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->minRawRadius:F

    return-void
.end method

.method private drawBubble(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;)V
    .locals 4

    .line 193
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    invoke-direct {p0, p2, v0}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->processBubble(Llecho/lib/hellocharts/model/BubbleValue;Landroid/graphics/PointF;)F

    move-result v0

    .line 195
    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->touchAdditional:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 196
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleRect:Landroid/graphics/RectF;

    iget v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->touchAdditional:I

    int-to-float v2, v2

    iget v3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->touchAdditional:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 197
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubblePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/BubbleValue;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 198
    invoke-direct {p0, p1, p2, v0, v1}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->drawBubbleShapeAndLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;FI)V

    return-void
.end method

.method private drawBubbleShapeAndLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;FI)V
    .locals 3

    .line 203
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->SQUARE:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/BubbleValue;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object p3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleRect:Landroid/graphics/RectF;

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubblePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 205
    :cond_0
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/BubbleValue;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubblePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    const/4 p3, 0x1

    if-ne p3, p4, :cond_2

    .line 212
    iget-boolean p3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->hasLabels:Z

    if-nez p3, :cond_1

    iget-boolean p3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->hasLabelsOnlyForSelected:Z

    if-eqz p3, :cond_3

    .line 213
    :cond_1
    iget-object p3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    iget-object p4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    iget p4, p4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, p2, p3, p4}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;FF)V

    goto :goto_1

    :cond_2
    if-nez p4, :cond_4

    .line 216
    iget-boolean p3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->hasLabels:Z

    if-eqz p3, :cond_3

    .line 217
    iget-object p3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    iget-object p4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    iget p4, p4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, p2, p3, p4}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;FF)V

    :cond_3
    :goto_1
    return-void

    .line 220
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot process bubble in mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid bubble shape: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/BubbleValue;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private drawBubbles(Landroid/graphics/Canvas;)V
    .locals 2

    .line 186
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/BubbleChartDataProvider;->getBubbleChartData()Llecho/lib/hellocharts/model/BubbleChartData;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleChartData;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/BubbleValue;

    .line 188
    invoke-direct {p0, p1, v1}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->drawBubble(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;FF)V
    .locals 9

    .line 265
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    .line 266
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->valueFormatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelBuffer:[C

    invoke-interface {v1, v2, p2}, Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;->formatChartValue([CLlecho/lib/hellocharts/model/BubbleValue;)I

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelBuffer:[C

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelBuffer:[C

    array-length v3, v3

    sub-int/2addr v3, v7

    invoke-virtual {v1, v2, v3, v7}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 274
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    sub-float v4, p3, v3

    .line 275
    iget v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelMargin:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    add-float/2addr v3, p3

    .line 276
    iget v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelMargin:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    .line 277
    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    sub-float v6, p4, v5

    iget v8, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelMargin:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    add-float/2addr v5, p4

    .line 278
    iget v8, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelMargin:I

    int-to-float v8, v8

    add-float/2addr v5, v8

    .line 280
    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-gez v8, :cond_1

    int-to-float v5, v2

    add-float/2addr v5, p4

    .line 282
    iget v6, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelMargin:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    move v6, p4

    .line 284
    :cond_1
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_2

    int-to-float v2, v2

    sub-float v2, p4, v2

    .line 285
    iget v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelMargin:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v6, v2, v5

    goto :goto_0

    :cond_2
    move p4, v5

    .line 288
    :goto_0
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gez v2, :cond_3

    add-float v2, p3, v1

    .line 290
    iget v3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelMargin:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    move v4, p3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 292
    :goto_1
    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    sub-float v0, p3, v1

    .line 293
    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelMargin:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v4, v0, v1

    goto :goto_2

    :cond_4
    move p3, v2

    .line 297
    :goto_2
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v4, v6, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 298
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelBuffer:[C

    iget-object p3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelBuffer:[C

    array-length p3, p3

    sub-int v6, p3, v7

    .line 299
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/BubbleValue;->getDarkenColor()I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    .line 298
    invoke-virtual/range {v3 .. v8}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->drawLabelTextAndBackground(Landroid/graphics/Canvas;[CIII)V

    return-void
.end method

.method private highlightBubble(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;)V
    .locals 3

    .line 231
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    invoke-direct {p0, p2, v0}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->processBubble(Llecho/lib/hellocharts/model/BubbleValue;Landroid/graphics/PointF;)F

    move-result v0

    .line 232
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubblePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/BubbleValue;->getDarkenColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    .line 233
    invoke-direct {p0, p1, p2, v0, v1}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->drawBubbleShapeAndLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;FI)V

    return-void
.end method

.method private highlightBubbles(Landroid/graphics/Canvas;)V
    .locals 2

    .line 225
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/BubbleChartDataProvider;->getBubbleChartData()Llecho/lib/hellocharts/model/BubbleChartData;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleChartData;->getValues()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/BubbleValue;

    .line 227
    invoke-direct {p0, p1, v0}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->highlightBubble(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;)V

    return-void
.end method

.method private processBubble(Llecho/lib/hellocharts/model/BubbleValue;Landroid/graphics/PointF;)F
    .locals 5

    .line 241
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/BubbleValue;->getX()F

    move-result v0

    invoke-virtual {p2, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result p2

    .line 242
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/BubbleValue;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v0

    .line 243
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/BubbleValue;->getZ()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 245
    iget-boolean v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->isBubbleScaledByX:Z

    if-eqz v2, :cond_0

    .line 246
    iget v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleX:F

    mul-float v1, v1, v2

    .line 247
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawDistanceX(F)F

    move-result v1

    goto :goto_0

    .line 249
    :cond_0
    iget v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleY:F

    mul-float v1, v1, v2

    .line 250
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawDistanceY(F)F

    move-result v1

    .line 253
    :goto_0
    iget v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->minRawRadius:F

    iget v3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->touchAdditional:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 254
    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->minRawRadius:F

    iget v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->touchAdditional:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 257
    :cond_1
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    invoke-virtual {v2, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 258
    sget-object v2, Llecho/lib/hellocharts/model/ValueShape;->SQUARE:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/BubbleValue;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object p1

    invoke-virtual {v2, p1}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 259
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleRect:Landroid/graphics/RectF;

    sub-float v2, p2, v1

    sub-float v3, v0, v1

    add-float/2addr p2, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v2, v3, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    return v1
.end method


# virtual methods
.method public checkTouch(FF)Z
    .locals 6

    .line 124
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 125
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/BubbleChartDataProvider;->getBubbleChartData()Llecho/lib/hellocharts/model/BubbleChartData;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleChartData;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/BubbleValue;

    .line 128
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    invoke-direct {p0, v2, v3}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->processBubble(Llecho/lib/hellocharts/model/BubbleValue;Landroid/graphics/PointF;)F

    move-result v3

    .line 130
    sget-object v4, Llecho/lib/hellocharts/model/ValueShape;->SQUARE:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/BubbleValue;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v5

    invoke-virtual {v4, v5}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleRect:Landroid/graphics/RectF;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    sget-object v3, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v2, v1, v1, v3}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V

    goto :goto_1

    .line 134
    :cond_0
    sget-object v4, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/BubbleValue;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v5

    invoke-virtual {v4, v5}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, v2

    .line 136
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, p2, v4

    mul-float v2, v2, v2

    mul-float v4, v4, v4

    add-float/2addr v2, v4

    float-to-double v4, v2

    .line 137
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 140
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    sget-object v3, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v2, v1, v1, v3}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid bubble shape: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/BubbleValue;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_3
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->isTouched()Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 112
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->drawBubbles(Landroid/graphics/Canvas;)V

    .line 113
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->highlightBubbles(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public drawUnclipped(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onChartDataChanged()V
    .locals 2

    .line 92
    invoke-super {p0}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->onChartDataChanged()V

    .line 93
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/BubbleChartDataProvider;->getBubbleChartData()Llecho/lib/hellocharts/model/BubbleChartData;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels()Z

    move-result v1

    iput-boolean v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->hasLabels:Z

    .line 95
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected()Z

    move-result v1

    iput-boolean v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->hasLabelsOnlyForSelected:Z

    .line 96
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleChartData;->getFormatter()Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->valueFormatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    .line 98
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->onChartViewportChanged()V

    return-void
.end method

.method public onChartSizeChanged()V
    .locals 2

    .line 81
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->isBubbleScaledByX:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->isBubbleScaledByX:Z

    :goto_0
    return-void
.end method

.method public onChartViewportChanged()V
    .locals 2

    .line 103
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->isViewportCalculationEnabled:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->calculateMaxViewport()V

    .line 105
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 106
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    :cond_0
    return-void
.end method

.method public removeMargins()V
    .locals 7

    .line 160
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->maxRadius:F

    iget v3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleX:F

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawDistanceX(F)F

    move-result v1

    .line 166
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->maxRadius:F

    iget v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleY:F

    mul-float v3, v3, v4

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawDistanceY(F)F

    move-result v2

    .line 167
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v3}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v3

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 168
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v4}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v4

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v4, v0

    .line 171
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->isBubbleScaledByX:Z

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    sub-float/2addr v2, v1

    mul-float v2, v2, v4

    mul-float v0, v2, v5

    move v6, v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sub-float/2addr v1, v2

    mul-float v1, v1, v3

    mul-float v0, v1, v5

    .line 177
    :goto_0
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    .line 178
    invoke-virtual {v1, v0, v6}, Llecho/lib/hellocharts/model/Viewport;->inset(FF)V

    .line 179
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/computator/ChartComputator;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v2

    .line 180
    invoke-virtual {v2, v0, v6}, Llecho/lib/hellocharts/model/Viewport;->inset(FF)V

    .line 181
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 182
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method
