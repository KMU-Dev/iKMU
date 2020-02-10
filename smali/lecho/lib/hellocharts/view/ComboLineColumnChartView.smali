.class public Llecho/lib/hellocharts/view/ComboLineColumnChartView;
.super Llecho/lib/hellocharts/view/AbstractChartView;
.source "ComboLineColumnChartView.java"

# interfaces
.implements Llecho/lib/hellocharts/provider/ComboLineColumnChartDataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboColumnChartDataProvider;,
        Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboLineChartDataProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ComboLineColumnChartView"


# instance fields
.field protected columnChartDataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

.field protected data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;

.field protected lineChartDataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

.field protected onValueTouchListener:Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/view/ComboLineColumnChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Llecho/lib/hellocharts/view/ComboLineColumnChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/view/AbstractChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance p2, Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboColumnChartDataProvider;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboColumnChartDataProvider;-><init>(Llecho/lib/hellocharts/view/ComboLineColumnChartView;Llecho/lib/hellocharts/view/ComboLineColumnChartView$1;)V

    iput-object p2, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->columnChartDataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    .line 34
    new-instance p2, Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboLineChartDataProvider;

    invoke-direct {p2, p0, p3}, Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboLineChartDataProvider;-><init>(Llecho/lib/hellocharts/view/ComboLineColumnChartView;Llecho/lib/hellocharts/view/ComboLineColumnChartView$1;)V

    iput-object p2, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->lineChartDataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    .line 35
    new-instance p2, Llecho/lib/hellocharts/listener/DummyCompoLineColumnChartOnValueSelectListener;

    invoke-direct {p2}, Llecho/lib/hellocharts/listener/DummyCompoLineColumnChartOnValueSelectListener;-><init>()V

    iput-object p2, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;

    .line 48
    new-instance p2, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;

    iget-object p3, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->columnChartDataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    iget-object v0, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->lineChartDataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-direct {p2, p1, p0, p3, v0}, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/ColumnChartDataProvider;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V

    invoke-virtual {p0, p2}, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->setChartRenderer(Llecho/lib/hellocharts/renderer/ChartRenderer;)V

    .line 50
    invoke-static {}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->generateDummyData()Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    move-result-object p1

    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->setComboLineColumnChartData(Llecho/lib/hellocharts/model/ComboLineColumnChartData;)V

    return-void
.end method


# virtual methods
.method public callTouchListener()V
    .locals 4

    .line 80
    iget-object v0, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->isSet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    sget-object v1, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->COLUMN:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getType()Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    move-result-object v2

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/Column;

    .line 87
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 88
    iget-object v2, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    .line 89
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v0

    .line 88
    invoke-interface {v2, v3, v0, v1}, Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;->onColumnValueSelected(IILlecho/lib/hellocharts/model/SubcolumnValue;)V

    goto :goto_0

    .line 91
    :cond_0
    sget-object v1, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->LINE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getType()Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    move-result-object v2

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/Line;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/PointValue;

    .line 95
    iget-object v2, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v0

    invoke-interface {v2, v3, v0, v1}, Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;->onPointValueSelected(IILlecho/lib/hellocharts/model/PointValue;)V

    goto :goto_0

    .line 99
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid selected value type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getType()Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    move-result-object v0

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_2
    iget-object v0, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;

    invoke-interface {v0}, Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;->onValueDeselected()V

    :goto_0
    return-void
.end method

.method public getChartData()Llecho/lib/hellocharts/model/ChartData;
    .locals 1

    .line 75
    iget-object v0, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    return-object v0
.end method

.method public getComboLineColumnChartData()Llecho/lib/hellocharts/model/ComboLineColumnChartData;
    .locals 1

    .line 55
    iget-object v0, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    return-object v0
.end method

.method public getOnValueTouchListener()Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;
    .locals 1

    .line 107
    iget-object v0, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;

    return-object v0
.end method

.method public setColumnChartRenderer(Landroid/content/Context;Llecho/lib/hellocharts/renderer/ColumnChartRenderer;)V
    .locals 2

    .line 117
    new-instance v0, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;

    iget-object v1, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->lineChartDataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-direct {v0, p1, p0, p2, v1}, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/renderer/ColumnChartRenderer;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->setChartRenderer(Llecho/lib/hellocharts/renderer/ChartRenderer;)V

    return-void
.end method

.method public setComboLineColumnChartData(Llecho/lib/hellocharts/model/ComboLineColumnChartData;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    goto :goto_0

    .line 67
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    .line 70
    :goto_0
    invoke-super {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->onChartDataChange()V

    return-void
.end method

.method public setLineChartRenderer(Landroid/content/Context;Llecho/lib/hellocharts/renderer/LineChartRenderer;)V
    .locals 2

    .line 121
    new-instance v0, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;

    iget-object v1, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->columnChartDataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-direct {v0, p1, p0, v1, p2}, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/ColumnChartDataProvider;Llecho/lib/hellocharts/renderer/LineChartRenderer;)V

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->setChartRenderer(Llecho/lib/hellocharts/renderer/ChartRenderer;)V

    return-void
.end method

.method public setOnValueTouchListener(Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 112
    iput-object p1, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;

    :cond_0
    return-void
.end method
