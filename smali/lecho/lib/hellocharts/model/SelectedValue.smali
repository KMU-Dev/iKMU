.class public Llecho/lib/hellocharts/model/SelectedValue;
.super Ljava/lang/Object;
.source "SelectedValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;
    }
.end annotation


# instance fields
.field private firstIndex:I

.field private secondIndex:I

.field private type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    iput-object v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    .line 24
    invoke-virtual {p0}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    return-void
.end method

.method public constructor <init>(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    iput-object v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 48
    sget-object v0, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    const/high16 v1, -0x80000000

    invoke-virtual {p0, v1, v1, v0}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 108
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 110
    :cond_2
    check-cast p1, Llecho/lib/hellocharts/model/SelectedValue;

    .line 111
    iget v2, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    iget v3, p1, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    if-eq v2, v3, :cond_3

    return v1

    .line 113
    :cond_3
    iget v2, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    iget v3, p1, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    if-eq v2, v3, :cond_4

    return v1

    .line 115
    :cond_4
    iget-object v2, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    iget-object p1, p1, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getFirstIndex()I
    .locals 1

    .line 66
    iget v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    return v0
.end method

.method public getSecondIndex()I
    .locals 1

    .line 77
    iget v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    return v0
.end method

.method public getType()Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;
    .locals 1

    .line 85
    iget-object v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 96
    iget v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget v2, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 98
    iget-object v1, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isSet()Z
    .locals 1

    .line 55
    iget v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V
    .locals 0

    .line 32
    iput p1, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    .line 33
    iput p2, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    if-eqz p3, :cond_0

    .line 35
    iput-object p3, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    goto :goto_0

    .line 37
    :cond_0
    sget-object p1, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    iput-object p1, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    :goto_0
    return-void
.end method

.method public set(Llecho/lib/hellocharts/model/SelectedValue;)V
    .locals 1

    .line 42
    iget v0, p1, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    iput v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    .line 43
    iget v0, p1, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    iput v0, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    .line 44
    iget-object p1, p1, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    iput-object p1, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    return-void
.end method

.method public setFirstIndex(I)V
    .locals 0

    .line 70
    iput p1, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    return-void
.end method

.method public setSecondIndex(I)V
    .locals 0

    .line 81
    iput p1, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    return-void
.end method

.method public setType(Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V
    .locals 0

    .line 89
    iput-object p1, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectedValue [firstIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llecho/lib/hellocharts/model/SelectedValue;->firstIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secondIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llecho/lib/hellocharts/model/SelectedValue;->secondIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llecho/lib/hellocharts/model/SelectedValue;->type:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
