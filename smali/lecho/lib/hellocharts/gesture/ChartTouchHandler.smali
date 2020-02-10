.class public Llecho/lib/hellocharts/gesture/ChartTouchHandler;
.super Ljava/lang/Object;
.source "ChartTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;,
        Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartScaleGestureListener;
    }
.end annotation


# instance fields
.field protected chart:Llecho/lib/hellocharts/view/Chart;

.field protected chartScroller:Llecho/lib/hellocharts/gesture/ChartScroller;

.field protected chartZoomer:Llecho/lib/hellocharts/gesture/ChartZoomer;

.field protected computator:Llecho/lib/hellocharts/computator/ChartComputator;

.field protected containerScrollType:Llecho/lib/hellocharts/gesture/ContainerScrollType;

.field protected gestureDetector:Landroid/view/GestureDetector;

.field protected isScrollEnabled:Z

.field protected isValueSelectionEnabled:Z

.field protected isValueTouchEnabled:Z

.field protected isZoomEnabled:Z

.field protected oldSelectedValue:Llecho/lib/hellocharts/model/SelectedValue;

.field protected renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

.field protected scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field protected selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

.field protected selectionModeOldValue:Llecho/lib/hellocharts/model/SelectedValue;

.field protected viewParent:Landroid/view/ViewParent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isZoomEnabled:Z

    .line 28
    iput-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isScrollEnabled:Z

    .line 29
    iput-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueTouchEnabled:Z

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueSelectionEnabled:Z

    .line 36
    new-instance v0, Llecho/lib/hellocharts/model/SelectedValue;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/SelectedValue;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectionModeOldValue:Llecho/lib/hellocharts/model/SelectedValue;

    .line 38
    new-instance v0, Llecho/lib/hellocharts/model/SelectedValue;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/SelectedValue;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    .line 39
    new-instance v0, Llecho/lib/hellocharts/model/SelectedValue;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/SelectedValue;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->oldSelectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    .line 52
    iput-object p2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chart:Llecho/lib/hellocharts/view/Chart;

    .line 53
    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 54
    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartRenderer()Llecho/lib/hellocharts/renderer/ChartRenderer;

    move-result-object p2

    iput-object p2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    .line 55
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;

    invoke-direct {v0, p0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;-><init>(Llecho/lib/hellocharts/gesture/ChartTouchHandler;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->gestureDetector:Landroid/view/GestureDetector;

    .line 56
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartScaleGestureListener;

    invoke-direct {v0, p0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartScaleGestureListener;-><init>(Llecho/lib/hellocharts/gesture/ChartTouchHandler;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 57
    new-instance p2, Llecho/lib/hellocharts/gesture/ChartScroller;

    invoke-direct {p2, p1}, Llecho/lib/hellocharts/gesture/ChartScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartScroller:Llecho/lib/hellocharts/gesture/ChartScroller;

    .line 58
    new-instance p2, Llecho/lib/hellocharts/gesture/ChartZoomer;

    sget-object v0, Llecho/lib/hellocharts/gesture/ZoomType;->HORIZONTAL_AND_VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

    invoke-direct {p2, p1, v0}, Llecho/lib/hellocharts/gesture/ChartZoomer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/gesture/ZoomType;)V

    iput-object p2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartZoomer:Llecho/lib/hellocharts/gesture/ChartZoomer;

    return-void
.end method

.method static synthetic access$000(Llecho/lib/hellocharts/gesture/ChartTouchHandler;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->disallowParentInterceptTouchEvent()V

    return-void
.end method

.method static synthetic access$100(Llecho/lib/hellocharts/gesture/ChartTouchHandler;Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->allowParentInterceptTouchEvent(Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;)V

    return-void
.end method

.method private allowParentInterceptTouchEvent(Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;)V
    .locals 3

    .line 138
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->viewParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Llecho/lib/hellocharts/gesture/ContainerScrollType;->HORIZONTAL:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->containerScrollType:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;->canScrollX:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 140
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->viewParent:Landroid/view/ViewParent;

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 142
    :cond_0
    sget-object v0, Llecho/lib/hellocharts/gesture/ContainerScrollType;->VERTICAL:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->containerScrollType:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    if-ne v0, v1, :cond_1

    iget-boolean p1, p1, Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;->canScrollY:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 143
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p1

    if-nez p1, :cond_1

    .line 144
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->viewParent:Landroid/view/ViewParent;

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkTouch(FF)Z
    .locals 2

    .line 209
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->oldSelectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/SelectedValue;->set(Llecho/lib/hellocharts/model/SelectedValue;)V

    .line 210
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 212
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0, p1, p2}, Llecho/lib/hellocharts/renderer/ChartRenderer;->checkTouch(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    iget-object p2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {p2}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;

    move-result-object p2

    invoke-virtual {p1, p2}, Llecho/lib/hellocharts/model/SelectedValue;->set(Llecho/lib/hellocharts/model/SelectedValue;)V

    .line 217
    :cond_0
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->oldSelectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/SelectedValue;->isSet()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/SelectedValue;->isSet()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->oldSelectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    iget-object p2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {p1, p2}, Llecho/lib/hellocharts/model/SelectedValue;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 220
    :cond_1
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->isTouched()Z

    move-result p1

    return p1
.end method

.method private computeTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 199
    :pswitch_0
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->isTouched()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 200
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->clearTouch()V

    goto/16 :goto_1

    .line 190
    :pswitch_1
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->checkTouch(FF)Z

    move-result p1

    if-nez p1, :cond_2

    .line 192
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->clearTouch()V

    goto/16 :goto_1

    .line 167
    :pswitch_2
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->checkTouch(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    iget-boolean p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueSelectionEnabled:Z

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectionModeOldValue:Llecho/lib/hellocharts/model/SelectedValue;

    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {p1, v0}, Llecho/lib/hellocharts/model/SelectedValue;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 174
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectionModeOldValue:Llecho/lib/hellocharts/model/SelectedValue;

    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {p1, v0}, Llecho/lib/hellocharts/model/SelectedValue;->set(Llecho/lib/hellocharts/model/SelectedValue;)V

    .line 175
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {p1}, Llecho/lib/hellocharts/view/Chart;->callTouchListener()V

    goto :goto_1

    .line 178
    :cond_0
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {p1}, Llecho/lib/hellocharts/view/Chart;->callTouchListener()V

    .line 179
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->clearTouch()V

    goto :goto_1

    .line 182
    :cond_1
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->clearTouch()V

    goto :goto_1

    .line 153
    :pswitch_3
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->isTouched()Z

    move-result v0

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v2, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->checkTouch(FF)Z

    move-result p1

    if-eq v0, p1, :cond_2

    .line 158
    iget-boolean p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueSelectionEnabled:Z

    if-eqz p1, :cond_3

    .line 159
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectionModeOldValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    if-eqz v0, :cond_3

    .line 160
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->isTouched()Z

    move-result p1

    if-nez p1, :cond_3

    .line 161
    iget-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {p1}, Llecho/lib/hellocharts/view/Chart;->callTouchListener()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private disallowParentInterceptTouchEvent()V
    .locals 2

    .line 127
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->viewParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->viewParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()Z
    .locals 4

    .line 72
    iget-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isScrollEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartScroller:Llecho/lib/hellocharts/gesture/ChartScroller;

    iget-object v2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/gesture/ChartScroller;->computeScrollOffset(Llecho/lib/hellocharts/computator/ChartComputator;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    iget-boolean v2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isZoomEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartZoomer:Llecho/lib/hellocharts/gesture/ChartZoomer;

    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/gesture/ChartZoomer;->computeZoom(Llecho/lib/hellocharts/computator/ChartComputator;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getZoomType()Llecho/lib/hellocharts/gesture/ZoomType;
    .locals 1

    .line 242
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartZoomer:Llecho/lib/hellocharts/gesture/ChartZoomer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ChartZoomer;->getZoomType()Llecho/lib/hellocharts/gesture/ZoomType;

    move-result-object v0

    return-object v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 90
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 92
    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 94
    :goto_1
    iget-boolean v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isZoomEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    invoke-direct {p0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->disallowParentInterceptTouchEvent()V

    .line 100
    :cond_2
    iget-boolean v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueTouchEnabled:Z

    if-eqz v1, :cond_5

    .line 101
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computeTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :cond_5
    :goto_3
    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/ViewParent;Llecho/lib/hellocharts/gesture/ContainerScrollType;)Z
    .locals 0

    .line 116
    iput-object p2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->viewParent:Landroid/view/ViewParent;

    .line 117
    iput-object p3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->containerScrollType:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    .line 119
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public isScrollEnabled()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isScrollEnabled:Z

    return v0
.end method

.method public isValueSelectionEnabled()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueSelectionEnabled:Z

    return v0
.end method

.method public isValueTouchEnabled()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueTouchEnabled:Z

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isZoomEnabled:Z

    return v0
.end method

.method public resetTouchHandler()V
    .locals 1

    .line 62
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 63
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartRenderer()Llecho/lib/hellocharts/renderer/ChartRenderer;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isScrollEnabled:Z

    return-void
.end method

.method public setValueSelectionEnabled(Z)V
    .locals 0

    .line 262
    iput-boolean p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueSelectionEnabled:Z

    return-void
.end method

.method public setValueTouchEnabled(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueTouchEnabled:Z

    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isZoomEnabled:Z

    return-void
.end method

.method public setZoomType(Llecho/lib/hellocharts/gesture/ZoomType;)V
    .locals 1

    .line 246
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartZoomer:Llecho/lib/hellocharts/gesture/ChartZoomer;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/gesture/ChartZoomer;->setZoomType(Llecho/lib/hellocharts/gesture/ZoomType;)V

    return-void
.end method
