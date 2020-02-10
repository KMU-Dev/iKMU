.class public Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$PreviewChartGestureListener;
.super Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;
.source "PreviewChartTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PreviewChartGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;


# direct methods
.method protected constructor <init>(Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;)V
    .locals 0

    .line 41
    iput-object p1, p0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$PreviewChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;

    invoke-direct {p0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;-><init>(Llecho/lib/hellocharts/gesture/ChartTouchHandler;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    neg-float p3, p3

    neg-float p4, p4

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    neg-float p3, p3

    neg-float p4, p4

    .line 45
    invoke-super {p0, p1, p2, p3, p4}, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
