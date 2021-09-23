.class public Llecho/lib/hellocharts/view/ColumnChartView;
.super Llecho/lib/hellocharts/view/AbstractChartView;
.source "ColumnChartView.java"

# interfaces
.implements Llecho/lib/hellocharts/provider/ColumnChartDataProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "ColumnChartView"


# instance fields
.field private data:Llecho/lib/hellocharts/model/ColumnChartData;

.field private onValueTouchListener:Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/view/ColumnChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Llecho/lib/hellocharts/view/ColumnChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/view/AbstractChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p2, Llecho/lib/hellocharts/listener/DummyColumnChartOnValueSelectListener;

    invoke-direct {p2}, Llecho/lib/hellocharts/listener/DummyColumnChartOnValueSelectListener;-><init>()V

    iput-object p2, p0, Llecho/lib/hellocharts/view/ColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;

    .line 36
    new-instance p2, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;

    invoke-direct {p2, p1, p0, p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/ColumnChartDataProvider;)V

    invoke-virtual {p0, p2}, Llecho/lib/hellocharts/view/ColumnChartView;->setChartRenderer(Llecho/lib/hellocharts/renderer/ChartRenderer;)V

    .line 37
    invoke-static {}, Llecho/lib/hellocharts/model/ColumnChartData;->generateDummyData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object p1

    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    return-void
.end method


# virtual methods
.method public callTouchListener()V
    .locals 4

    .line 68
    iget-object v0, p0, Llecho/lib/hellocharts/view/ColumnChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->isSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Llecho/lib/hellocharts/view/ColumnChartView;->data:Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/Column;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 73
    iget-object v2, p0, Llecho/lib/hellocharts/view/ColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v0

    invoke-interface {v2, v3, v0, v1}, Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;->onValueSelected(IILlecho/lib/hellocharts/model/SubcolumnValue;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/view/ColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;

    invoke-interface {v0}, Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;->onValueDeselected()V

    :goto_0
    return-void
.end method

.method public bridge synthetic getChartData()Llecho/lib/hellocharts/model/ChartData;
    .locals 1

    .line 21
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/ColumnChartView;->getChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    return-object v0
.end method

.method public getChartData()Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 1

    .line 63
    iget-object v0, p0, Llecho/lib/hellocharts/view/ColumnChartView;->data:Llecho/lib/hellocharts/model/ColumnChartData;

    return-object v0
.end method

.method public getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 1

    .line 42
    iget-object v0, p0, Llecho/lib/hellocharts/view/ColumnChartView;->data:Llecho/lib/hellocharts/model/ColumnChartData;

    return-object v0
.end method

.method public getOnValueTouchListener()Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;
    .locals 1

    .line 80
    iget-object v0, p0, Llecho/lib/hellocharts/view/ColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;

    return-object v0
.end method

.method public setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V
    .locals 0

    if-nez p1, :cond_0

    .line 52
    invoke-static {}, Llecho/lib/hellocharts/model/ColumnChartData;->generateDummyData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object p1

    iput-object p1, p0, Llecho/lib/hellocharts/view/ColumnChartView;->data:Llecho/lib/hellocharts/model/ColumnChartData;

    goto :goto_0

    .line 54
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/view/ColumnChartView;->data:Llecho/lib/hellocharts/model/ColumnChartData;

    .line 57
    :goto_0
    invoke-super {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->onChartDataChange()V

    return-void
.end method

.method public setOnValueTouchListener(Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 85
    iput-object p1, p0, Llecho/lib/hellocharts/view/ColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;

    :cond_0
    return-void
.end method
