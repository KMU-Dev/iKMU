.class public Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;
.super Llecho/lib/hellocharts/gesture/ChartTouchHandler;
.source "PreviewChartTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$PreviewChartGestureListener;,
        Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$ChartScaleGestureListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    .line 17
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$PreviewChartGestureListener;

    invoke-direct {v0, p0}, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$PreviewChartGestureListener;-><init>(Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;->gestureDetector:Landroid/view/GestureDetector;

    .line 18
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$ChartScaleGestureListener;

    invoke-direct {v0, p0}, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$ChartScaleGestureListener;-><init>(Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;->isValueTouchEnabled:Z

    .line 22
    iput-boolean p1, p0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;->isValueSelectionEnabled:Z

    return-void
.end method
