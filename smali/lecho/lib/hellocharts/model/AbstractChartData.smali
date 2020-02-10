.class public abstract Llecho/lib/hellocharts/model/AbstractChartData;
.super Ljava/lang/Object;
.source "AbstractChartData.java"

# interfaces
.implements Llecho/lib/hellocharts/model/ChartData;


# static fields
.field public static final DEFAULT_TEXT_SIZE_SP:I = 0xc


# instance fields
.field protected axisXBottom:Llecho/lib/hellocharts/model/Axis;

.field protected axisXTop:Llecho/lib/hellocharts/model/Axis;

.field protected axisYLeft:Llecho/lib/hellocharts/model/Axis;

.field protected axisYRight:Llecho/lib/hellocharts/model/Axis;

.field protected isValueLabelBackgroundEnabled:Z

.field protected isValueLabelBackgrountAuto:Z

.field protected valueLabelBackgroundColor:I

.field protected valueLabelTextColor:I

.field protected valueLabelTextSize:I

.field protected valueLabelTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    const/16 v0, 0xc

    .line 18
    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgroundEnabled:Z

    .line 30
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgrountAuto:Z

    .line 37
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    invoke-static {v0}, Llecho/lib/hellocharts/util/ChartUtils;->darkenColor(I)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelBackgroundColor:I

    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/AbstractChartData;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    const/16 v0, 0xc

    .line 18
    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgroundEnabled:Z

    .line 30
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgrountAuto:Z

    .line 37
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    invoke-static {v0}, Llecho/lib/hellocharts/util/ChartUtils;->darkenColor(I)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelBackgroundColor:I

    .line 49
    iget-object v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisXBottom:Llecho/lib/hellocharts/model/Axis;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    iget-object v1, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisXBottom:Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/Axis;-><init>(Llecho/lib/hellocharts/model/Axis;)V

    iput-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXBottom:Llecho/lib/hellocharts/model/Axis;

    .line 52
    :cond_0
    iget-object v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisXTop:Llecho/lib/hellocharts/model/Axis;

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    iget-object v1, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisXTop:Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/Axis;-><init>(Llecho/lib/hellocharts/model/Axis;)V

    iput-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXTop:Llecho/lib/hellocharts/model/Axis;

    .line 55
    :cond_1
    iget-object v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisYLeft:Llecho/lib/hellocharts/model/Axis;

    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    iget-object v1, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisYLeft:Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/Axis;-><init>(Llecho/lib/hellocharts/model/Axis;)V

    iput-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYLeft:Llecho/lib/hellocharts/model/Axis;

    .line 58
    :cond_2
    iget-object v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisYRight:Llecho/lib/hellocharts/model/Axis;

    if-eqz v0, :cond_3

    .line 59
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    iget-object v1, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisYRight:Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/Axis;-><init>(Llecho/lib/hellocharts/model/Axis;)V

    iput-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYRight:Llecho/lib/hellocharts/model/Axis;

    .line 61
    :cond_3
    iget v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    .line 62
    iget v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    .line 63
    iget-object p1, p1, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTypeface:Landroid/graphics/Typeface;

    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTypeface:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public getAxisXBottom()Llecho/lib/hellocharts/model/Axis;
    .locals 1

    .line 68
    iget-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXBottom:Llecho/lib/hellocharts/model/Axis;

    return-object v0
.end method

.method public getAxisXTop()Llecho/lib/hellocharts/model/Axis;
    .locals 1

    .line 88
    iget-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXTop:Llecho/lib/hellocharts/model/Axis;

    return-object v0
.end method

.method public getAxisYLeft()Llecho/lib/hellocharts/model/Axis;
    .locals 1

    .line 78
    iget-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYLeft:Llecho/lib/hellocharts/model/Axis;

    return-object v0
.end method

.method public getAxisYRight()Llecho/lib/hellocharts/model/Axis;
    .locals 1

    .line 98
    iget-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYRight:Llecho/lib/hellocharts/model/Axis;

    return-object v0
.end method

.method public getValueLabelBackgroundColor()I
    .locals 1

    .line 158
    iget v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelBackgroundColor:I

    return v0
.end method

.method public getValueLabelTextColor()I
    .locals 1

    .line 108
    iget v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    return v0
.end method

.method public getValueLabelTextSize()I
    .locals 1

    .line 118
    iget v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    return v0
.end method

.method public getValueLabelTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 128
    iget-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isValueLabelBackgroundAuto()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgrountAuto:Z

    return v0
.end method

.method public isValueLabelBackgroundEnabled()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgroundEnabled:Z

    return v0
.end method

.method public setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V
    .locals 0

    .line 73
    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXBottom:Llecho/lib/hellocharts/model/Axis;

    return-void
.end method

.method public setAxisXTop(Llecho/lib/hellocharts/model/Axis;)V
    .locals 0

    .line 93
    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXTop:Llecho/lib/hellocharts/model/Axis;

    return-void
.end method

.method public setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V
    .locals 0

    .line 83
    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYLeft:Llecho/lib/hellocharts/model/Axis;

    return-void
.end method

.method public setAxisYRight(Llecho/lib/hellocharts/model/Axis;)V
    .locals 0

    .line 103
    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYRight:Llecho/lib/hellocharts/model/Axis;

    return-void
.end method

.method public setValueLabelBackgroundAuto(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgrountAuto:Z

    return-void
.end method

.method public setValueLabelBackgroundColor(I)V
    .locals 0

    .line 163
    iput p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelBackgroundColor:I

    return-void
.end method

.method public setValueLabelBackgroundEnabled(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgroundEnabled:Z

    return-void
.end method

.method public setValueLabelTextSize(I)V
    .locals 0

    .line 123
    iput p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    return-void
.end method

.method public setValueLabelTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 133
    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public setValueLabelsTextColor(I)V
    .locals 0

    .line 113
    iput p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    return-void
.end method
