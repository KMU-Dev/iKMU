.class public Llecho/lib/hellocharts/model/PieChartData;
.super Llecho/lib/hellocharts/model/AbstractChartData;
.source "PieChartData.java"


# static fields
.field public static final DEFAULT_CENTER_CIRCLE_SCALE:F = 0.6f

.field public static final DEFAULT_CENTER_TEXT1_SIZE_SP:I = 0x2a

.field public static final DEFAULT_CENTER_TEXT2_SIZE_SP:I = 0x10

.field private static final DEFAULT_SLICE_SPACING_DP:I = 0x2


# instance fields
.field private centerCircleColor:I

.field private centerCircleScale:F

.field private centerText1:Ljava/lang/String;

.field private centerText1Color:I

.field private centerText1FontSize:I

.field private centerText1Typeface:Landroid/graphics/Typeface;

.field private centerText2:Ljava/lang/String;

.field private centerText2Color:I

.field private centerText2FontSize:I

.field private centerText2Typeface:Landroid/graphics/Typeface;

.field private formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

.field private hasCenterCircle:Z

.field private hasLabels:Z

.field private hasLabelsOnlyForSelected:Z

.field private hasLabelsOutside:Z

.field private slicesSpacing:I

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/SliceValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>()V

    const/16 v0, 0x2a

    .line 22
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1FontSize:I

    const/16 v0, 0x10

    .line 23
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2FontSize:I

    const v0, 0x3f19999a    # 0.6f

    .line 24
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleScale:F

    const/4 v0, 0x2

    .line 25
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->slicesSpacing:I

    .line 26
    new-instance v0, Llecho/lib/hellocharts/formatter/SimplePieChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimplePieChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabels:Z

    .line 28
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected:Z

    .line 29
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOutside:Z

    .line 30
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasCenterCircle:Z

    .line 31
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleColor:I

    const/high16 v0, -0x1000000

    .line 32
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Color:I

    .line 35
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Color:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/PieChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 43
    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/PieChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/SliceValue;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>()V

    const/16 v0, 0x2a

    .line 22
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1FontSize:I

    const/16 v0, 0x10

    .line 23
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2FontSize:I

    const v0, 0x3f19999a    # 0.6f

    .line 24
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleScale:F

    const/4 v0, 0x2

    .line 25
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->slicesSpacing:I

    .line 26
    new-instance v0, Llecho/lib/hellocharts/formatter/SimplePieChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimplePieChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabels:Z

    .line 28
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected:Z

    .line 29
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOutside:Z

    .line 30
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasCenterCircle:Z

    .line 31
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleColor:I

    const/high16 v0, -0x1000000

    .line 32
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Color:I

    .line 35
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Color:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    .line 47
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/PieChartData;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/PieChartData;

    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/PieChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 50
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/PieChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/PieChartData;)V
    .locals 3

    .line 54
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>(Llecho/lib/hellocharts/model/AbstractChartData;)V

    const/16 v0, 0x2a

    .line 22
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1FontSize:I

    const/16 v0, 0x10

    .line 23
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2FontSize:I

    const v0, 0x3f19999a    # 0.6f

    .line 24
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleScale:F

    const/4 v0, 0x2

    .line 25
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->slicesSpacing:I

    .line 26
    new-instance v0, Llecho/lib/hellocharts/formatter/SimplePieChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimplePieChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabels:Z

    .line 28
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected:Z

    .line 29
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOutside:Z

    .line 30
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasCenterCircle:Z

    .line 31
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleColor:I

    const/high16 v0, -0x1000000

    .line 32
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Color:I

    .line 35
    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Color:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    .line 55
    iget-object v0, p1, Llecho/lib/hellocharts/model/PieChartData;->formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    iput-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    .line 56
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/PieChartData;->hasLabels:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabels:Z

    .line 57
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected:Z

    .line 58
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOutside:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOutside:Z

    .line 60
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/PieChartData;->hasCenterCircle:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasCenterCircle:Z

    .line 61
    iget v0, p1, Llecho/lib/hellocharts/model/PieChartData;->centerCircleColor:I

    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleColor:I

    .line 62
    iget v0, p1, Llecho/lib/hellocharts/model/PieChartData;->centerCircleScale:F

    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleScale:F

    .line 64
    iget v0, p1, Llecho/lib/hellocharts/model/PieChartData;->centerText1Color:I

    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Color:I

    .line 65
    iget v0, p1, Llecho/lib/hellocharts/model/PieChartData;->centerText1FontSize:I

    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1FontSize:I

    .line 66
    iget-object v0, p1, Llecho/lib/hellocharts/model/PieChartData;->centerText1Typeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Typeface:Landroid/graphics/Typeface;

    .line 67
    iget-object v0, p1, Llecho/lib/hellocharts/model/PieChartData;->centerText1:Ljava/lang/String;

    iput-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1:Ljava/lang/String;

    .line 69
    iget v0, p1, Llecho/lib/hellocharts/model/PieChartData;->centerText2Color:I

    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Color:I

    .line 70
    iget v0, p1, Llecho/lib/hellocharts/model/PieChartData;->centerText2FontSize:I

    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2FontSize:I

    .line 71
    iget-object v0, p1, Llecho/lib/hellocharts/model/PieChartData;->centerText2Typeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Typeface:Landroid/graphics/Typeface;

    .line 72
    iget-object v0, p1, Llecho/lib/hellocharts/model/PieChartData;->centerText2:Ljava/lang/String;

    iput-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2:Ljava/lang/String;

    .line 74
    iget-object p1, p1, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/SliceValue;

    .line 75
    iget-object v1, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    new-instance v2, Llecho/lib/hellocharts/model/SliceValue;

    invoke-direct {v2, v0}, Llecho/lib/hellocharts/model/SliceValue;-><init>(Llecho/lib/hellocharts/model/SliceValue;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static generateDummyData()Llecho/lib/hellocharts/model/PieChartData;
    .locals 4

    .line 81
    new-instance v0, Llecho/lib/hellocharts/model/PieChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/PieChartData;-><init>()V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    new-instance v2, Llecho/lib/hellocharts/model/SliceValue;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-direct {v2, v3}, Llecho/lib/hellocharts/model/SliceValue;-><init>(F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v2, Llecho/lib/hellocharts/model/SliceValue;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v2, v3}, Llecho/lib/hellocharts/model/SliceValue;-><init>(F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v2, Llecho/lib/hellocharts/model/SliceValue;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-direct {v2, v3}, Llecho/lib/hellocharts/model/SliceValue;-><init>(F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v2, Llecho/lib/hellocharts/model/SliceValue;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-direct {v2, v3}, Llecho/lib/hellocharts/model/SliceValue;-><init>(F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/PieChartData;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/PieChartData;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 100
    iget-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SliceValue;

    .line 101
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SliceValue;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCenterCircleColor()I
    .locals 1

    .line 189
    iget v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleColor:I

    return v0
.end method

.method public getCenterCircleScale()F
    .locals 1

    .line 198
    iget v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleScale:F

    return v0
.end method

.method public getCenterText1()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1:Ljava/lang/String;

    return-object v0
.end method

.method public getCenterText1Color()I
    .locals 1

    .line 207
    iget v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Color:I

    return v0
.end method

.method public getCenterText1FontSize()I
    .locals 1

    .line 216
    iget v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1FontSize:I

    return v0
.end method

.method public getCenterText1Typeface()Landroid/graphics/Typeface;
    .locals 1

    .line 225
    iget-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getCenterText2()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2:Ljava/lang/String;

    return-object v0
.end method

.method public getCenterText2Color()I
    .locals 1

    .line 255
    iget v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Color:I

    return v0
.end method

.method public getCenterText2FontSize()I
    .locals 1

    .line 264
    iget v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2FontSize:I

    return v0
.end method

.method public getCenterText2Typeface()Landroid/graphics/Typeface;
    .locals 1

    .line 273
    iget-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getFormatter()Llecho/lib/hellocharts/formatter/PieChartValueFormatter;
    .locals 1

    .line 291
    iget-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    return-object v0
.end method

.method public getSlicesSpacing()I
    .locals 1

    .line 282
    iget v0, p0, Llecho/lib/hellocharts/model/PieChartData;->slicesSpacing:I

    return v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/SliceValue;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    return-object v0
.end method

.method public hasCenterCircle()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasCenterCircle:Z

    return v0
.end method

.method public hasLabels()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabels:Z

    return v0
.end method

.method public hasLabelsOnlyForSelected()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected:Z

    return v0
.end method

.method public hasLabelsOutside()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOutside:Z

    return v0
.end method

.method public setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V
    .locals 0

    const/4 p1, 0x0

    .line 110
    invoke-super {p0, p1}, Llecho/lib/hellocharts/model/AbstractChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    return-void
.end method

.method public setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V
    .locals 0

    const/4 p1, 0x0

    .line 118
    invoke-super {p0, p1}, Llecho/lib/hellocharts/model/AbstractChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    return-void
.end method

.method public setCenterCircleColor(I)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0

    .line 193
    iput p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleColor:I

    return-object p0
.end method

.method public setCenterCircleScale(F)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0

    .line 202
    iput p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleScale:F

    return-object p0
.end method

.method public setCenterText1(Ljava/lang/String;)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0

    .line 238
    iput-object p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1:Ljava/lang/String;

    return-object p0
.end method

.method public setCenterText1Color(I)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0

    .line 211
    iput p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Color:I

    return-object p0
.end method

.method public setCenterText1FontSize(I)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0

    .line 220
    iput p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1FontSize:I

    return-object p0
.end method

.method public setCenterText1Typeface(Landroid/graphics/Typeface;)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0

    .line 229
    iput-object p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Typeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setCenterText2(Ljava/lang/String;)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0

    .line 250
    iput-object p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2:Ljava/lang/String;

    return-object p0
.end method

.method public setCenterText2Color(I)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0

    .line 259
    iput p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Color:I

    return-object p0
.end method

.method public setCenterText2FontSize(I)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0

    .line 268
    iput p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2FontSize:I

    return-object p0
.end method

.method public setCenterText2Typeface(Landroid/graphics/Typeface;)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0

    .line 277
    iput-object p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Typeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setFormatter(Llecho/lib/hellocharts/formatter/PieChartValueFormatter;)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0

    if-eqz p1, :cond_0

    .line 296
    iput-object p1, p0, Llecho/lib/hellocharts/model/PieChartData;->formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    :cond_0
    return-object p0
.end method

.method public setHasCenterCircle(Z)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0

    .line 184
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasCenterCircle:Z

    return-object p0
.end method

.method public setHasLabels(Z)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0

    .line 139
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabels:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected:Z

    :cond_0
    return-object p0
.end method

.method public setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0

    .line 158
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 160
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabels:Z

    :cond_0
    return-object p0
.end method

.method public setHasLabelsOutside(Z)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0

    .line 175
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOutside:Z

    return-object p0
.end method

.method public setSlicesSpacing(I)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0

    .line 286
    iput p1, p0, Llecho/lib/hellocharts/model/PieChartData;->slicesSpacing:I

    return-object p0
.end method

.method public setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/SliceValue;",
            ">;)",
            "Llecho/lib/hellocharts/model/PieChartData;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    goto :goto_0

    .line 129
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public update(F)V
    .locals 2

    .line 93
    iget-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SliceValue;

    .line 94
    invoke-virtual {v1, p1}, Llecho/lib/hellocharts/model/SliceValue;->update(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
