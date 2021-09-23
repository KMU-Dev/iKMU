.class public Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$ChartScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "PreviewChartTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChartScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;


# direct methods
.method protected constructor <init>(Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;)V
    .locals 0

    .line 25
    iput-object p1, p0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$ChartScaleGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .line 29
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$ChartScaleGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;

    iget-boolean v0, v0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;->isZoomEnabled:Z

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    .line 31
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    :cond_0
    iget-object v1, p0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$ChartScaleGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;

    iget-object v1, v1, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;->chartZoomer:Llecho/lib/hellocharts/gesture/ChartZoomer;

    iget-object v2, p0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$ChartScaleGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;

    iget-object v2, v2, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v1, v2, v3, p1, v0}, Llecho/lib/hellocharts/gesture/ChartZoomer;->scale(Llecho/lib/hellocharts/computator/ChartComputator;FFF)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
