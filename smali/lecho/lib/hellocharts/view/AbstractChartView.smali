.class public abstract Llecho/lib/hellocharts/view/AbstractChartView;
.super Landroid/view/View;
.source "AbstractChartView.java"

# interfaces
.implements Llecho/lib/hellocharts/view/Chart;


# instance fields
.field protected axesRenderer:Llecho/lib/hellocharts/renderer/AxesRenderer;

.field protected chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

.field protected chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

.field protected containerScrollType:Llecho/lib/hellocharts/gesture/ContainerScrollType;

.field protected dataAnimator:Llecho/lib/hellocharts/animation/ChartDataAnimator;

.field protected isContainerScrollEnabled:Z

.field protected isInteractive:Z

.field protected touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

.field protected viewportAnimator:Llecho/lib/hellocharts/animation/ChartViewportAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/view/AbstractChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Llecho/lib/hellocharts/view/AbstractChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 41
    iput-boolean p2, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isInteractive:Z

    const/4 p2, 0x0

    .line 42
    iput-boolean p2, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isContainerScrollEnabled:Z

    .line 55
    new-instance p2, Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-direct {p2}, Llecho/lib/hellocharts/computator/ChartComputator;-><init>()V

    iput-object p2, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 56
    new-instance p2, Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-direct {p2, p1, p0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    iput-object p2, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    .line 57
    new-instance p2, Llecho/lib/hellocharts/renderer/AxesRenderer;

    invoke-direct {p2, p1, p0}, Llecho/lib/hellocharts/renderer/AxesRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    iput-object p2, p0, Llecho/lib/hellocharts/view/AbstractChartView;->axesRenderer:Llecho/lib/hellocharts/renderer/AxesRenderer;

    .line 59
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xe

    if-ge p1, p2, :cond_0

    .line 60
    new-instance p1, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    invoke-direct {p1, p0}, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;-><init>(Llecho/lib/hellocharts/view/Chart;)V

    iput-object p1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->dataAnimator:Llecho/lib/hellocharts/animation/ChartDataAnimator;

    .line 61
    new-instance p1, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-direct {p1, p0}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;-><init>(Llecho/lib/hellocharts/view/Chart;)V

    iput-object p1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->viewportAnimator:Llecho/lib/hellocharts/animation/ChartViewportAnimator;

    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;

    invoke-direct {p1, p0}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;-><init>(Llecho/lib/hellocharts/view/Chart;)V

    iput-object p1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->viewportAnimator:Llecho/lib/hellocharts/animation/ChartViewportAnimator;

    .line 64
    new-instance p1, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;

    invoke-direct {p1, p0}, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;-><init>(Llecho/lib/hellocharts/view/Chart;)V

    iput-object p1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->dataAnimator:Llecho/lib/hellocharts/animation/ChartDataAnimator;

    :goto_0
    return-void
.end method

.method private computeScrollViewport(FF)Llecho/lib/hellocharts/model/Viewport;
    .locals 6

    .line 248
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    .line 250
    new-instance v2, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v2, v1}, Llecho/lib/hellocharts/model/Viewport;-><init>(Llecho/lib/hellocharts/model/Viewport;)V

    .line 252
    invoke-virtual {v0, p1, p2}, Llecho/lib/hellocharts/model/Viewport;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v3

    .line 254
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    div-float v4, v1, v4

    sub-float/2addr p1, v5

    add-float/2addr p2, v4

    .line 262
    iget v4, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget v5, v0, Llecho/lib/hellocharts/model/Viewport;->right:F

    sub-float/2addr v5, v3

    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 263
    iget v4, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    add-float/2addr v4, v1

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    add-float/2addr v3, p1

    sub-float v0, p2, v1

    .line 265
    invoke-virtual {v2, p1, p2, v3, v0}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    :cond_0
    return-object v2
.end method

