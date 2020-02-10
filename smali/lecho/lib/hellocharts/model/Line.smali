.class public Llecho/lib/hellocharts/model/Line;
.super Ljava/lang/Object;
.source "Line.java"


# static fields
.field private static final DEFAULT_AREA_TRANSPARENCY:I = 0x40

.field private static final DEFAULT_LINE_STROKE_WIDTH_DP:I = 0x3

.field private static final DEFAULT_POINT_RADIUS_DP:I = 0x6

.field public static final UNINITIALIZED:I


# instance fields
.field private areaTransparency:I

.field private color:I

.field private darkenColor:I

.field private formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

.field private hasLabels:Z

.field private hasLabelsOnlyForSelected:Z

.field private hasLines:Z

.field private hasPoints:Z

.field private isCubic:Z

.field private isFilled:Z

.field private isSquare:Z

.field private pathEffect:Landroid/graphics/PathEffect;

.field private pointColor:I

.field private pointRadius:I

.field private shape:Llecho/lib/hellocharts/model/ValueShape;

.field private strokeWidth:I

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/PointValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->color:I

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Llecho/lib/hellocharts/model/Line;->pointColor:I

    .line 23
    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v1, p0, Llecho/lib/hellocharts/model/Line;->darkenColor:I

    const/16 v1, 0x40

    .line 27
    iput v1, p0, Llecho/lib/hellocharts/model/Line;->areaTransparency:I

    const/4 v1, 0x3

    .line 28
    iput v1, p0, Llecho/lib/hellocharts/model/Line;->strokeWidth:I

    const/4 v1, 0x6

    .line 29
    iput v1, p0, Llecho/lib/hellocharts/model/Line;->pointRadius:I

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Line;->hasPoints:Z

    .line 31
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Line;->hasLines:Z

    .line 32
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLabels:Z

    .line 33
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected:Z

    .line 34
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isCubic:Z

    .line 35
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isSquare:Z

    .line 36
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isFilled:Z

    .line 37
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 39
    new-instance v0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/PointValue;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->color:I

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Llecho/lib/hellocharts/model/Line;->pointColor:I

    .line 23
    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v1, p0, Llecho/lib/hellocharts/model/Line;->darkenColor:I

    const/16 v1, 0x40

    .line 27
    iput v1, p0, Llecho/lib/hellocharts/model/Line;->areaTransparency:I

    const/4 v1, 0x3

    .line 28
    iput v1, p0, Llecho/lib/hellocharts/model/Line;->strokeWidth:I

    const/4 v1, 0x6

    .line 29
    iput v1, p0, Llecho/lib/hellocharts/model/Line;->pointRadius:I

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Line;->hasPoints:Z

    .line 31
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Line;->hasLines:Z

    .line 32
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLabels:Z

    .line 33
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected:Z

    .line 34
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isCubic:Z

    .line 35
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isSquare:Z

    .line 36
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isFilled:Z

    .line 37
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 39
    new-instance v0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    .line 47
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/Line;->setValues(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/Line;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->color:I

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Llecho/lib/hellocharts/model/Line;->pointColor:I

    .line 23
    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v1, p0, Llecho/lib/hellocharts/model/Line;->darkenColor:I

    const/16 v1, 0x40

    .line 27
    iput v1, p0, Llecho/lib/hellocharts/model/Line;->areaTransparency:I

    const/4 v1, 0x3

    .line 28
    iput v1, p0, Llecho/lib/hellocharts/model/Line;->strokeWidth:I

    const/4 v1, 0x6

    .line 29
    iput v1, p0, Llecho/lib/hellocharts/model/Line;->pointRadius:I

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Line;->hasPoints:Z

    .line 31
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Line;->hasLines:Z

    .line 32
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLabels:Z

    .line 33
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected:Z

    .line 34
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isCubic:Z

    .line 35
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isSquare:Z

    .line 36
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isFilled:Z

    .line 37
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 39
    new-instance v0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    .line 51
    iget v0, p1, Llecho/lib/hellocharts/model/Line;->color:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->color:I

    .line 52
    iget v0, p1, Llecho/lib/hellocharts/model/Line;->pointColor:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->pointColor:I

    .line 53
    iget v0, p1, Llecho/lib/hellocharts/model/Line;->darkenColor:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->darkenColor:I

    .line 54
    iget v0, p1, Llecho/lib/hellocharts/model/Line;->areaTransparency:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->areaTransparency:I

    .line 55
    iget v0, p1, Llecho/lib/hellocharts/model/Line;->strokeWidth:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->strokeWidth:I

    .line 56
    iget v0, p1, Llecho/lib/hellocharts/model/Line;->pointRadius:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->pointRadius:I

    .line 57
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/Line;->hasPoints:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasPoints:Z

    .line 58
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/Line;->hasLines:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLines:Z

    .line 59
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/Line;->hasLabels:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLabels:Z

    .line 60
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected:Z

    .line 61
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/Line;->isSquare:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isSquare:Z

    .line 62
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/Line;->isCubic:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isCubic:Z

    .line 63
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/Line;->isFilled:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isFilled:Z

    .line 64
    iget-object v0, p1, Llecho/lib/hellocharts/model/Line;->shape:Llecho/lib/hellocharts/model/ValueShape;

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 65
    iget-object v0, p1, Llecho/lib/hellocharts/model/Line;->pathEffect:Landroid/graphics/PathEffect;

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->pathEffect:Landroid/graphics/PathEffect;

    .line 66
    iget-object v0, p1, Llecho/lib/hellocharts/model/Line;->formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    .line 68
    iget-object p1, p1, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/PointValue;

    .line 69
    iget-object v1, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    new-instance v2, Llecho/lib/hellocharts/model/PointValue;

    invoke-direct {v2, v0}, Llecho/lib/hellocharts/model/PointValue;-><init>(Llecho/lib/hellocharts/model/PointValue;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 80
    iget-object v0, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/PointValue;

    .line 81
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/PointValue;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAreaTransparency()I
    .locals 1

    .line 135
    iget v0, p0, Llecho/lib/hellocharts/model/Line;->areaTransparency:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 98
    iget v0, p0, Llecho/lib/hellocharts/model/Line;->color:I

    return v0
.end method

.method public getDarkenColor()I
    .locals 1

    .line 128
    iget v0, p0, Llecho/lib/hellocharts/model/Line;->darkenColor:I

    return v0
.end method

.method public getFormatter()Llecho/lib/hellocharts/formatter/LineChartValueFormatter;
    .locals 1

    .line 286
    iget-object v0, p0, Llecho/lib/hellocharts/model/Line;->formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    return-object v0
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .locals 1

    .line 272
    iget-object v0, p0, Llecho/lib/hellocharts/model/Line;->pathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public getPointColor()I
    .locals 1

    .line 110
    iget v0, p0, Llecho/lib/hellocharts/model/Line;->pointColor:I

    if-nez v0, :cond_0

    .line 111
    iget v0, p0, Llecho/lib/hellocharts/model/Line;->color:I

    return v0

    .line 113
    :cond_0
    iget v0, p0, Llecho/lib/hellocharts/model/Line;->pointColor:I

    return v0
.end method

.method public getPointRadius()I
    .locals 1

    .line 208
    iget v0, p0, Llecho/lib/hellocharts/model/Line;->pointRadius:I

    return v0
.end method

.method public getShape()Llecho/lib/hellocharts/model/ValueShape;
    .locals 1

    .line 257
    iget-object v0, p0, Llecho/lib/hellocharts/model/Line;->shape:Llecho/lib/hellocharts/model/ValueShape;

    return-object v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 150
    iget v0, p0, Llecho/lib/hellocharts/model/Line;->strokeWidth:I

    return v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/PointValue;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    return-object v0
.end method

.method public hasLabels()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLabels:Z

    return v0
.end method

.method public hasLabelsOnlyForSelected()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected:Z

    return v0
.end method

.method public hasLines()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLines:Z

    return v0
.end method

.method public hasPoints()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasPoints:Z

    return v0
.end method

.method public isCubic()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isCubic:Z

    return v0
.end method

.method public isFilled()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isFilled:Z

    return v0
.end method

.method public isSquare()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isSquare:Z

    return v0
.end method

.method public setAreaTransparency(I)Llecho/lib/hellocharts/model/Line;
    .locals 0

    .line 145
    iput p1, p0, Llecho/lib/hellocharts/model/Line;->areaTransparency:I

    return-object p0
.end method

.method public setColor(I)Llecho/lib/hellocharts/model/Line;
    .locals 1

    .line 102
    iput p1, p0, Llecho/lib/hellocharts/model/Line;->color:I

    .line 103
    iget v0, p0, Llecho/lib/hellocharts/model/Line;->pointColor:I

    if-nez v0, :cond_0

    .line 104
    invoke-static {p1}, Llecho/lib/hellocharts/util/ChartUtils;->darkenColor(I)I

    move-result p1

    iput p1, p0, Llecho/lib/hellocharts/model/Line;->darkenColor:I

    :cond_0
    return-object p0
.end method

.method public setCubic(Z)Llecho/lib/hellocharts/model/Line;
    .locals 0

    .line 227
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->isCubic:Z

    .line 228
    iget-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->isSquare:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 229
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/Line;->setSquare(Z)Llecho/lib/hellocharts/model/Line;

    :cond_0
    return-object p0
.end method

.method public setFilled(Z)Llecho/lib/hellocharts/model/Line;
    .locals 0

    .line 249
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->isFilled:Z

    return-object p0
.end method

.method public setFormatter(Llecho/lib/hellocharts/formatter/LineChartValueFormatter;)Llecho/lib/hellocharts/model/Line;
    .locals 0

    if-eqz p1, :cond_0

    .line 291
    iput-object p1, p0, Llecho/lib/hellocharts/model/Line;->formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    :cond_0
    return-object p0
.end method

.method public setHasLabels(Z)Llecho/lib/hellocharts/model/Line;
    .locals 0

    .line 181
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->hasLabels:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 183
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected:Z

    :cond_0
    return-object p0
.end method

.method public setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Line;
    .locals 0

    .line 200
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 202
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->hasLabels:Z

    :cond_0
    return-object p0
.end method

.method public setHasLines(Z)Llecho/lib/hellocharts/model/Line;
    .locals 0

    .line 172
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->hasLines:Z

    return-object p0
.end method

.method public setHasPoints(Z)Llecho/lib/hellocharts/model/Line;
    .locals 0

    .line 163
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->hasPoints:Z

    return-object p0
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)V
    .locals 0

    .line 282
    iput-object p1, p0, Llecho/lib/hellocharts/model/Line;->pathEffect:Landroid/graphics/PathEffect;

    return-void
.end method

.method public setPointColor(I)Llecho/lib/hellocharts/model/Line;
    .locals 0

    .line 118
    iput p1, p0, Llecho/lib/hellocharts/model/Line;->pointColor:I

    if-nez p1, :cond_0

    .line 120
    iget p1, p0, Llecho/lib/hellocharts/model/Line;->color:I

    invoke-static {p1}, Llecho/lib/hellocharts/util/ChartUtils;->darkenColor(I)I

    move-result p1

    iput p1, p0, Llecho/lib/hellocharts/model/Line;->darkenColor:I

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {p1}, Llecho/lib/hellocharts/util/ChartUtils;->darkenColor(I)I

    move-result p1

    iput p1, p0, Llecho/lib/hellocharts/model/Line;->darkenColor:I

    :goto_0
    return-object p0
.end method

.method public setPointRadius(I)Llecho/lib/hellocharts/model/Line;
    .locals 0

    .line 218
    iput p1, p0, Llecho/lib/hellocharts/model/Line;->pointRadius:I

    return-object p0
.end method

.method public setShape(Llecho/lib/hellocharts/model/ValueShape;)Llecho/lib/hellocharts/model/Line;
    .locals 0

    .line 267
    iput-object p1, p0, Llecho/lib/hellocharts/model/Line;->shape:Llecho/lib/hellocharts/model/ValueShape;

    return-object p0
.end method

.method public setSquare(Z)Llecho/lib/hellocharts/model/Line;
    .locals 0

    .line 238
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->isSquare:Z

    .line 239
    iget-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->isCubic:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 240
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/Line;->setCubic(Z)Llecho/lib/hellocharts/model/Line;

    :cond_0
    return-object p0
.end method

.method public setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;
    .locals 0

    .line 154
    iput p1, p0, Llecho/lib/hellocharts/model/Line;->strokeWidth:I

    return-object p0
.end method

.method public setValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/PointValue;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    goto :goto_0

    .line 93
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public update(F)V
    .locals 2

    .line 74
    iget-object v0, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/PointValue;

    .line 75
    invoke-virtual {v1, p1}, Llecho/lib/hellocharts/model/PointValue;->update(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
