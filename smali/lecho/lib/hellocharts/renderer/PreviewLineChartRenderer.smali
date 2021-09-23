.class public Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;
.super Llecho/lib/hellocharts/renderer/LineChartRenderer;
.source "PreviewLineChartRenderer.java"


# static fields
.field private static final DEFAULT_PREVIEW_STROKE_WIDTH_DP:I = 0x2

.field private static final DEFAULT_PREVIEW_TRANSPARENCY:I = 0x40

.field private static final FULL_ALPHA:I = 0xff


# instance fields
.field private previewPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/renderer/LineChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    .line 26
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    const p2, -0x333334

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    iget p2, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->density:F

    const/4 p3, 0x2

    invoke-static {p2, p3}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public drawUnclipped(Landroid/graphics/Canvas;)V
    .locals 10

    .line 33
    invoke-super {p0, p1}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawUnclipped(Landroid/graphics/Canvas;)V

    .line 34
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 35
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v2, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v1

    .line 36
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v3, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v2

    .line 37
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v4, v0, Llecho/lib/hellocharts/model/Viewport;->right:F

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v9

    .line 38
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    invoke-virtual {v3, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v0

    .line 39
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 40
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v8, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    move v5, v2

    move v6, v9

    move v7, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 42
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 44
    iget-object v8, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getPreviewColor()I
    .locals 1

    .line 48
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public setPreviewColor(I)V
    .locals 1

    .line 52
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