.method private computeZoomViewport(FFF)Llecho/lib/hellocharts/model/Viewport;
    .locals 6

    .line 325
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 326
    new-instance v1, Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v2

    invoke-direct {v1, v2}, Llecho/lib/hellocharts/model/Viewport;-><init>(Llecho/lib/hellocharts/model/Viewport;)V

    .line 328
    invoke-virtual {v0, p1, p2}, Llecho/lib/hellocharts/model/Viewport;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p3, v2

    if-gez v3, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getMaxZoom()F

    move-result v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_1

    .line 333
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getMaxZoom()F

    move-result p3

    .line 336
    :cond_1
    :goto_0
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v2

    div-float/2addr v2, p3

    .line 337
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v3

    div-float/2addr v3, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float v4, v2, p3

    div-float p3, v3, p3

    sub-float v5, p1, v4

    add-float/2addr p1, v4

    add-float v4, p2, p3

    sub-float/2addr p2, p3

    .line 347
    iget p3, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    cmpg-float p3, v5, p3

    if-gez p3, :cond_2

    .line 348
    iget v5, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    add-float p1, v5, v2

    goto :goto_1

    .line 350
    :cond_2
    iget p3, v0, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpl-float p3, p1, p3

    if-lez p3, :cond_3

    .line 351
    iget p1, v0, Llecho/lib/hellocharts/model/Viewport;->right:F

    sub-float v5, p1, v2

    .line 355
    :cond_3
    :goto_1
    iget p3, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float p3, v4, p3

    if-lez p3, :cond_4

    .line 356
    iget v4, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    sub-float p2, v4, v3

    goto :goto_2

    .line 358
    :cond_4
    iget p3, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float p3, p2, p3

    if-gez p3, :cond_5

    .line 359
    iget p2, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    add-float v4, p2, v3

    .line 363
    :cond_5
    :goto_2
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getZoomType()Llecho/lib/hellocharts/gesture/ZoomType;

    move-result-object p3

    .line 364
    sget-object v0, Llecho/lib/hellocharts/gesture/ZoomType;->HORIZONTAL_AND_VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

    if-ne v0, p3, :cond_6

    .line 365
    invoke-virtual {v1, v5, v4, p1, p2}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    goto :goto_3

    .line 366
    :cond_6
    sget-object v0, Llecho/lib/hellocharts/gesture/ZoomType;->HORIZONTAL:Llecho/lib/hellocharts/gesture/ZoomType;

    if-ne v0, p3, :cond_7

    .line 367
    iput v5, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 368
    iput p1, v1, Llecho/lib/hellocharts/model/Viewport;->right:F

    goto :goto_3

    .line 369
    :cond_7
    sget-object p1, Llecho/lib/hellocharts/gesture/ZoomType;->VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

    if-ne p1, p3, :cond_8

    .line 370
    iput v4, v1, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 371
    iput p2, v1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    :cond_8
    :goto_3
    return-object v1
.end method


# virtual methods
.method public animationDataFinished()V
    .locals 1

    .line 158
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->finish()V

    .line 159
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->onChartViewportChanged()V

    .line 160
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public animationDataUpdate(F)V
    .locals 1

    .line 151
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0, p1}, Llecho/lib/hellocharts/model/ChartData;->update(F)V

    .line 152
    iget-object p1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->onChartViewportChanged()V

    .line 153
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public cancelDataAnimation()V
    .locals 1

    .line 146
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->dataAnimator:Llecho/lib/hellocharts/animation/ChartDataAnimator;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartDataAnimator;->cancelAnimation()V

    return-void
.end method

.method public computeScroll()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 127
    iget-boolean v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isInteractive:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computeScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getAxesRenderer()Llecho/lib/hellocharts/renderer/AxesRenderer;
    .locals 1

    .line 192
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->axesRenderer:Llecho/lib/hellocharts/renderer/AxesRenderer;

    return-object v0
.end method

.method public getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;
    .locals 1

    .line 197
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    return-object v0
.end method

.method public getChartRenderer()Llecho/lib/hellocharts/renderer/ChartRenderer;
    .locals 1

    .line 180
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    return-object v0
.end method

.method public getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;
    .locals 1

    .line 409
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getChartRenderer()Llecho/lib/hellocharts/renderer/ChartRenderer;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 1

    .line 294
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaxZoom()F

    move-result v0

    return v0
.end method

.method public getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;
    .locals 1

    .line 380
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;
    .locals 1

    .line 455
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;

    move-result-object v0

    return-object v0
.end method

.method public getTouchHandler()Llecho/lib/hellocharts/gesture/ChartTouchHandler;
    .locals 1

    .line 202
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    return-object v0
.end method

.method public getZoomLevel()F
    .locals 4

    .line 305
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    .line 308
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v2

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v0

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getZoomType()Llecho/lib/hellocharts/gesture/ZoomType;
    .locals 1

    .line 284
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->getZoomType()Llecho/lib/hellocharts/gesture/ZoomType;

    move-result-object v0

    return-object v0
.end method

.method public isContainerScrollEnabled()Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isContainerScrollEnabled:Z

    return v0
.end method

