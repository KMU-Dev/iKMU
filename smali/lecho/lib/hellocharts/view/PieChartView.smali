.class public Llecho/lib/hellocharts/view/PieChartView;
.super Llecho/lib/hellocharts/view/AbstractChartView;
.source "PieChartView.java"

# interfaces
.implements Llecho/lib/hellocharts/provider/PieChartDataProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "PieChartView"


# instance fields
.field protected data:Llecho/lib/hellocharts/model/PieChartData;

.field protected onValueTouchListener:Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;

.field protected pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

.field protected rotationAnimator:Llecho/lib/hellocharts/animation/PieChartRotationAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/view/PieChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Llecho/lib/hellocharts/view/PieChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/view/AbstractChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p2, Llecho/lib/hellocharts/listener/DummyPieChartOnValueSelectListener;

    invoke-direct {p2}, Llecho/lib/hellocharts/listener/DummyPieChartOnValueSelectListener;-><init>()V

    iput-object p2, p0, Llecho/lib/hellocharts/view/PieChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;

    .line 50
    new-instance p2, Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-direct {p2, p1, p0, p0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/PieChartDataProvider;)V

    iput-object p2, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    .line 51
    new-instance p2, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    invoke-direct {p2, p1, p0}, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/PieChartView;)V

    iput-object p2, p0, Llecho/lib/hellocharts/view/PieChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    .line 52
    iget-object p1, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/view/PieChartView;->setChartRenderer(Llecho/lib/hellocharts/renderer/ChartRenderer;)V

    .line 53
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xe

    if-ge p1, p2, :cond_0

    .line 54
    new-instance p1, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    invoke-direct {p1, p0}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;-><init>(Llecho/lib/hellocharts/view/PieChartView;)V

    iput-object p1, p0, Llecho/lib/hellocharts/view/PieChartView;->rotationAnimator:Llecho/lib/hellocharts/animation/PieChartRotationAnimator;

    goto :goto_0

    .line 56
    :cond_0
    new-instance p1, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;

    invoke-direct {p1, p0}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;-><init>(Llecho/lib/hellocharts/view/PieChartView;)V

    iput-object p1, p0, Llecho/lib/hellocharts/view/PieChartView;->rotationAnimator:Llecho/lib/hellocharts/animation/PieChartRotationAnimator;

    .line 58
    :goto_0
    invoke-static {}, Llecho/lib/hellocharts/model/PieChartData;->generateDummyData()Llecho/lib/hellocharts/model/PieChartData;

    move-result-object p1

    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/view/PieChartView;->setPieChartData(Llecho/lib/hellocharts/model/PieChartData;)V

    return-void
.end method


# virtual methods
.method public callTouchListener()V
    .locals 3

    .line 88
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->isSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Llecho/lib/hellocharts/view/PieChartView;->data:Llecho/lib/hellocharts/model/PieChartData;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/PieChartData;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SliceValue;

    .line 92
    iget-object v2, p0, Llecho/lib/hellocharts/view/PieChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v0

    invoke-interface {v2, v0, v1}, Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;->onValueSelected(ILlecho/lib/hellocharts/model/SliceValue;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;

    invoke-interface {v0}, Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;->onValueDeselected()V

    :goto_0
    return-void
.end method

.method public getChartData()Llecho/lib/hellocharts/model/ChartData;
    .locals 1

    .line 83
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->data:Llecho/lib/hellocharts/model/PieChartData;

    return-object v0
.end method

.method public getChartRotation()I
    .locals 1

    .line 132
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->getChartRotation()I

    move-result v0

    return v0
.end method

.method public getCircleFillRatio()F
    .locals 1

    .line 181
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->getCircleFillRatio()F

    move-result v0

    return v0
.end method

.method public getCircleOval()Landroid/graphics/RectF;
    .locals 1

    .line 112
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->getCircleOval()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getOnValueTouchListener()Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;
    .locals 1

    .line 99
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;

    return-object v0
.end method

.method public getPieChartData()Llecho/lib/hellocharts/model/PieChartData;
    .locals 1

    .line 63
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->data:Llecho/lib/hellocharts/model/PieChartData;

    return-object v0
.end method

.method public getValueForAngle(ILlecho/lib/hellocharts/model/SelectedValue;)Llecho/lib/hellocharts/model/SliceValue;
    .locals 1

    .line 174
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {v0, p1, p2}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->getValueForAngle(ILlecho/lib/hellocharts/model/SelectedValue;)Llecho/lib/hellocharts/model/SliceValue;

    move-result-object p1

    return-object p1
.end method

.method public isChartRotationEnabled()Z
    .locals 1

    .line 152
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    instance-of v0, v0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    check-cast v0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->isRotationEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setChartRotation(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 143
    iget-object p2, p0, Llecho/lib/hellocharts/view/PieChartView;->rotationAnimator:Llecho/lib/hellocharts/animation/PieChartRotationAnimator;

    invoke-interface {p2}, Llecho/lib/hellocharts/animation/PieChartRotationAnimator;->cancelAnimation()V

    .line 144
    iget-object p2, p0, Llecho/lib/hellocharts/view/PieChartView;->rotationAnimator:Llecho/lib/hellocharts/animation/PieChartRotationAnimator;

    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->getChartRotation()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-interface {p2, v0, p1}, Llecho/lib/hellocharts/animation/PieChartRotationAnimator;->startAnimation(FF)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object p2, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {p2, p1}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->setChartRotation(I)V

    .line 148
    :goto_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setChartRotationEnabled(Z)V
    .locals 1

    .line 165
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    instance-of v0, v0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    check-cast v0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->setRotationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCircleFillRatio(F)V
    .locals 1

    .line 189
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->setCircleFillRatio(F)V

    .line 190
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setCircleOval(Landroid/graphics/RectF;)V
    .locals 1

    .line 121
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->setCircleOval(Landroid/graphics/RectF;)V

    .line 122
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setOnValueTouchListener(Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 104
    iput-object p1, p0, Llecho/lib/hellocharts/view/PieChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;

    :cond_0
    return-void
.end method

.method public setPieChartData(Llecho/lib/hellocharts/model/PieChartData;)V
    .locals 0

    if-nez p1, :cond_0

    .line 73
    invoke-static {}, Llecho/lib/hellocharts/model/PieChartData;->generateDummyData()Llecho/lib/hellocharts/model/PieChartData;

    move-result-object p1

    iput-object p1, p0, Llecho/lib/hellocharts/view/PieChartView;->data:Llecho/lib/hellocharts/model/PieChartData;

    goto :goto_0

    .line 75
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/view/PieChartView;->data:Llecho/lib/hellocharts/model/PieChartData;

    .line 78
    :goto_0
    invoke-super {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->onChartDataChange()V

    return-void
.end method
