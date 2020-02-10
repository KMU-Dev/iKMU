.class public Llecho/lib/hellocharts/model/BubbleValue;
.super Ljava/lang/Object;
.source "BubbleValue.java"


# instance fields
.field private color:I

.field private darkenColor:I

.field private diffX:F

.field private diffY:F

.field private diffZ:F

.field private label:[C

.field private originX:F

.field private originY:F

.field private originZ:F

.field private shape:Llecho/lib/hellocharts/model/ValueShape;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    .line 54
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    .line 55
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, v0, v0}, Llecho/lib/hellocharts/model/BubbleValue;->set(FFF)Llecho/lib/hellocharts/model/BubbleValue;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    .line 54
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    .line 55
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Llecho/lib/hellocharts/model/BubbleValue;->set(FFF)Llecho/lib/hellocharts/model/BubbleValue;

    return-void
.end method

.method public constructor <init>(FFFI)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    .line 54
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    .line 55
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Llecho/lib/hellocharts/model/BubbleValue;->set(FFF)Llecho/lib/hellocharts/model/BubbleValue;

    .line 68
    invoke-virtual {p0, p4}, Llecho/lib/hellocharts/model/BubbleValue;->setColor(I)Llecho/lib/hellocharts/model/BubbleValue;

    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/BubbleValue;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    .line 54
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    .line 55
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    iput-object v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 72
    iget v0, p1, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    iget v1, p1, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    iget v2, p1, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    invoke-virtual {p0, v0, v1, v2}, Llecho/lib/hellocharts/model/BubbleValue;->set(FFF)Llecho/lib/hellocharts/model/BubbleValue;

    .line 73
    iget v0, p1, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/BubbleValue;->setColor(I)Llecho/lib/hellocharts/model/BubbleValue;

    .line 74
    iget-object p1, p1, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    iput-object p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

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

    if-eqz p1, :cond_f

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 176
    :cond_1
    check-cast p1, Llecho/lib/hellocharts/model/BubbleValue;

    .line 178
    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    iget v3, p1, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    if-eq v2, v3, :cond_2

    return v1

    .line 179
    :cond_2
    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    iget v3, p1, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    if-eq v2, v3, :cond_3

    return v1

    .line 180
    :cond_3
    iget v2, p1, Llecho/lib/hellocharts/model/BubbleValue;->diffX:F

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffX:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 181
    :cond_4
    iget v2, p1, Llecho/lib/hellocharts/model/BubbleValue;->diffY:F

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffY:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 182
    :cond_5
    iget v2, p1, Llecho/lib/hellocharts/model/BubbleValue;->diffZ:F

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffZ:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    return v1

    .line 183
    :cond_6
    iget v2, p1, Llecho/lib/hellocharts/model/BubbleValue;->originX:F

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->originX:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_7

    return v1

    .line 184
    :cond_7
    iget v2, p1, Llecho/lib/hellocharts/model/BubbleValue;->originY:F

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->originY:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_8

    return v1

    .line 185
    :cond_8
    iget v2, p1, Llecho/lib/hellocharts/model/BubbleValue;->originZ:F

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->originZ:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_9

    return v1

    .line 186
    :cond_9
    iget v2, p1, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_a

    return v1

    .line 187
    :cond_a
    iget v2, p1, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_b

    return v1

    .line 188
    :cond_b
    iget v2, p1, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_c

    return v1

    .line 189
    :cond_c
    iget-object v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    iget-object v3, p1, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 190
    :cond_d
    iget-object v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    iget-object p1, p1, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    if-eq v2, p1, :cond_e

    return v1

    :cond_e
    return v0

    :cond_f
    :goto_0
    return v1
.end method

.method public finish()V
    .locals 4

    .line 84
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->originX:F

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffX:F

    add-float/2addr v0, v1

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->originY:F

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffY:F

    add-float/2addr v1, v2

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->originZ:F

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffZ:F

    add-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Llecho/lib/hellocharts/model/BubbleValue;->set(FFF)Llecho/lib/hellocharts/model/BubbleValue;

    return-void