.method public isInteractive()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isInteractive:Z

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .line 227
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isValueSelectionEnabled()Z
    .locals 1

    .line 438
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueSelectionEnabled()Z

    move-result v0

    return v0
.end method

.method public isValueTouchEnabled()Z
    .locals 1

    .line 273
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueTouchEnabled()Z

    move-result v0

    return v0
.end method

.method public isViewportCalculationEnabled()Z
    .locals 1

    .line 428
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->isViewportCalculationEnabled()Z

    move-result v0

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .line 217
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isZoomEnabled()Z

    move-result v0

    return v0
.end method

.method public moveTo(FF)V
    .locals 0

    .line 237
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/view/AbstractChartView;->computeScrollViewport(FF)Llecho/lib/hellocharts/model/Viewport;

    move-result-object p1

    .line 238
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/view/AbstractChartView;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    return-void
.end method

.method public moveToWithAnimation(FF)V
    .locals 0

    .line 243
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/view/AbstractChartView;->computeScrollViewport(FF)Llecho/lib/hellocharts/model/Viewport;

    move-result-object p1

    .line 244
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/view/AbstractChartView;->setCurrentViewportWithAnimation(Llecho/lib/hellocharts/model/Viewport;)V

    return-void
.end method

.method protected onChartDataChange()V
    .locals 1

    .line 470
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->resetContentRect()V

    .line 471
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->onChartDataChanged()V

    .line 472
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->axesRenderer:Llecho/lib/hellocharts/renderer/AxesRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/AxesRenderer;->onChartDataChanged()V

    .line 473
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 86
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->axesRenderer:Llecho/lib/hellocharts/renderer/AxesRenderer;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawInBackground(Landroid/graphics/Canvas;)V

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 89
    iget-object v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 90
    iget-object v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v1, p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->draw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 92
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0, p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->drawUnclipped(Landroid/graphics/Canvas;)V

    .line 93
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->axesRenderer:Llecho/lib/hellocharts/renderer/AxesRenderer;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawInForeground(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 95
    :cond_0
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 76
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getPaddingRight()I

    move-result v5

    .line 77
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getPaddingBottom()I

    move-result v6

    .line 76
    invoke-virtual/range {v0 .. v6}, Llecho/lib/hellocharts/computator/ChartComputator;->setContentRect(IIIIII)V

    .line 78
    iget-object p1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->onChartSizeChanged()V

    .line 79
    iget-object p1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->axesRenderer:Llecho/lib/hellocharts/renderer/AxesRenderer;

    invoke-virtual {p1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->onChartSizeChanged()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 101
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 103
    iget-boolean v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isInteractive:Z

    if-eqz v0, :cond_2

    .line 107
    iget-boolean v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isContainerScrollEnabled:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Llecho/lib/hellocharts/view/AbstractChartView;->containerScrollType:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    invoke-virtual {v0, p1, v1, v2}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/ViewParent;Llecho/lib/hellocharts/gesture/ContainerScrollType;)Z

    move-result p1

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    .line 114
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected resetRendererAndTouchHandler()V
    .locals 1

    .line 481
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->resetRenderer()V

    .line 482
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->axesRenderer:Llecho/lib/hellocharts/renderer/AxesRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/AxesRenderer;->resetRenderer()V

    .line 483
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->resetTouchHandler()V

    return-void
.end method

.method public resetViewports()V
    .locals 2

    .line 422
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 423
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0, v1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    return-void
.end method

.method public selectValue(Llecho/lib/hellocharts/model/SelectedValue;)V
    .locals 1

    .line 448
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0, p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->selectValue(Llecho/lib/hellocharts/model/SelectedValue;)V

    .line 449
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->callTouchListener()V

    .line 450
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setChartRenderer(Llecho/lib/hellocharts/renderer/ChartRenderer;)V
    .locals 0

    .line 185
    iput-object p1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    .line 186
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->resetRendererAndTouchHandler()V

    .line 187
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setContainerScrollEnabled(ZLlecho/lib/hellocharts/gesture/ContainerScrollType;)V
    .locals 0

    .line 465
    iput-boolean p1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isContainerScrollEnabled:Z

    .line 466
    iput-object p2, p0, Llecho/lib/hellocharts/view/AbstractChartView;->containerScrollType:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    return-void
.end method

.method public setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 415
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0, p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 417
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setCurrentViewportWithAnimation(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 392
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->viewportAnimator:Llecho/lib/hellocharts/animation/ChartViewportAnimator;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartViewportAnimator;->cancelAnimation()V

    .line 393
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->viewportAnimator:Llecho/lib/hellocharts/animation/ChartViewportAnimator;

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Llecho/lib/hellocharts/animation/ChartViewportAnimator;->startAnimation(Llecho/lib/hellocharts/model/Viewport;Llecho/lib/hellocharts/model/Viewport;)V

    .line 395
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setCurrentViewportWithAnimation(Llecho/lib/hellocharts/model/Viewport;J)V
    .locals 2

    if-eqz p1, :cond_0

    .line 401
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->viewportAnimator:Llecho/lib/hellocharts/animation/ChartViewportAnimator;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartViewportAnimator;->cancelAnimation()V

    .line 402
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->viewportAnimator:Llecho/lib/hellocharts/animation/ChartViewportAnimator;

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Llecho/lib/hellocharts/animation/ChartViewportAnimator;->startAnimation(Llecho/lib/hellocharts/model/Viewport;Llecho/lib/hellocharts/model/Viewport;J)V

    .line 404
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setDataAnimationListener(Llecho/lib/hellocharts/animation/ChartAnimationListener;)V
    .locals 1

    .line 165
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->dataAnimator:Llecho/lib/hellocharts/animation/ChartDataAnimator;

    invoke-interface {v0, p1}, Llecho/lib/hellocharts/animation/ChartDataAnimator;->setChartAnimationListener(Llecho/lib/hellocharts/animation/ChartAnimationListener;)V

    return-void
.end method

.method public setInteractive(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isInteractive:Z

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 1

    .line 299
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxZoom(F)V

    .line 300
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 1

    .line 385
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0, p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 386
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1

    .line 232
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->setScrollEnabled(Z)V

    return-void
.end method

.method public setValueSelectionEnabled(Z)V
    .locals 1

    .line 443
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->setValueSelectionEnabled(Z)V

    return-void
.end method

.method public setValueTouchEnabled(Z)V
    .locals 1

    .line 278
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->setValueTouchEnabled(Z)V

    return-void
.end method

.method public setViewportAnimationListener(Llecho/lib/hellocharts/animation/ChartAnimationListener;)V
    .locals 1

    .line 170
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->viewportAnimator:Llecho/lib/hellocharts/animation/ChartViewportAnimator;

    invoke-interface {v0, p1}, Llecho/lib/hellocharts/animation/ChartViewportAnimator;->setChartAnimationListener(Llecho/lib/hellocharts/animation/ChartAnimationListener;)V

    return-void
.end method

.method public setViewportCalculationEnabled(Z)V
    .locals 1

    .line 433
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0, p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->setViewportCalculationEnabled(Z)V

    return-void
.end method

.method public setViewportChangeListener(Llecho/lib/hellocharts/listener/ViewportChangeListener;)V
    .locals 1

    .line 175
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/computator/ChartComputator;->setViewportChangeListener(Llecho/lib/hellocharts/listener/ViewportChangeListener;)V

    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 1

    .line 222
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->setZoomEnabled(Z)V

    return-void
.end method

.method public setZoomLevel(FFF)V
    .locals 0

    .line 314
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/view/AbstractChartView;->computeZoomViewport(FFF)Llecho/lib/hellocharts/model/Viewport;

    move-result-object p1

    .line 315
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/view/AbstractChartView;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    return-void
.end method

.method public setZoomLevelWithAnimation(FFF)V
    .locals 0

    .line 320
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/view/AbstractChartView;->computeZoomViewport(FFF)Llecho/lib/hellocharts/model/Viewport;

    move-result-object p1

    .line 321
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/view/AbstractChartView;->setCurrentViewportWithAnimation(Llecho/lib/hellocharts/model/Viewport;)V

    return-void
.end method

.method public setZoomType(Llecho/lib/hellocharts/gesture/ZoomType;)V
    .locals 1

    .line 289
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->setZoomType(Llecho/lib/hellocharts/gesture/ZoomType;)V

    return-void
.end method

.method public startDataAnimation()V
    .locals 3

    .line 136
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->dataAnimator:Llecho/lib/hellocharts/animation/ChartDataAnimator;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-interface {v0, v1, v2}, Llecho/lib/hellocharts/animation/ChartDataAnimator;->startAnimation(J)V

    return-void
.end method

.method public startDataAnimation(J)V
    .locals 1

    .line 141
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->dataAnimator:Llecho/lib/hellocharts/animation/ChartDataAnimator;

    invoke-interface {v0, p1, p2}, Llecho/lib/hellocharts/animation/ChartDataAnimator;->startAnimation(J)V

    return-void
.end method
