.class public Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;
.super Llecho/lib/hellocharts/renderer/ComboChartRenderer;
.source "ComboLineColumnChartRenderer.java"


# instance fields
.field private columnChartRenderer:Llecho/lib/hellocharts/renderer/ColumnChartRenderer;

.field private lineChartRenderer:Llecho/lib/hellocharts/renderer/LineChartRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/ColumnChartDataProvider;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V
    .locals 1

    .line 16
    new-instance v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;

    invoke-direct {v0, p1, p2, p3}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/ColumnChartDataProvider;)V

    new-instance p3, Llecho/lib/hellocharts/renderer/LineChartRenderer;

    invoke-direct {p3, p1, p2, p4}, Llecho/lib/hellocharts/renderer/LineChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V

    invoke-direct {p0, p1, p2, v0, p3}, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/renderer/ColumnChartRenderer;Llecho/lib/hellocharts/renderer/LineChartRenderer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/ColumnChartDataProvider;Llecho/lib/hellocharts/renderer/LineChartRenderer;)V
    .locals 1

    .line 27
    new-instance v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;

    invoke-direct {v0, p1, p2, p3}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/ColumnChartDataProvider;)V

    invoke-direct {p0, p1, p2, v0, p4}, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/renderer/ColumnChartRenderer;Llecho/lib/hellocharts/renderer/LineChartRenderer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/renderer/ColumnChartRenderer;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V
    .locals 1

    .line 22
    new-instance v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;

    invoke-direct {v0, p1, p2, p4}, Llecho/lib/hellocharts/renderer/LineChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V

    invoke-direct {p0, p1, p2, p3, v0}, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/renderer/ColumnChartRenderer;Llecho/lib/hellocharts/renderer/LineChartRenderer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/renderer/ColumnChartRenderer;Llecho/lib/hellocharts/renderer/LineChartRenderer;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/ComboChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    .line 34
    iput-object p3, p0, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;->columnChartRenderer:Llecho/lib/hellocharts/renderer/ColumnChartRenderer;

    .line 35
    iput-object p4, p0, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;->lineChartRenderer:Llecho/lib/hellocharts/renderer/LineChartRenderer;

    .line 37
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;->renderers:Ljava/util/List;

    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;->columnChartRenderer:Llecho/lib/hellocharts/renderer/ColumnChartRenderer;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p0, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;->renderers:Ljava/util/List;

    iget-object p2, p0, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;->lineChartRenderer:Llecho/lib/hellocharts/renderer/LineChartRenderer;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
