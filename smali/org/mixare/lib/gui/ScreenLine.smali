.class public Lorg/mixare/lib/gui/ScreenLine;
.super Ljava/lang/Object;
.source "ScreenLine.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mixare/lib/gui/ScreenLine;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/mixare/lib/gui/ScreenLine$1;

    invoke-direct {v0}, Lorg/mixare/lib/gui/ScreenLine$1;-><init>()V

    sput-object v0, Lorg/mixare/lib/gui/ScreenLine;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0, v0}, Lorg/mixare/lib/gui/ScreenLine;->set(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/mixare/lib/gui/ScreenLine;->set(FF)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lorg/mixare/lib/gui/ScreenLine;->readParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public add(FF)V
    .locals 1

    .line 69
    iget v0, p0, Lorg/mixare/lib/gui/ScreenLine;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/mixare/lib/gui/ScreenLine;->x:F

    .line 70
    iget p1, p0, Lorg/mixare/lib/gui/ScreenLine;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lorg/mixare/lib/gui/ScreenLine;->y:F

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/ScreenLine;->x:F

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lorg/mixare/lib/gui/ScreenLine;->y:F

    return-void
.end method

.method public rotate(F)V
    .locals 3

    .line 61
    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    iget v1, p0, Lorg/mixare/lib/gui/ScreenLine;->x:F

    mul-float v0, v0, v1

    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    iget v2, p0, Lorg/mixare/lib/gui/ScreenLine;->y:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    .line 62
    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    iget v2, p0, Lorg/mixare/lib/gui/ScreenLine;->x:F

    mul-float v1, v1, v2

    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result p1

    iget v2, p0, Lorg/mixare/lib/gui/ScreenLine;->y:F

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    .line 64
    iput v0, p0, Lorg/mixare/lib/gui/ScreenLine;->x:F

    .line 65
    iput v1, p0, Lorg/mixare/lib/gui/ScreenLine;->y:F

    return-void
.end method

.method public set(FF)V
    .locals 0

    .line 56
    iput p1, p0, Lorg/mixare/lib/gui/ScreenLine;->x:F

    .line 57
    iput p2, p0, Lorg/mixare/lib/gui/ScreenLine;->y:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 80
    iget p2, p0, Lorg/mixare/lib/gui/ScreenLine;->x:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 81
    iget p2, p0, Lorg/mixare/lib/gui/ScreenLine;->y:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
