.class public abstract Llecho/lib/hellocharts/renderer/AbstractChartRenderer;
.super Ljava/lang/Object;
.source "AbstractChartRenderer.java"

# interfaces
.implements Llecho/lib/hellocharts/renderer/ChartRenderer;


# instance fields
.field public DEFAULT_LABEL_MARGIN_DP:I

.field protected chart:Llecho/lib/hellocharts/view/Chart;

.field protected computator:Llecho/lib/hellocharts/computator/ChartComputator;

.field protected density:F

.field protected fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field protected isValueLabelBackgroundAuto:Z

.field protected isValueLabelBackgroundEnabled:Z

.field protected isViewportCalculationEnabled:Z

.field protected labelBackgroundPaint:Landroid/graphics/Paint;

.field protected labelBackgroundRect:Landroid/graphics/RectF;

.field protected labelBuffer:[C

.field protected labelMargin:I

.field protected labelOffset:I

.field protected labelPaint:Landroid/graphics/Paint;

.field protected scaledDensity:F

.field protected selectedValue:Llecho/lib/hellocharts/model/SelectedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 23
    iput v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->DEFAULT_LABEL_MARGIN_DP:I

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundPaint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    .line 41
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isViewportCalculationEnabled:Z

    .line 48
    new-instance v1, Llecho/lib/hellocharts/model/SelectedValue;

    invoke-direct {v1}, Llecho/lib/hellocharts/model/SelectedValue;-><init>()V

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    const/16 v1, 0x40

    .line 49
    new-array v1, v1, [C

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBuffer:[C

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->density:F

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->scaledDensity:F

    .line 58
    iput-object p2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    .line 59
    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object p1

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 61
    iget p1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->density:F

    iget p2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->DEFAULT_LABEL_MARGIN_DP:I

    invoke-static {p1, p2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result p1

    iput p1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelMargin:I

    .line 62
    iget p1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelMargin:I

    iput p1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelOffset:I

    .line 64
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 67
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 68
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public clearTouch()V
    .locals 1

    .line 134
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    return-void
.end method

.method protected drawLabelTextAndBackground(Landroid/graphics/Canvas;[CIII)V
    .locals 8

    .line 109
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isValueLabelBackgroundEnabled:Z

    if-eqz v0, :cond_1

    .line 111
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isValueLabelBackgroundAuto:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    :cond_0
    iget-object p5, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 117
    iget-object p5, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget p5, p5, Landroid/graphics/RectF;->left:F

    iget v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelMargin:I

    int-to-float v0, v0

    add-float/2addr p5, v0

    .line 118
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelMargin:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 120
    :cond_1
    iget-object p5, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget p5, p5, Landroid/graphics/RectF;->left:F

    .line 121
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    :goto_0
    move v5, p5

    move v6, v0

    .line 124
    iget-object v7, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;
    .locals 1

    .line 151
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;
    .locals 1

    .line 139
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;
    .locals 1

    .line 178
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    return-object v0
.end method

.method public isTouched()Z
    .locals 1

    .line 129
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->isSet()Z

    move-result v0

    return v0
.end method

.method public isViewportCalculationEnabled()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isViewportCalculationEnabled:Z

    return v0
.end method

.method public onChartDataChanged()V
    .locals 4

    .line 81
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    .line 83
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v1}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v1

    invoke-interface {v1}, Llecho/lib/hellocharts/model/ChartData;->getValueLabelTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 88
    :cond_0
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getValueLabelTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    iget v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->scaledDensity:F

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getValueLabelTextSize()I

    move-result v3

    invoke-static {v2, v3}, Llecho/lib/hellocharts/util/ChartUtils;->sp2px(FI)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 92
    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->isValueLabelBackgroundEnabled()Z

    move-result v1

    iput-boolean v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isValueLabelBackgroundEnabled:Z

    .line 93
    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->isValueLabelBackgroundAuto()Z

    move-result v1

    iput-boolean v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isValueLabelBackgroundAuto:Z

    .line 94
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundPaint:Landroid/graphics/Paint;

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getValueLabelBackgroundColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    return-void
.end method

.method public resetRenderer()V
    .locals 1

    .line 76
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    return-void
.end method

.method public selectValue(Llecho/lib/hellocharts/model/SelectedValue;)V
    .locals 1

    .line 173
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/model/SelectedValue;->set(Llecho/lib/hellocharts/model/SelectedValue;)V

    return-void
.end method

.method public setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    :cond_0
    return-void
.end method

.method public setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V

    :cond_0
    return-void
.end method

.method public setViewportCalculationEnabled(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isViewportCalculationEnabled:Z

    return-void
.end method
