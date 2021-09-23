.class public Lorg/mixare/lib/render/MixVector;
.super Ljava/lang/Object;
.source "MixVector.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mixare/lib/render/MixVector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lorg/mixare/lib/render/MixVector$1;

    invoke-direct {v0}, Lorg/mixare/lib/render/MixVector$1;-><init>()V

    sput-object v0, Lorg/mixare/lib/render/MixVector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0, v0, v0}, Lorg/mixare/lib/render/MixVector;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lorg/mixare/lib/render/MixVector;->set(FFF)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lorg/mixare/lib/render/MixVector;->readParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/mixare/lib/render/MixVector;)V
    .locals 2

    .line 45
    iget v0, p1, Lorg/mixare/lib/render/MixVector;->x:F

    iget v1, p1, Lorg/mixare/lib/render/MixVector;->y:F

    iget p1, p1, Lorg/mixare/lib/render/MixVector;->z:F

    invoke-direct {p0, v0, v1, p1}, Lorg/mixare/lib/render/MixVector;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    const/4 v0, 0x0

    .line 49
    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-direct {p0, v0, v1, p1}, Lorg/mixare/lib/render/MixVector;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public add(FFF)V
    .locals 1

    .line 104
    iget v0, p0, Lorg/mixare/lib/render/MixVector;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/mixare/lib/render/MixVector;->x:F

    .line 105
    iget p1, p0, Lorg/mixare/lib/render/MixVector;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lorg/mixare/lib/render/MixVector;->y:F

    .line 106
    iget p1, p0, Lorg/mixare/lib/render/MixVector;->z:F

    add-float/2addr p1, p3

    iput p1, p0, Lorg/mixare/lib/render/MixVector;->z:F

    return-void
.end method

.method public add(Lorg/mixare/lib/render/MixVector;)V
    .locals 2

    .line 110
    iget v0, p1, Lorg/mixare/lib/render/MixVector;->x:F

    iget v1, p1, Lorg/mixare/lib/render/MixVector;->y:F

    iget p1, p1, Lorg/mixare/lib/render/MixVector;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lorg/mixare/lib/render/MixVector;->add(FFF)V

    return-void
.end method

.method public cross(Lorg/mixare/lib/render/MixVector;Lorg/mixare/lib/render/MixVector;)V
    .locals 4

    .line 150
    iget v0, p1, Lorg/mixare/lib/render/MixVector;->y:F

    iget v1, p2, Lorg/mixare/lib/render/MixVector;->z:F

    mul-float v0, v0, v1

    iget v1, p1, Lorg/mixare/lib/render/MixVector;->z:F

    iget v2, p2, Lorg/mixare/lib/render/MixVector;->y:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    .line 151
    iget v1, p1, Lorg/mixare/lib/render/MixVector;->z:F

    iget v2, p2, Lorg/mixare/lib/render/MixVector;->x:F

    mul-float v1, v1, v2

    iget v2, p1, Lorg/mixare/lib/render/MixVector;->x:F

    iget v3, p2, Lorg/mixare/lib/render/MixVector;->z:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    .line 152
    iget v2, p1, Lorg/mixare/lib/render/MixVector;->x:F

    iget v3, p2, Lorg/mixare/lib/render/MixVector;->y:F

    mul-float v2, v2, v3

    iget p1, p1, Lorg/mixare/lib/render/MixVector;->y:F

    iget p2, p2, Lorg/mixare/lib/render/MixVector;->x:F

    mul-float p1, p1, p2

    sub-float/2addr v2, p1

    .line 153
    iput v0, p0, Lorg/mixare/lib/render/MixVector;->x:F

    .line 154
    iput v1, p0, Lorg/mixare/lib/render/MixVector;->y:F

    .line 155
    iput v2, p0, Lorg/mixare/lib/render/MixVector;->z:F

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public divide(F)V
    .locals 1

    .line 128
    iget v0, p0, Lorg/mixare/lib/render/MixVector;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/mixare/lib/render/MixVector;->x:F

    .line 129
    iget v0, p0, Lorg/mixare/lib/render/MixVector;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/mixare/lib/render/MixVector;->y:F

    .line 130
    iget v0, p0, Lorg/mixare/lib/render/MixVector;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/mixare/lib/render/MixVector;->z:F

    return-void
