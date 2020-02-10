.class public Lorg/mixare/lib/render/Camera;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mixare/lib/render/Camera;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_VIEW_ANGLE:F


# instance fields
.field dist:F

.field public height:I

.field public lco:Lorg/mixare/lib/render/MixVector;

.field public transform:Lorg/mixare/lib/render/Matrix;

.field viewAngle:F

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lorg/mixare/lib/render/Camera;->DEFAULT_VIEW_ANGLE:F

    .line 58
    new-instance v0, Lorg/mixare/lib/render/Camera$1;

    invoke-direct {v0}, Lorg/mixare/lib/render/Camera$1;-><init>()V

    sput-object v0, Lorg/mixare/lib/render/Camera;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lorg/mixare/lib/render/Camera;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance p3, Lorg/mixare/lib/render/Matrix;

    invoke-direct {p3}, Lorg/mixare/lib/render/Matrix;-><init>()V

    iput-object p3, p0, Lorg/mixare/lib/render/Camera;->transform:Lorg/mixare/lib/render/Matrix;

    .line 37
    new-instance p3, Lorg/mixare/lib/render/MixVector;

    invoke-direct {p3}, Lorg/mixare/lib/render/MixVector;-><init>()V

    iput-object p3, p0, Lorg/mixare/lib/render/Camera;->lco:Lorg/mixare/lib/render/MixVector;

    .line 47
    iput p1, p0, Lorg/mixare/lib/render/Camera;->width:I

    .line 48
    iput p2, p0, Lorg/mixare/lib/render/Camera;->height:I

    .line 50
    iget-object p1, p0, Lorg/mixare/lib/render/Camera;->transform:Lorg/mixare/lib/render/Matrix;

    invoke-virtual {p1}, Lorg/mixare/lib/render/Matrix;->toIdentity()V

    .line 51
    iget-object p1, p0, Lorg/mixare/lib/render/Camera;->lco:Lorg/mixare/lib/render/MixVector;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2}, Lorg/mixare/lib/render/MixVector;->set(FFF)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/mixare/lib/render/Matrix;

    invoke-direct {v0}, Lorg/mixare/lib/render/Matrix;-><init>()V

    iput-object v0, p0, Lorg/mixare/lib/render/Camera;->transform:Lorg/mixare/lib/render/Matrix;

    .line 37
    new-instance v0, Lorg/mixare/lib/render/MixVector;

    invoke-direct {v0}, Lorg/mixare/lib/render/MixVector;-><init>()V

    iput-object v0, p0, Lorg/mixare/lib/render/Camera;->lco:Lorg/mixare/lib/render/MixVector;

    .line 55
    invoke-virtual {p0, p1}, Lorg/mixare/lib/render/Camera;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public projectPoint(Lorg/mixare/lib/render/MixVector;Lorg/mixare/lib/render/MixVector;FF)V
    .locals 2

    .line 80
    iget v0, p0, Lorg/mixare/lib/render/Camera;->dist:F

    iget v1, p1, Lorg/mixare/lib/render/MixVector;->x:F

    mul-float v0, v0, v1

    iget v1, p1, Lorg/mixare/lib/render/MixVector;->z:F

    neg-float v1, v1

    div-float/2addr v0, v1

    iput v0, p2, Lorg/mixare/lib/render/MixVector;->x:F

    .line 81
    iget v0, p0, Lorg/mixare/lib/render/Camera;->dist:F

    iget v1, p1, Lorg/mixare/lib/render/MixVector;->y:F

    mul-float v0, v0, v1

    iget v1, p1, Lorg/mixare/lib/render/MixVector;->z:F

    neg-float v1, v1

    div-float/2addr v0, v1

    iput v0, p2, Lorg/mixare/lib/render/MixVector;->y:F

    .line 82
    iget p1, p1, Lorg/mixare/lib/render/MixVector;->z:F

    iput p1, p2, Lorg/mixare/lib/render/MixVector;->z:F

    .line 83
    iget p1, p2, Lorg/mixare/lib/render/MixVector;->x:F

    add-float/2addr p1, p3

    iget p3, p0, Lorg/mixare/lib/render/Camera;->width:I

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    add-float/2addr p1, p3

    iput p1, p2, Lorg/mixare/lib/render/MixVector;->x:F

    .line 84
    iget p1, p2, Lorg/mixare/lib/render/MixVector;->y:F

    neg-float p1, p1

    add-float/2addr p1, p4

    iget p3, p0, Lorg/mixare/lib/render/Camera;->height:I

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    add-float/2addr p1, p3

    iput p1, p2, Lorg/mixare/lib/render/MixVector;->y:F

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mixare/lib/render/Camera;->width:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mixare/lib/render/Camera;->height:I

    .line 110
    const-class v0, Lorg/mixare/lib/render/Matrix;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/mixare/lib/render/Matrix;

    iput-object v0, p0, Lorg/mixare/lib/render/Camera;->transform:Lorg/mixare/lib/render/Matrix;

    .line 111
    const-class v0, Lorg/mixare/lib/render/MixVector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/mixare/lib/render/MixVector;

    iput-object v0, p0, Lorg/mixare/lib/render/Camera;->lco:Lorg/mixare/lib/render/MixVector;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/render/Camera;->viewAngle:F

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lorg/mixare/lib/render/Camera;->dist:F

    return-void
.end method

.method public setViewAngle(F)V
    .locals 3

    .line 69
    iput p1, p0, Lorg/mixare/lib/render/Camera;->viewAngle:F

    .line 70
    iget v0, p0, Lorg/mixare/lib/render/Camera;->width:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float p1, v1

    div-float/2addr v0, p1

    iput v0, p0, Lorg/mixare/lib/render/Camera;->dist:F

    return-void
.end method

.method public setViewAngle(IIF)V
    .locals 0

    .line 74
    iput p3, p0, Lorg/mixare/lib/render/Camera;->viewAngle:F

    .line 75
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p3, p2

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->tan(D)D

    move-result-wide p2

    double-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lorg/mixare/lib/render/Camera;->dist:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CAM("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/mixare/lib/render/Camera;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mixare/lib/render/Camera;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 99
    iget p2, p0, Lorg/mixare/lib/render/Camera;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget p2, p0, Lorg/mixare/lib/render/Camera;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object p2, p0, Lorg/mixare/lib/render/Camera;->transform:Lorg/mixare/lib/render/Matrix;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    iget-object p2, p0, Lorg/mixare/lib/render/Camera;->lco:Lorg/mixare/lib/render/MixVector;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    iget p2, p0, Lorg/mixare/lib/render/Camera;->viewAngle:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 104
    iget p2, p0, Lorg/mixare/lib/render/Camera;->dist:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
