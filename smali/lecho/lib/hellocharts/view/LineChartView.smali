.class public Llecho/lib/hellocharts/view/LineChartView;
.super Llecho/lib/hellocharts/view/AbstractChartView;
.source "LineChartView.java"

# interfaces
.implements Llecho/lib/hellocharts/provider/LineChartDataProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "LineChartView"


# instance fields
.field protected data:Llecho/lib/hellocharts/model/LineChartData;

.field protected onValueTouchListener:Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/view/LineChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Llecho/lib/hellocharts/view/LineChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/view/AbstractChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p2, Llecho/lib/hellocharts/listener/DummyLineChartOnValueSelectListener;

    invoke-direct {p2}, Llecho/lib/hellocharts/listener/DummyLineChartOnValueSelectListener;-><init>()V

    iput-object p2, p0, Llecho/lib/hellocharts/view/LineChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;

    .line 38
    new-instance p2, Llecho/lib/hellocharts/renderer/LineChartRenderer;

    invoke-direct {p2, p1, p0, p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V

    invoke-virtual {p0, p2}, Llecho/lib/hellocharts/view/LineChartView;->setChartRenderer(Llecho/lib/hellocharts/renderer/ChartRenderer;)V

    .line 39
    invoke-static {}, Llecho/lib/hellocharts/model/LineChartData;->generateDummyData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object p1

    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/view/LineChartView;->setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V

    return-void
.end method


# virtual methods
.method public callTouchListener()V
    .locals 4

    .line 69
    iget-object v0, p0, Llecho/lib/hellocharts/view/LineChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->isSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Llecho/lib/hellocharts/view/LineChartView;->data:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/Line;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v1

    .line 73
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/PointValue;

    .line 74
    iget-object v2, p0, Llecho/lib/hellocharts/view/LineChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v0

    invoke-interface {v2, v3, v0, v1}, Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;->onValueSelected(IILlecho/lib/hellocharts/model/PointValue;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/view/LineChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;

    invoke-interface {v0}, Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;->onValueDeselected()V

    :goto_0
    return-void
.end method

.method public getChartData()Llecho/lib/hellocharts/model/ChartData;
    .locals 1

    .line 64
    iget-object v0, p0, Llecho/lib/hellocharts/view/LineChartView;->data:Llecho/lib/hellocharts/model/LineChartData;

    return-object v0
.end method

.method public getLineChartData()Llecho/lib/hellocharts/model/LineChartData;
    .locals 1

    .line 44
    iget-object v0, p0, Llecho/lib/hellocharts/view/LineChartView;->data:Llecho/lib/hellocharts/model/LineChartData;

    return-object v0
.end method

.method public getOnValueTouchListener()Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;
    .locals 1

    .line 81
    iget-object v0, p0, Llecho/lib/hellocharts/view/LineChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;

    return-object v0
.end method

.method public setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V
    .locals 0

    if-nez p1, :cond_0

    .line 54
    invoke-static {}, Llecho/lib/hellocharts/model/LineChartData;->generateDummyData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object p1

    iput-object p1, p0, Llecho/lib/hellocharts/view/LineChartView;->data:Llecho/lib/hellocharts/model/LineChartData;

    goto :goto_0

    .line 56
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/view/LineChartView;->data:Llecho/lib/hellocharts/model/LineChartData;

    .line 59
    :goto_0
    invoke-super {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->onChartDataChange()V

    return-void
.end method

.method public setOnValueTouchListener(Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 86
    iput-object p1, p0, Llecho/lib/hellocharts/view/LineChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;

    :cond_0
    return-void
.end method