.end method

.method public getColor()I
    .locals 1

    .line 124
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    return v0
.end method

.method public getDarkenColor()I
    .locals 1

    .line 134
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    return v0
.end method

.method public getLabel()[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    iget-object v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    return-object v0
.end method

.method public getLabelAsChars()[C
    .locals 1

    .line 157
    iget-object v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    return-object v0
.end method

.method public getShape()Llecho/lib/hellocharts/model/ValueShape;
    .locals 1

    .line 138
    iget-object v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 112
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 116
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .line 120
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 197
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 198
    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 199
    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_2

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 200
    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->originX:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_3

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->originX:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 201
    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->originY:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_4

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->originY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 202
    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->originZ:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_5

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->originZ:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 203
    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffX:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_6

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffX:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 204
    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffY:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_7

    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 205
    iget v3, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffZ:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_8

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffZ:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 206
    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 207
    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 208
    iget-object v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    if-eqz v1, :cond_9

    iget-object v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/ValueShape;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 209
    iget-object v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    if-eqz v1, :cond_a

    iget-object v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v2

    :cond_a
    add-int/2addr v0, v2

    return v0
.end method

.method public set(FFF)Llecho/lib/hellocharts/model/BubbleValue;
    .locals 0

    .line 88
    iput p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    .line 89
    iput p2, p0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    .line 90
    iput p3, p0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    .line 91
    iput p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->originX:F

    .line 92
    iput p2, p0, Llecho/lib/hellocharts/model/BubbleValue;->originY:F

    .line 93
    iput p3, p0, Llecho/lib/hellocharts/model/BubbleValue;->originZ:F

    const/4 p1, 0x0

    .line 94
    iput p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffX:F

    .line 95
    iput p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffY:F

    .line 96
    iput p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffZ:F

    return-object p0
.end method

.method public setColor(I)Llecho/lib/hellocharts/model/BubbleValue;
    .locals 0

    .line 128
    iput p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->color:I

    .line 129
    invoke-static {p1}, Llecho/lib/hellocharts/util/ChartUtils;->darkenColor(I)I

    move-result p1

    iput p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->darkenColor:I

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/BubbleValue;
    .locals 0

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    return-object p0
.end method

.method public setLabel([C)Llecho/lib/hellocharts/model/BubbleValue;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    iput-object p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->label:[C

    return-object p0
.end method

.method public setShape(Llecho/lib/hellocharts/model/ValueShape;)Llecho/lib/hellocharts/model/BubbleValue;
    .locals 0

    .line 142
    iput-object p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->shape:Llecho/lib/hellocharts/model/ValueShape;

    return-object p0
.end method

.method public setTarget(FFF)Llecho/lib/hellocharts/model/BubbleValue;
    .locals 3

    .line 104
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    iget v2, p0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    invoke-virtual {p0, v0, v1, v2}, Llecho/lib/hellocharts/model/BubbleValue;->set(FFF)Llecho/lib/hellocharts/model/BubbleValue;

    .line 105
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->originX:F

    sub-float/2addr p1, v0

    iput p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffX:F

    .line 106
    iget p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->originY:F

    sub-float/2addr p2, p1

    iput p2, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffY:F

    .line 107
    iget p1, p0, Llecho/lib/hellocharts/model/BubbleValue;->originZ:F

    sub-float/2addr p3, p1

    iput p3, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffZ:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BubbleValue [x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 2

    .line 78
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->originX:F

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffX:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->x:F

    .line 79
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->originY:F

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffY:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->y:F

    .line 80
    iget v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->originZ:F

    iget v1, p0, Llecho/lib/hellocharts/model/BubbleValue;->diffZ:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/model/BubbleValue;->z:F

    return-void
.end method
