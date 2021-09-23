.class public Llecho/lib/hellocharts/computator/PreviewChartComputator;
.super Llecho/lib/hellocharts/computator/ChartComputator;
.source "PreviewChartComputator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Llecho/lib/hellocharts/computator/ChartComputator;-><init>()V

    return-void
.end method


# virtual methods
.method public computeRawX(F)F
    .locals 2

    .line 12
    iget-object v0, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 13
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v1

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    .line 14
    iget-object v0, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    return v0
.end method

.method public computeRawY(F)F
    .locals 2

    .line 18
    iget-object v0, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 19
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v1

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    .line 20
    iget-object v0, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    return v0
.end method

.method public constrainViewport(FFFF)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Llecho/lib/hellocharts/computator/ChartComputator;->constrainViewport(FFFF)V

    .line 33
    iget-object p1, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->viewportChangeListener:Llecho/lib/hellocharts/listener/ViewportChangeListener;

    iget-object p2, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-interface {p1, p2}, Llecho/lib/hellocharts/listener/ViewportChangeListener;->onViewportChanged(Llecho/lib/hellocharts/model/Viewport;)V

    return-void
.end method

.method public getVisibleViewport()Llecho/lib/hellocharts/model/Viewport;
    .locals 1

    .line 24
    iget-object v0, p0, Llecho/lib/hellocharts/computator/PreviewChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    return-object v0
.end method

.method public setVisibleViewport(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/computator/PreviewChartComputator;->setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V

    return-void
.end method