.end method

.method public dot(Lorg/mixare/lib/render/MixVector;)F
    .locals 3

    .line 146
    iget v0, p0, Lorg/mixare/lib/render/MixVector;->x:F

    iget v1, p1, Lorg/mixare/lib/render/MixVector;->x:F

    mul-float v0, v0, v1

    iget v1, p0, Lorg/mixare/lib/render/MixVector;->y:F

    iget v2, p1, Lorg/mixare/lib/render/MixVector;->y:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/mixare/lib/render/MixVector;->z:F

    iget p1, p1, Lorg/mixare/lib/render/MixVector;->z:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(FFF)Z
    .locals 1

    .line 77
    iget v0, p0, Lorg/mixare/lib/render/MixVector;->x:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    iget p1, p0, Lorg/mixare/lib/render/MixVector;->y:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    iget p1, p0, Lorg/mixare/lib/render/MixVector;->z:F

    cmpl-float p1, p1, p3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 72
    check-cast p1, Lorg/mixare/lib/render/MixVector;

    .line 73
    iget v0, p1, Lorg/mixare/lib/render/MixVector;->x:F

    iget v1, p0, Lorg/mixare/lib/render/MixVector;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lorg/mixare/lib/render/MixVector;->y:F

    iget v1, p0, Lorg/mixare/lib/render/MixVector;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p1, p1, Lorg/mixare/lib/render/MixVector;->z:F

    iget v0, p0, Lorg/mixare/lib/render/MixVector;->z:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 82
    iget v0, p0, Lorg/mixare/lib/render/MixVector;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 83
    iget v1, p0, Lorg/mixare/lib/render/MixVector;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 84
    iget v2, p0, Lorg/mixare/lib/render/MixVector;->z:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 85
    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public length()F
    .locals 3

    .line 134
    iget v0, p0, Lorg/mixare/lib/render/MixVector;->x:F

    iget v1, p0, Lorg/mixare/lib/render/MixVector;->x:F

    mul-float v0, v0, v1

    iget v1, p0, Lorg/mixare/lib/render/MixVector;->y:F

    iget v2, p0, Lorg/mixare/lib/render/MixVector;->y:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/mixare/lib/render/MixVector;->z:F

    iget v2, p0, Lorg/mixare/lib/render/MixVector;->z:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public length2D()F
    .locals 3

    .line 138
    iget v0, p0, Lorg/mixare/lib/render/MixVector;->x:F

    iget v1, p0, Lorg/mixare/lib/render/MixVector;->x:F

    mul-float v0, v0, v1

    iget v1, p0, Lorg/mixare/lib/render/MixVector;->z:F

    iget v2, p0, Lorg/mixare/lib/render/MixVector;->z:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public mult(F)V
    .locals 1

    .line 122
    iget v0, p0, Lorg/mixare/lib/render/MixVector;->x:F

    mul-float v0, v0, p1

    iput v0, p0, Lorg/mixare/lib/render/MixVector;->x:F

    .line 123
    iget v0, p0, Lorg/mixare/lib/render/MixVector;->y:F

    mul-float v0, v0, p1

    iput v0, p0, Lorg/mixare/lib/render/MixVector;->y:F

    .line 124
    iget v0, p0, Lorg/mixare/lib/render/MixVector;->z:F

    mul-float v0, v0, p1

    iput v0, p0, Lorg/mixare/lib/render/MixVector;->z:F

    return-void
.end method

.method public norm()V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lorg/mixare/lib/render/MixVector;->length()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mixare/lib/render/MixVector;->divide(F)V

    return-void
.end method

