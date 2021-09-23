.class public Llecho/lib/hellocharts/model/BubbleChartData;
.super Llecho/lib/hellocharts/model/AbstractChartData;
.source "BubbleChartData.java"


# static fields
.field public static final DEFAULT_BUBBLE_SCALE:F = 1.0f

.field public static final DEFAULT_MIN_BUBBLE_RADIUS_DP:I = 0x6


# instance fields
.field private bubbleScale:F

.field private formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

.field private hasLabels:Z

.field private hasLabelsOnlyForSelected:Z

.field private minBubbleRadius:I

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/BubbleValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>()V

    .line 16
    new-instance v0, Llecho/lib/hellocharts/formatter/SimpleBubbleChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimpleBubbleChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels:Z

    .line 18
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected:Z

    const/4 v0, 0x6

    .line 19
    iput v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->minBubbleRadius:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    iput v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->bubbleScale:F

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/BubbleValue;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>()V

    .line 16
    new-instance v0, Llecho/lib/hellocharts/formatter/SimpleBubbleChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimpleBubbleChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels:Z

    .line 18
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected:Z

    const/4 v0, 0x6

    .line 19
    iput v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->minBubbleRadius:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    iput v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->bubbleScale:F

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    .line 28
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/BubbleChartData;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/BubbleChartData;

    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/BubbleChartData;)V
    .locals 3

    .line 35
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>(Llecho/lib/hellocharts/model/AbstractChartData;)V

    .line 16
    new-instance v0, Llecho/lib/hellocharts/formatter/SimpleBubbleChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimpleBubbleChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels:Z

    .line 18
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected:Z

    const/4 v0, 0x6

    .line 19
    iput v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->minBubbleRadius:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    iput v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->bubbleScale:F

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    .line 36
    iget-object v0, p1, Llecho/lib/hellocharts/model/BubbleChartData;->formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    .line 37
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels:Z

    .line 38
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected:Z

    .line 39
    iget v0, p1, Llecho/lib/hellocharts/model/BubbleChartData;->minBubbleRadius:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->minBubbleRadius:I

    .line 40
    iget v0, p1, Llecho/lib/hellocharts/model/BubbleChartData;->bubbleScale:F

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->bubbleScale:F

    .line 42
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/BubbleChartData;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/BubbleValue;

    .line 43
    iget-object v1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    new-instance v2, Llecho/lib/hellocharts/model/BubbleValue;

    invoke-direct {v2, v0}, Llecho/lib/hellocharts/model/BubbleValue;-><init>(Llecho/lib/hellocharts/model/BubbleValue;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static generateDummyData()Llecho/lib/hellocharts/model/BubbleChartData;
    .locals 7

    .line 49
    new-instance v0, Llecho/lib/hellocharts/model/BubbleChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/BubbleChartData;-><init>()V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    new-instance v2, Llecho/lib/hellocharts/model/BubbleValue;

    const/4 v3, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    const v5, 0x466a6000    # 15000.0f

    invoke-direct {v2, v3, v4, v5}, Llecho/lib/hellocharts/model/BubbleValue;-><init>(FFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v2, Llecho/lib/hellocharts/model/BubbleValue;

    const/high16 v3, 0x41b00000    # 22.0f

    const/high16 v4, 0x40400000    # 3.0f

    const v5, 0x469c4000    # 20000.0f

    invoke-direct {v2, v4, v3, v5}, Llecho/lib/hellocharts/model/BubbleValue;-><init>(FFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v2, Llecho/lib/hellocharts/model/BubbleValue;

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x41c80000    # 25.0f

    const v6, 0x459c4000    # 5000.0f

    invoke-direct {v2, v4, v5, v6}, Llecho/lib/hellocharts/model/BubbleValue;-><init>(FFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v2, Llecho/lib/hellocharts/model/BubbleValue;

    const/high16 v4, 0x40e00000    # 7.0f

    const/high16 v5, 0x41f00000    # 30.0f

    const v6, 0x46ea6000    # 30000.0f

    invoke-direct {v2, v4, v5, v6}, Llecho/lib/hellocharts/model/BubbleValue;-><init>(FFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v2, Llecho/lib/hellocharts/model/BubbleValue;

    const/high16 v4, 0x41300000    # 11.0f

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {v2, v4, v3, v5}, Llecho/lib/hellocharts/model/BubbleValue;-><init>(FFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/BubbleChartData;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/BubbleChartData;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 69
    iget-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/BubbleValue;

    .line 70
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/BubbleValue;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBubbleScale()F
    .locals 1

    .line 141
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->bubbleScale:F

    return v0
.end method

.method public getFormatter()Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;
    .locals 1

    .line 153
    iget-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    return-object v0
.end method

.method public getMinBubbleRadius()I
    .locals 1

    .line 124
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->minBubbleRadius:I

    return v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/BubbleValue;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    return-object v0
.end method

.method public hasLabels()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels:Z

    return v0
.end method

.method public hasLabelsOnlyForSelected()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected:Z

    return v0
.end method

.method public setBubbleScale(F)V
    .locals 0

    .line 149
    iput p1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->bubbleScale:F

    return-void
.end method

.method public setFormatter(Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;)Llecho/lib/hellocharts/model/BubbleChartData;
    .locals 0

    if-eqz p1, :cond_0

    .line 158
    iput-object p1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->formatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    :cond_0
    return-object p0
.end method

.method public setHasLabels(Z)Llecho/lib/hellocharts/model/BubbleChartData;
    .locals 0

    .line 92
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected:Z

    :cond_0
    return-object p0
.end method

.method public setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/BubbleChartData;
    .locals 0

    .line 111
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels:Z

    :cond_0
    return-object p0
.end method

.method public setMinBubbleRadius(I)V
    .locals 0

    .line 132
    iput p1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->minBubbleRadius:I

    return-void
.end method

.method public setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/BubbleChartData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/BubbleValue;",
            ">;)",
            "Llecho/lib/hellocharts/model/BubbleChartData;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    goto :goto_0

    .line 82
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public update(F)V
    .locals 2

    .line 62
    iget-object v0, p0, Llecho/lib/hellocharts/model/BubbleChartData;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/BubbleValue;

    .line 63
    invoke-virtual {v1, p1}, Llecho/lib/hellocharts/model/BubbleValue;->update(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
