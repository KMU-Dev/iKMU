.class public Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ChartTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/gesture/ChartTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChartGestureListener"
.end annotation


# instance fields
.field protected scrollResult:Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;

.field final synthetic this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;


# direct methods
.method protected constructor <init>(Llecho/lib/hellocharts/gesture/ChartTouchHandler;)V
    .locals 0

    .line 281
    iput-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 283
    new-instance p1, Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;

    invoke-direct {p1}, Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->scrollResult:Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 300
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-boolean v0, v0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isZoomEnabled:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object v0, v0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartZoomer:Llecho/lib/hellocharts/gesture/ChartZoomer;

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object v1, v1, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0, p1, v1}, Llecho/lib/hellocharts/gesture/ChartZoomer;->startZoom(Landroid/view/MotionEvent;Llecho/lib/hellocharts/computator/ChartComputator;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 287
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-boolean p1, p1, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isScrollEnabled:Z

    if-eqz p1, :cond_0

    .line 289
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-static {p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->access$000(Llecho/lib/hellocharts/gesture/ChartTouchHandler;)V

    .line 291
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object p1, p1, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartScroller:Llecho/lib/hellocharts/gesture/ChartScroller;

    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object v0, v0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p1, v0}, Llecho/lib/hellocharts/gesture/ChartScroller;->startScroll(Llecho/lib/hellocharts/computator/ChartComputator;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 324
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-boolean p1, p1, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isScrollEnabled:Z

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object p1, p1, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartScroller:Llecho/lib/hellocharts/gesture/ChartScroller;

    neg-float p2, p3

    float-to-int p2, p2

    neg-float p3, p4

    float-to-int p3, p3

    iget-object p4, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object p4, p4, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p1, p2, p3, p4}, Llecho/lib/hellocharts/gesture/ChartScroller;->fling(IILlecho/lib/hellocharts/computator/ChartComputator;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 309
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-boolean p1, p1, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isScrollEnabled:Z

    if-eqz p1, :cond_0

    .line 310
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object p1, p1, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartScroller:Llecho/lib/hellocharts/gesture/ChartScroller;

    iget-object p2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object p2, p2, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->scrollResult:Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;

    .line 311
    invoke-virtual {p1, p2, p3, p4, v0}, Llecho/lib/hellocharts/gesture/ChartScroller;->scroll(Llecho/lib/hellocharts/computator/ChartComputator;FFLlecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;)Z

    move-result p1

    .line 313
    iget-object p2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object p3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->scrollResult:Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;

    invoke-static {p2, p3}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->access$100(Llecho/lib/hellocharts/gesture/ChartTouchHandler;Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;)V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