.method public prod(Lorg/mixare/lib/render/Matrix;)V
    .locals 5

    .line 159
    iget v0, p1, Lorg/mixare/lib/render/Matrix;->a1:F

    iget v1, p0, Lorg/mixare/lib/render/MixVector;->x:F

    mul-float v0, v0, v1

    iget v1, p1, Lorg/mixare/lib/render/Matrix;->a2:F

    iget v2, p0, Lorg/mixare/lib/render/MixVector;->y:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/mixare/lib/render/Matrix;->a3:F

    iget v2, p0, Lorg/mixare/lib/render/MixVector;->z:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 160
    iget v1, p1, Lorg/mixare/lib/render/Matrix;->b1:F

    iget v2, p0, Lorg/mixare/lib/render/MixVector;->x:F

    mul-float v1, v1, v2

    iget v2, p1, Lorg/mixare/lib/render/Matrix;->b2:F

    iget v3, p0, Lorg/mixare/lib/render/MixVector;->y:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/mixare/lib/render/Matrix;->b3:F

    iget v3, p0, Lorg/mixare/lib/render/MixVector;->z:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    .line 161
    iget v2, p1, Lorg/mixare/lib/render/Matrix;->c1:F

    iget v3, p0, Lorg/mixare/lib/render/MixVector;->x:F

    mul-float v2, v2, v3

    iget v3, p1, Lorg/mixare/lib/render/Matrix;->c2:F

    iget v4, p0, Lorg/mixare/lib/render/MixVector;->y:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iget p1, p1, Lorg/mixare/lib/render/Matrix;->c3:F

    iget v3, p0, Lorg/mixare/lib/render/MixVector;->z:F

    mul-float p1, p1, v3

    add-float/2addr v2, p1

    .line 163
    iput v0, p0, Lorg/mixare/lib/render/MixVector;->x:F

    .line 164
    iput v1, p0, Lorg/mixare/lib/render/MixVector;->y:F

    .line 165
    iput v2, p0, Lorg/mixare/lib/render/MixVector;->z:F

    return-void
.end method

.method public readParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/render/MixVector;->x:F

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/render/MixVector;->y:F

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lorg/mixare/lib/render/MixVector;->z:F

    return-void
.end method

.method public set(FFF)V
    .locals 0

    .line 98
    iput p1, p0, Lorg/mixare/lib/render/MixVector;->x:F

    .line 99
    iput p2, p0, Lorg/mixare/lib/render/MixVector;->y:F

    .line 100
    iput p3, p0, Lorg/mixare/lib/render/MixVector;->z:F

    return-void
.end method

.method public set(Lorg/mixare/lib/render/MixVector;)V
    .locals 2

    .line 94
    iget v0, p1, Lorg/mixare/lib/render/MixVector;->x:F

    iget v1, p1, Lorg/mixare/lib/render/MixVector;->y:F

    iget p1, p1, Lorg/mixare/lib/render/MixVector;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lorg/mixare/lib/render/MixVector;->set(FFF)V

    return-void
.end method

.method public sub(FFF)V
    .locals 0

    neg-float p1, p1

    neg-float p2, p2

    neg-float p3, p3

    .line 114
    invoke-virtual {p0, p1, p2, p3}, Lorg/mixare/lib/render/MixVector;->add(FFF)V

    return-void
.end method

.method public sub(Lorg/mixare/lib/render/MixVector;)V
    .locals 2

    .line 118
    iget v0, p1, Lorg/mixare/lib/render/MixVector;->x:F

    neg-float v0, v0

    iget v1, p1, Lorg/mixare/lib/render/MixVector;->y:F

    neg-float v1, v1

    iget p1, p1, Lorg/mixare/lib/render/MixVector;->z:F

    neg-float p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/mixare/lib/render/MixVector;->add(FFF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/mixare/lib/render/MixVector;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mixare/lib/render/MixVector;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mixare/lib/render/MixVector;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 175
    iget p2, p0, Lorg/mixare/lib/render/MixVector;->x:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 176
    iget p2, p0, Lorg/mixare/lib/render/MixVector;->y:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 177
    iget p2, p0, Lorg/mixare/lib/render/MixVector;->z:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
