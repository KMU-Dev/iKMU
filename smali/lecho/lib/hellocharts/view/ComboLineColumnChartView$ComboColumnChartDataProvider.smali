.class Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboColumnChartDataProvider;
.super Ljava/lang/Object;
.source "ComboLineColumnChartView.java"

# interfaces
.implements Llecho/lib/hellocharts/provider/ColumnChartDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/view/ComboLineColumnChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComboColumnChartDataProvider"
.end annotation


# instance fields
.field final synthetic this$0:Llecho/lib/hellocharts/view/ComboLineColumnChartView;


# direct methods
.method private constructor <init>(Llecho/lib/hellocharts/view/ComboLineColumnChartView;)V
    .locals 0

    .line 139
    iput-object p1, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboColumnChartDataProvider;->this$0:Llecho/lib/hellocharts/view/ComboLineColumnChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llecho/lib/hellocharts/view/ComboLineColumnChartView;Llecho/lib/hellocharts/view/ComboLineColumnChartView$1;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboColumnChartDataProvider;-><init>(Llecho/lib/hellocharts/view/ComboLineColumnChartView;)V

    return-void
.end method


# virtual methods
.method public getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 1

    .line 143
    iget-object v0, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboColumnChartDataProvider;->this$0:Llecho/lib/hellocharts/view/ComboLineColumnChartView;

    iget-object v0, v0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    return-object v0
.end method

.method public setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V
    .locals 1

    .line 148
    iget-object v0, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboColumnChartDataProvider;->this$0:Llecho/lib/hellocharts/view/ComboLineColumnChartView;

    iget-object v0, v0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    return-void
.end method
