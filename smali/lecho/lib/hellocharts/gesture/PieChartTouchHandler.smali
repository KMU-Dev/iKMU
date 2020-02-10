.class public Llecho/lib/hellocharts/gesture/PieChartTouchHandler;
.super Llecho/lib/hellocharts/gesture/ChartTouchHandler;
.source "PieChartTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;,
        Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartScaleGestureListener;
    }
.end annotation


# static fields
.field public static final FLING_VELOCITY_DOWNSCALE:I = 0x4


# instance fields
.field private isRotationEnabled:Z

.field protected pieChart:Llecho/lib/hellocharts/view/PieChartView;

.field protected scroller:Landroid/support/v4/widget/ScrollerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/PieChartView;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->isRotationEnabled:Z

    .line 35
    iput-object p2, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->pieChart:Llecho/lib/hellocharts/view/PieChartView;

    .line 36
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object p2

    iput-object p2, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->scroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 37
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;-><init>(Llecho/lib/hellocharts/gesture/PieChartTouchHandler;Llecho/lib/hellocharts/gesture/PieChartTouchHandler$1;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->gestureDetector:Landroid/view/GestureDetector;

    .line 38
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartScaleGestureListener;

    invoke-direct {v0, p0, v1}, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartScaleGestureListener;-><init>(Llecho/lib/hellocharts/gesture/PieChartTouchHandler;Llecho/lib/hellocharts/gesture/PieChartTouchHandler$1;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->isZoomEnabled:Z

    return-void
.end method

.method static synthetic access$200(Llecho/lib/hellocharts/gesture/PieChartTouchHandler;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->isRotationEnabled:Z

    return p0
.end method


# virtual methods
.method public computeScroll()Z
    .locals 3

    .line 44
    iget-boolean v0, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->isRotationEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 47
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->scroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->pieChart:Llecho/lib/hellocharts/view/PieChartView;

    iget-object v2, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->scroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Llecho/lib/hellocharts/view/PieChartView;->setChartRotation(IZ)V

    :cond_1
    return v1
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 56
    invoke-super {p0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 58
    iget-boolean v1, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->isRotationEnabled:Z

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0
.end method

.method public isRotationEnabled()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->isRotationEnabled:Z

    return v0
.end method

.method public setRotationEnabled(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->isRotationEnabled:Z

    return-void
.end method
