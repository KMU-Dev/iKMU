.class public Llecho/lib/hellocharts/model/Axis;
.super Ljava/lang/Object;
.source "Axis.java"


# static fields
.field public static final DEFAULT_MAX_AXIS_LABEL_CHARS:I = 0x3

.field public static final DEFAULT_TEXT_SIZE_SP:I = 0xc


# instance fields
.field private formatter:Llecho/lib/hellocharts/formatter/AxisValueFormatter;

.field private hasLines:Z

.field private hasSeparationLine:Z

.field private hasTiltedLabels:Z

.field private isAutoGenerated:Z

.field private isInside:Z

.field private lineColor:I

.field private maxLabelChars:I

.field private name:Ljava/lang/String;

.field private textColor:I

.field private textSize:I

.field private typeface:Landroid/graphics/Typeface;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/AxisValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 28
    iput v0, p0, Llecho/lib/hellocharts/model/Axis;->textSize:I

    const/4 v0, 0x3

    .line 32
    iput v0, p0, Llecho/lib/hellocharts/model/Axis;->maxLabelChars:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Axis;->values:Ljava/util/List;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated:Z

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Axis;->hasLines:Z

    .line 52
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Axis;->isInside:Z

    const v2, -0x333334

    .line 56
    iput v2, p0, Llecho/lib/hellocharts/model/Axis;->textColor:I

    .line 60
    sget v2, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v2, p0, Llecho/lib/hellocharts/model/Axis;->lineColor:I

    .line 69
    new-instance v2, Llecho/lib/hellocharts/formatter/SimpleAxisValueFormatter;

    invoke-direct {v2}, Llecho/lib/hellocharts/formatter/SimpleAxisValueFormatter;-><init>()V

    iput-object v2, p0, Llecho/lib/hellocharts/model/Axis;->formatter:Llecho/lib/hellocharts/formatter/AxisValueFormatter;

    .line 74
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Axis;->hasSeparationLine:Z

    .line 76
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Axis;->hasTiltedLabels:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/AxisValue;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 28
    iput v0, p0, Llecho/lib/hellocharts/model/Axis;->textSize:I

    const/4 v0, 0x3

    .line 32
    iput v0, p0, Llecho/lib/hellocharts/model/Axis;->maxLabelChars:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Axis;->values:Ljava/util/List;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated:Z

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Axis;->hasLines:Z

    .line 52
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Axis;->isInside:Z

    const v2, -0x333334

    .line 56
    iput v2, p0, Llecho/lib/hellocharts/model/Axis;->textColor:I

    .line 60
    sget v2, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v2, p0, Llecho/lib/hellocharts/model/Axis;->lineColor:I

    .line 69
    new-instance v2, Llecho/lib/hellocharts/formatter/SimpleAxisValueFormatter;

    invoke-direct {v2}, Llecho/lib/hellocharts/formatter/SimpleAxisValueFormatter;-><init>()V

    iput-object v2, p0, Llecho/lib/hellocharts/model/Axis;->formatter:Llecho/lib/hellocharts/formatter/AxisValueFormatter;

    .line 74
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Axis;->hasSeparationLine:Z

    .line 76
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Axis;->hasTiltedLabels:Z

    .line 88
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/Axis;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;

    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/Axis;)V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 28
    iput v0, p0, Llecho/lib/hellocharts/model/Axis;->textSize:I

    const/4 v0, 0x3

    .line 32
    iput v0, p0, Llecho/lib/hellocharts/model/Axis;->maxLabelChars:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Axis;->values:Ljava/util/List;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated:Z

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Axis;->hasLines:Z

    .line 52
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Axis;->isInside:Z

    const v2, -0x333334

    .line 56
    iput v2, p0, Llecho/lib/hellocharts/model/Axis;->textColor:I

    .line 60
    sget v2, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v2, p0, Llecho/lib/hellocharts/model/Axis;->lineColor:I

    .line 69
    new-instance v2, Llecho/lib/hellocharts/formatter/SimpleAxisValueFormatter;

    invoke-direct {v2}, Llecho/lib/hellocharts/formatter/SimpleAxisValueFormatter;-><init>()V

    iput-object v2, p0, Llecho/lib/hellocharts/model/Axis;->formatter:Llecho/lib/hellocharts/formatter/AxisValueFormatter;

    .line 74
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Axis;->hasSeparationLine:Z

    .line 76
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Axis;->hasTiltedLabels:Z

    .line 92
    iget-object v0, p1, Llecho/lib/hellocharts/model/Axis;->name:Ljava/lang/String;

    iput-object v0, p0, Llecho/lib/hellocharts/model/Axis;->name:Ljava/lang/String;

    .line 93
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated:Z

    .line 94
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/Axis;->hasLines:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Axis;->hasLines:Z

    .line 95
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/Axis;->isInside:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Axis;->isInside:Z

    .line 96
    iget v0, p1, Llecho/lib/hellocharts/model/Axis;->textColor:I

    iput v0, p0, Llecho/lib/hellocharts/model/Axis;->textColor:I

    .line 97
    iget v0, p1, Llecho/lib/hellocharts/model/Axis;->lineColor:I

    iput v0, p0, Llecho/lib/hellocharts/model/Axis;->lineColor:I

    .line 98
    iget v0, p1, Llecho/lib/hellocharts/model/Axis;->textSize:I

    iput v0, p0, Llecho/lib/hellocharts/model/Axis;->textSize:I

    .line 99
    iget v0, p1, Llecho/lib/hellocharts/model/Axis;->maxLabelChars:I

    iput v0, p0, Llecho/lib/hellocharts/model/Axis;->maxLabelChars:I

    .line 100
    iget-object v0, p1, Llecho/lib/hellocharts/model/Axis;->typeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Llecho/lib/hellocharts/model/Axis;->typeface:Landroid/graphics/Typeface;

    .line 101
    iget-object v0, p1, Llecho/lib/hellocharts/model/Axis;->formatter:Llecho/lib/hellocharts/formatter/AxisValueFormatter;

    iput-object v0, p0, Llecho/lib/hellocharts/model/Axis;->formatter:Llecho/lib/hellocharts/formatter/AxisValueFormatter;

    .line 102
    iget-boolean v0, p1, Llecho/lib/hellocharts/model/Axis;->hasSeparationLine:Z

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Axis;->hasSeparationLine:Z

    .line 104
    iget-object p1, p1, Llecho/lib/hellocharts/model/Axis;->values:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/AxisValue;

    .line 105
    iget-object v1, p0, Llecho/lib/hellocharts/model/Axis;->values:Ljava/util/List;

    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    invoke-direct {v2, v0}, Llecho/lib/hellocharts/model/AxisValue;-><init>(Llecho/lib/hellocharts/model/AxisValue;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static generateAxisFromCollection(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Llecho/lib/hellocharts/model/Axis;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 131
    new-instance v2, Llecho/lib/hellocharts/model/AxisValue;

    invoke-direct {v2, v1}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    .line 132
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_0
    new-instance p0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {p0, v0}, Llecho/lib/hellocharts/model/Axis;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static generateAxisFromCollection(Ljava/util/List;Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Llecho/lib/hellocharts/model/Axis;"
        }
    .end annotation

    .line 144
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 150
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 151
    new-instance v3, Llecho/lib/hellocharts/model/AxisValue;

    invoke-direct {v3, v2}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    move-result-object v2

    .line 152
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    new-instance p0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {p0, v0}, Llecho/lib/hellocharts/model/Axis;-><init>(Ljava/util/List;)V

    return-object p0

    .line 145
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Values and labels lists must have the same size!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateAxisFromRange(FFF)Llecho/lib/hellocharts/model/Axis;
    .locals 2

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    cmpg-float v1, p0, p1

    if-gtz v1, :cond_0

    .line 116
    new-instance v1, Llecho/lib/hellocharts/model/AxisValue;

    invoke-direct {v1, p0}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float/2addr p0, p2

    goto :goto_0

    .line 120
    :cond_0
    new-instance p0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {p0, v0}, Llecho/lib/hellocharts/model/Axis;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public getFormatter()Llecho/lib/hellocharts/formatter/AxisValueFormatter;
    .locals 1

    .line 272
    iget-object v0, p0, Llecho/lib/hellocharts/model/Axis;->formatter:Llecho/lib/hellocharts/formatter/AxisValueFormatter;

    return-object v0
.end method

.method public getLineColor()I
    .locals 1

    .line 228
    iget v0, p0, Llecho/lib/hellocharts/model/Axis;->lineColor:I

    return v0
.end method

.method public getMaxLabelChars()I
    .locals 1

    .line 246
    iget v0, p0, Llecho/lib/hellocharts/model/Axis;->maxLabelChars:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Llecho/lib/hellocharts/model/Axis;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 203
    iget v0, p0, Llecho/lib/hellocharts/model/Axis;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 237
    iget v0, p0, Llecho/lib/hellocharts/model/Axis;->textSize:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 263
    iget-object v0, p0, Llecho/lib/hellocharts/model/Axis;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/AxisValue;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Llecho/lib/hellocharts/model/Axis;->values:Ljava/util/List;

    return-object v0
.end method

.method public hasLines()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Axis;->hasLines:Z

    return v0
.end method

.method public hasSeparationLine()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Axis;->hasSeparationLine:Z

    return v0
.end method

.method public hasTiltedLabels()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Axis;->hasTiltedLabels:Z

    return v0
.end method

.method public isAutoGenerated()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated:Z

    return v0
.end method

.method public isInside()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Axis;->isInside:Z

    return v0
.end method

.method public setAutoGenerated(Z)Llecho/lib/hellocharts/model/Axis;
    .locals 0

    .line 189
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated:Z

    return-object p0
.end method

.method public setFormatter(Llecho/lib/hellocharts/formatter/AxisValueFormatter;)Llecho/lib/hellocharts/model/Axis;
    .locals 0

    if-nez p1, :cond_0

    .line 277
    new-instance p1, Llecho/lib/hellocharts/formatter/SimpleAxisValueFormatter;

    invoke-direct {p1}, Llecho/lib/hellocharts/formatter/SimpleAxisValueFormatter;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/model/Axis;->formatter:Llecho/lib/hellocharts/formatter/AxisValueFormatter;

    goto :goto_0

    .line 279
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/model/Axis;->formatter:Llecho/lib/hellocharts/formatter/AxisValueFormatter;

    :goto_0
    return-object p0
.end method

.method public setHasLines(Z)Llecho/lib/hellocharts/model/Axis;
    .locals 0

    .line 198
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Axis;->hasLines:Z

    return-object p0
.end method

.method public setHasSeparationLine(Z)Llecho/lib/hellocharts/model/Axis;
    .locals 0

    .line 288
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Axis;->hasSeparationLine:Z

    return-object p0
.end method

.method public setHasTiltedLabels(Z)Llecho/lib/hellocharts/model/Axis;
    .locals 0

    .line 301
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Axis;->hasTiltedLabels:Z

    return-object p0
.end method

.method public setInside(Z)Llecho/lib/hellocharts/model/Axis;
    .locals 0

    .line 223
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Axis;->isInside:Z

    return-object p0
.end method

.method public setLineColor(I)Llecho/lib/hellocharts/model/Axis;
    .locals 0

    .line 232
    iput p1, p0, Llecho/lib/hellocharts/model/Axis;->lineColor:I

    return-object p0
.end method

.method public setMaxLabelChars(I)Llecho/lib/hellocharts/model/Axis;
    .locals 1

    const/16 v0, 0x20

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0x20

    .line 258
    :cond_1
    :goto_0
    iput p1, p0, Llecho/lib/hellocharts/model/Axis;->maxLabelChars:I

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Llecho/lib/hellocharts/model/Axis;
    .locals 0

    .line 180
    iput-object p1, p0, Llecho/lib/hellocharts/model/Axis;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setTextColor(I)Llecho/lib/hellocharts/model/Axis;
    .locals 0

    .line 207
    iput p1, p0, Llecho/lib/hellocharts/model/Axis;->textColor:I

    return-object p0
.end method

.method public setTextSize(I)Llecho/lib/hellocharts/model/Axis;
    .locals 0

    .line 241
    iput p1, p0, Llecho/lib/hellocharts/model/Axis;->textSize:I

    return-object p0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Llecho/lib/hellocharts/model/Axis;
    .locals 0

    .line 267
    iput-object p1, p0, Llecho/lib/hellocharts/model/Axis;->typeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/Axis;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Llecho/lib/hellocharts/model/AxisValue;",
            ">;)",
            "Llecho/lib/hellocharts/model/Axis;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 166
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/model/Axis;->values:Ljava/util/List;

    goto :goto_0

    .line 168
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/model/Axis;->values:Ljava/util/List;

    :goto_0
    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated:Z

    return-object p0
.end method
