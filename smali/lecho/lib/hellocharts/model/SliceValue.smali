.class public Llecho/lib/hellocharts/model/SliceValue;
.super Ljava/lang/Object;
.source "SliceValue.java"


# static fields
.field private static final DEFAULT_SLICE_SPACING_DP:I = 0x2


# instance fields
.field private color:I

.field private darkenColor:I

.field private diff:F

.field private label:[C

.field private originValue:F

.field private sliceSpacing:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 13
    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    .line 31
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    .line 35
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/SliceValue;->setValue(F)Llecho/lib/hellocharts/model/SliceValue;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 13
    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    .line 31
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    .line 35
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    .line 46
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/SliceValue;->setValue(F)Llecho/lib/hellocharts/model/SliceValue;

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 13
    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    .line 31
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    .line 35
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    .line 50
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/SliceValue;->setValue(F)Llecho/lib/hellocharts/model/SliceValue;

    .line 51
    invoke-virtual {p0, p2}, Llecho/lib/hellocharts/model/SliceValue;->setColor(I)Llecho/lib/hellocharts/model/SliceValue;

    return-void
.end method

.method public constructor <init>(FII)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 13
    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    .line 31
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    .line 35
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    .line 55
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/SliceValue;->setValue(F)Llecho/lib/hellocharts/model/SliceValue;

    .line 56
    invoke-virtual {p0, p2}, Llecho/lib/hellocharts/model/SliceValue;->setColor(I)Llecho/lib/hellocharts/model/SliceValue;

    .line 57
    iput p3, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/SliceValue;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 13
    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    .line 31
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    .line 35
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    .line 61
    iget v0, p1, Llecho/lib/hellocharts/model/SliceValue;->value:F

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/SliceValue;->setValue(F)Llecho/lib/hellocharts/model/SliceValue;

    .line 62
    iget v0, p1, Llecho/lib/hellocharts/model/SliceValue;->color:I

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/SliceValue;->setColor(I)Llecho/lib/hellocharts/model/SliceValue;

    .line 63
    iget v0, p1, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    .line 64
    iget-object p1, p1, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    iput-object p1, p0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    check-cast p1, Llecho/lib/hellocharts/model/SliceValue;

    .line 155
    iget v2, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    iget v3, p1, Llecho/lib/hellocharts/model/SliceValue;->color:I

    if-eq v2, v3, :cond_2

    return v1

    .line 156
    :cond_2
    iget v2, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    iget v3, p1, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    if-eq v2, v3, :cond_3

    return v1

    .line 157
    :cond_3
    iget v2, p1, Llecho/lib/hellocharts/model/SliceValue;->diff:F

    iget v3, p0, Llecho/lib/hellocharts/model/SliceValue;->diff:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 158
    :cond_4
    iget v2, p1, Llecho/lib/hellocharts/model/SliceValue;->originValue:F

    iget v3, p0, Llecho/lib/hellocharts/model/SliceValue;->originValue:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 159
    :cond_5
    iget v2, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    iget v3, p1, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    if-eq v2, v3, :cond_6

    return v1

    .line 160
    :cond_6
    iget v2, p1, Llecho/lib/hellocharts/model/SliceValue;->value:F

    iget v3, p0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_7

    return v1

    .line 161
    :cond_7
    iget-object v2, p0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    iget-object p1, p1, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_0
    return v1
.end method

.method public finish()V
    .locals 2

    .line 72
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->originValue:F

    iget v1, p0, Llecho/lib/hellocharts/model/SliceValue;->diff:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/SliceValue;->setValue(F)Llecho/lib/hellocharts/model/SliceValue;

    return-void
.end method

.method public getColor()I
    .locals 1

    .line 99
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    return v0
.end method

.method public getDarkenColor()I
    .locals 1

    .line 109
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    return v0
.end method

.method public getLabel()[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    iget-object v0, p0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    return-object v0
.end method

.method public getLabelAsChars()[C
    .locals 1

    .line 140
    iget-object v0, p0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    return-object v0
.end method

.method public getSliceSpacing()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    return v0
.end method

.method public getValue()F
    .locals 1

    .line 76
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 168
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    iget v3, p0, Llecho/lib/hellocharts/model/SliceValue;->originValue:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    iget v3, p0, Llecho/lib/hellocharts/model/SliceValue;->originValue:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 170
    iget v3, p0, Llecho/lib/hellocharts/model/SliceValue;->diff:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_2

    iget v1, p0, Llecho/lib/hellocharts/model/SliceValue;->diff:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 171
    iget v1, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 172
    iget v1, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 173
    iget v1, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 174
    iget-object v1, p0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    if-eqz v1, :cond_3

    iget-object v1, p0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public setColor(I)Llecho/lib/hellocharts/model/SliceValue;
    .locals 0

    .line 103
    iput p1, p0, Llecho/lib/hellocharts/model/SliceValue;->color:I

    .line 104
    invoke-static {p1}, Llecho/lib/hellocharts/util/ChartUtils;->darkenColor(I)I

    move-result p1

    iput p1, p0, Llecho/lib/hellocharts/model/SliceValue;->darkenColor:I

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SliceValue;
    .locals 0

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    return-object p0
.end method

.method public setLabel([C)Llecho/lib/hellocharts/model/SliceValue;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    iput-object p1, p0, Llecho/lib/hellocharts/model/SliceValue;->label:[C

    return-object p0
.end method

.method public setSliceSpacing(I)Llecho/lib/hellocharts/model/SliceValue;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    iput p1, p0, Llecho/lib/hellocharts/model/SliceValue;->sliceSpacing:I

    return-object p0
.end method

.method public setTarget(F)Llecho/lib/hellocharts/model/SliceValue;
    .locals 1

    .line 93
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/SliceValue;->setValue(F)Llecho/lib/hellocharts/model/SliceValue;

    .line 94
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->originValue:F

    sub-float/2addr p1, v0

    iput p1, p0, Llecho/lib/hellocharts/model/SliceValue;->diff:F

    return-object p0
.end method

.method public setValue(F)Llecho/lib/hellocharts/model/SliceValue;
    .locals 0

    .line 80
    iput p1, p0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    .line 81
    iput p1, p0, Llecho/lib/hellocharts/model/SliceValue;->originValue:F

    const/4 p1, 0x0

    .line 82
    iput p1, p0, Llecho/lib/hellocharts/model/SliceValue;->diff:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SliceValue [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 2

    .line 68
    iget v0, p0, Llecho/lib/hellocharts/model/SliceValue;->originValue:F

    iget v1, p0, Llecho/lib/hellocharts/model/SliceValue;->diff:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/model/SliceValue;->value:F

    return-void
.end method
