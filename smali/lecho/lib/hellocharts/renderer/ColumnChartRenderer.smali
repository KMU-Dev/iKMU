.class public Llecho/lib/hellocharts/renderer/ColumnChartRenderer;
.super Llecho/lib/hellocharts/renderer/AbstractChartRenderer;
.source "ColumnChartRenderer.java"


# static fields
.field public static final DEFAULT_COLUMN_TOUCH_ADDITIONAL_WIDTH_DP:I = 0x4

.field public static final DEFAULT_SUBCOLUMN_SPACING_DP:I = 0x1

.field private static final MODE_CHECK_TOUCH:I = 0x1

.field private static final MODE_DRAW:I = 0x0

.field private static final MODE_HIGHLIGHT:I = 0x2


# instance fields
.field private baseValue:F

.field private columnPaint:Landroid/graphics/Paint;

.field private dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

.field private drawRect:Landroid/graphics/RectF;

.field private fillRatio:F

.field private subcolumnSpacing:I

.field private tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

.field private touchAdditionalWidth:I

.field private touchedPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/ColumnChartDataProvider;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    .line 45
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    .line 50
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    .line 55
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    .line 61
    new-instance p1, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {p1}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 65
    iput-object p3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    .line 66
    iget p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->density:F

    const/4 p2, 0x1

    invoke-static {p1, p2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result p1

    iput p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->subcolumnSpacing:I

    .line 67
    iget p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->density:F

    const/4 p3, 0x4

    invoke-static {p1, p3}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result p1

    iput p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchAdditionalWidth:I

    .line 69
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private calculateColumnWidth()F
    .locals 3

    .line 348
    iget v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->fillRatio:F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 349
    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getVisibleViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    :cond_0
    return v0
.end method

.method private calculateMaxViewport()V
    .locals 6

    .line 129
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 133
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    iget v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    const/high16 v5, -0x41000000    # -0.5f

    invoke-virtual {v1, v5, v2, v3, v4}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    .line 134
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0, v0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateMaxViewportForStacked(Llecho/lib/hellocharts/model/ColumnChartData;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-direct {p0, v0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateMaxViewportForSubcolumns(Llecho/lib/hellocharts/model/ColumnChartData;)V

    :goto_0
    return-void
.end method

.method private calculateMaxViewportForStacked(Llecho/lib/hellocharts/model/ColumnChartData;)V
    .locals 6

    .line 155
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/Column;

    .line 156
    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    .line 157
    iget v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    .line 158
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 159
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v4

    iget v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 160
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_1

    .line 165
    :cond_2
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 166
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iput v1, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 168
    :cond_3
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    .line 169
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iput v2, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    goto :goto_0

    :cond_4
    return-void
.end method

.method private calculateMaxViewportForSubcolumns(Llecho/lib/hellocharts/model/ColumnChartData;)V
    .locals 4

    .line 142
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/Column;

    .line 143
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 144
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v2

    iget v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v2

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v3, v3, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 145
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v3

    iput v3, v2, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 147
    :cond_2
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v2

    iget v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v2

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v3, v3, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 148
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v1

    iput v1, v2, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    goto :goto_0

    :cond_3
    return-void
.end method

.method private calculateRectToDraw(Llecho/lib/hellocharts/model/SubcolumnValue;FFFF)V
    .locals 1

    .line 358
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 359
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iput p3, p2, Landroid/graphics/RectF;->right:F

    .line 360
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result p1

    iget p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    .line 361
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iput p5, p1, Landroid/graphics/RectF;->top:F

    .line 362
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->subcolumnSpacing:I

    int-to-float p2, p2

    sub-float/2addr p4, p2

    iput p4, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 364
    :cond_0
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iput p5, p1, Landroid/graphics/RectF;->bottom:F

    .line 365
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->subcolumnSpacing:I

    int-to-float p2, p2

    add-float/2addr p4, p2

    iput p4, p1, Landroid/graphics/RectF;->top:F

    :goto_0
    return-void
.end method

.method private checkRectToDraw(II)V
    .locals 3

    .line 341
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    sget-object v1, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->COLUMN:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v0, p1, p2, v1}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V

    :cond_0
    return-void
.end method

.method private checkTouchForStacked(FF)V
    .locals 7

    .line 269
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 270
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 271
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {p1}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object p1

    .line 272
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result p2

    .line 274
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Llecho/lib/hellocharts/model/Column;

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p2

    move v4, v6

    .line 276
    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForStacked(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkTouchForSubcolumns(FF)V
    .locals 7

    .line 193
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 194
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 195
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {p1}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object p1

    .line 196
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result p2

    .line 198
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Llecho/lib/hellocharts/model/Column;

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p2

    move v4, v6

    .line 200
    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForSubcolumns(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawColumnForStacked(Landroid/graphics/Canvas;)V
    .locals 9

    .line 250
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 251
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result v7

    .line 254
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Llecho/lib/hellocharts/model/Column;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, v7

    move v5, v8

    .line 255
    invoke-direct/range {v1 .. v6}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForStacked(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawColumnsForSubcolumns(Landroid/graphics/Canvas;)V
    .locals 9

    .line 175
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 176
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result v7

    .line 178
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Llecho/lib/hellocharts/model/Column;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, v7

    move v5, v8

    .line 179
    invoke-direct/range {v1 .. v6}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForSubcolumns(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;ZF)V
    .locals 7

    .line 370
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Column;->getFormatter()Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    move-result-object p2

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBuffer:[C

    invoke-interface {p2, v0, p3}, Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;->formatChartValue([CLlecho/lib/hellocharts/model/SubcolumnValue;)I

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 377
    :cond_0
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBuffer:[C

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBuffer:[C

    array-length v1, v1

    sub-int/2addr v1, v5

    invoke-virtual {p2, v0, v1, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p2

    .line 378
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 379
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    sub-float/2addr v1, p2

    iget v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 380
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    add-float/2addr v2, p2

    iget p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    int-to-float p2, p2

    add-float/2addr v2, p2

    if-eqz p4, :cond_2

    int-to-float p2, v0

    .line 383
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpg-float v3, p2, v3

    if-gez v3, :cond_2

    .line 385
    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result p4

    iget p5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float p4, p4, p5

    if-ltz p4, :cond_1

    .line 386
    iget-object p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->top:F

    .line 387
    iget-object p5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p5, p5, Landroid/graphics/RectF;->top:F

    add-float/2addr p5, p2

    iget p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p5, p2

    goto/16 :goto_1

    .line 389
    :cond_1
    iget-object p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    iget p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p4, p2

    .line 390
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p5, p2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    :cond_2
    if-nez p4, :cond_6

    .line 394
    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result p2

    iget p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float p2, p2, p4

    if-ltz p2, :cond_4

    .line 395
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, p5

    int-to-float p4, v0

    sub-float/2addr p2, p4

    iget v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 396
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 397
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, p5

    .line 398
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p5

    add-float/2addr v0, p4

    iget p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    add-float p5, v0, p4

    :goto_0
    move p4, p2

    goto :goto_1

    .line 400
    :cond_3
    iget-object p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->top:F

    sub-float p5, p4, p5

    goto :goto_0

    .line 403
    :cond_4
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, p5

    int-to-float p4, v0

    add-float/2addr p2, p4

    iget v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 404
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_5

    .line 405
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, p5

    sub-float/2addr p2, p4

    iget p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    sub-float p4, p2, p4

    .line 406
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float p5, p2, p5

    goto :goto_1

    .line 408
    :cond_5
    iget-object p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p4, p5

    move p5, p2

    .line 416
    :goto_1
    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v1, p4, v2, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 417
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBuffer:[C

    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBuffer:[C

    array-length p2, p2

    sub-int v4, p2, v5

    .line 418
    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getDarkenColor()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    .line 417
    invoke-virtual/range {v1 .. v6}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawLabelTextAndBackground(Landroid/graphics/Canvas;[CIII)V

    return-void

    :cond_6
    return-void
.end method

.method private drawSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;Z)V
    .locals 7

    .line 322
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 323
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Column;->hasLabels()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelOffset:I

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;ZF)V

    :cond_0
    return-void
.end method

.method private highlightColumnForStacked(Landroid/graphics/Canvas;)V
    .locals 7

    .line 261
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 262
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result v4

    .line 264
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Llecho/lib/hellocharts/model/Column;

    .line 265
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v5

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForStacked(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    return-void
.end method

.method private highlightColumnsForSubcolumns(Landroid/graphics/Canvas;)V
    .locals 7

    .line 185
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 186
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result v4

    .line 187
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Llecho/lib/hellocharts/model/Column;

    .line 188
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v5

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForSubcolumns(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    return-void
.end method

.method private highlightSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;IZ)V
    .locals 7

    .line 330
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v0

    if-ne v0, p4, :cond_1

    .line 331
    iget-object p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getDarkenColor()I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    iget-object p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->left:F

    iget v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchAdditionalWidth:I

    int-to-float v0, v0

    sub-float v2, p4, v0

    iget-object p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v3, p4, Landroid/graphics/RectF;->top:F

    iget-object p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->right:F

    iget v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchAdditionalWidth:I

    int-to-float v0, v0

    add-float v4, p4, v0

    iget-object p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v5, p4, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 334
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Column;->hasLabels()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 335
    :cond_0
    iget p4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelOffset:I

    int-to-float v5, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;ZF)V

    :cond_1
    return-void
.end method

.method private processColumnForStacked(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p4

    move/from16 v8, p5

    .line 282
    iget-object v0, v6, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    int-to-float v1, v7

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v9

    const/high16 v0, 0x40000000    # 2.0f

    div-float v10, p3, v0

    .line 284
    iget v0, v6, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    .line 285
    iget v1, v6, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    .line 286
    iget v2, v6, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    .line 288
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 289
    iget-object v2, v6, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Llecho/lib/hellocharts/model/SubcolumnValue;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    invoke-virtual {v13}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v2

    iget v3, v6, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 294
    invoke-virtual {v13}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v2

    add-float/2addr v2, v0

    move v15, v1

    move v14, v2

    goto :goto_1

    .line 297
    :cond_0
    invoke-virtual {v13}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v2

    add-float/2addr v2, v1

    move v14, v0

    move v0, v1

    move v15, v2

    .line 299
    :goto_1
    iget-object v1, v6, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v4

    .line 300
    iget-object v1, v6, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v13}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v5

    sub-float v2, v9, v10

    add-float v3, v9, v10

    move-object/from16 v0, p0

    move-object v1, v13

    .line 301
    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateRectToDraw(Llecho/lib/hellocharts/model/SubcolumnValue;FFFF)V

    packed-switch v8, :pswitch_data_0

    .line 315
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot process column in mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    move v4, v12

    .line 307
    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->highlightSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;IZ)V

    goto :goto_2

    .line 310
    :pswitch_1
    invoke-direct {v6, v7, v12}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->checkRectToDraw(II)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 304
    invoke-direct {v6, v1, v2, v13, v0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;Z)V

    :goto_2
    add-int/lit8 v12, v12, 0x1

    move v0, v14

    move v1, v15

    goto/16 :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processColumnForSubcolumns(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V
    .locals 19

    move-object/from16 v6, p0

    move/from16 v7, p4

    move/from16 v8, p5

    .line 209
    iget v1, v6, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->subcolumnSpacing:I

    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int v1, v1, v2

    int-to-float v1, v1

    sub-float v1, p3, v1

    .line 210
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v9, v1

    .line 215
    :goto_0
    iget-object v1, v6, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    int-to-float v2, v7

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v10

    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, p3, v1

    .line 217
    iget-object v0, v6, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v1, v6, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v12

    sub-float v0, v10, v11

    .line 222
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    move v15, v0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 223
    iget-object v0, v6, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/SubcolumnValue;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float v0, v10, v11

    cmpl-float v0, v15, v0

    if-lez v0, :cond_1

    goto/16 :goto_3

    .line 227
    :cond_1
    iget-object v0, v6, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v16

    add-float v3, v15, v9

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v15

    move-object/from16 v17, v4

    move v4, v12

    move/from16 v18, v5

    move/from16 v5, v16

    .line 228
    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateRectToDraw(Llecho/lib/hellocharts/model/SubcolumnValue;FFFF)V

    packed-switch v8, :pswitch_data_0

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot process column in mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move/from16 v4, v18

    .line 234
    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->highlightSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;IZ)V

    move/from16 v0, v18

    goto :goto_2

    :pswitch_1
    move/from16 v0, v18

    .line 237
    invoke-direct {v6, v7, v0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->checkRectToDraw(II)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_2

    :pswitch_2
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move/from16 v0, v18

    .line 231
    invoke-direct {v6, v1, v2, v3, v14}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;Z)V

    .line 244
    :goto_2
    iget v3, v6, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->subcolumnSpacing:I

    int-to-float v3, v3

    add-float/2addr v3, v9

    add-float/2addr v15, v3

    add-int/lit8 v5, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public checkTouch(FF)Z
    .locals 1

    .line 118
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 119
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->checkTouchForStacked(FF)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->checkTouchForSubcolumns(FF)V

    .line 125
    :goto_0
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->isTouched()Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 98
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawColumnForStacked(Landroid/graphics/Canvas;)V

    .line 101
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->highlightColumnForStacked(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawColumnsForSubcolumns(Landroid/graphics/Canvas;)V

    .line 106
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->highlightColumnsForSubcolumns(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public drawUnclipped(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onChartDataChanged()V
    .locals 2

    .line 80
    invoke-super {p0}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->onChartDataChanged()V

    .line 81
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getFillRatio()F

    move-result v1

    iput v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->fillRatio:F

    .line 83
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getBaseValue()F

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    .line 85
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->onChartViewportChanged()V

    return-void
.end method

.method public onChartSizeChanged()V
    .locals 0

    return-void
.end method

.method public onChartViewportChanged()V
    .locals 2

    .line 90
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->isViewportCalculationEnabled:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateMaxViewport()V

    .line 92
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 93
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    :cond_0
    return-void
.end method
