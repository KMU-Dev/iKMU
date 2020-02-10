.class public Lorg/mixare/lib/gui/Label;
.super Ljava/lang/Object;
.source "Label.java"

# interfaces
.implements Lorg/mixare/lib/gui/ScreenObj;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mixare/lib/gui/Label;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private height:F

.field private obj:Lorg/mixare/lib/gui/ScreenObj;

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lorg/mixare/lib/gui/Label$1;

    invoke-direct {v0}, Lorg/mixare/lib/gui/Label$1;-><init>()V

    sput-object v0, Lorg/mixare/lib/gui/Label;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lorg/mixare/lib/gui/Label;->readParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()F
    .locals 1

    .line 76
    iget v0, p0, Lorg/mixare/lib/gui/Label;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 72
    iget v0, p0, Lorg/mixare/lib/gui/Label;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .line 64
    iget v0, p0, Lorg/mixare/lib/gui/Label;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 68
    iget v0, p0, Lorg/mixare/lib/gui/Label;->y:F

    return v0
.end method

.method public paint(Lorg/mixare/lib/gui/PaintScreen;)V
    .locals 6

    .line 60
    iget-object v1, p0, Lorg/mixare/lib/gui/Label;->obj:Lorg/mixare/lib/gui/ScreenObj;

    iget v2, p0, Lorg/mixare/lib/gui/Label;->x:F

    iget v3, p0, Lorg/mixare/lib/gui/Label;->y:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mixare/lib/gui/PaintScreen;->paintObj(Lorg/mixare/lib/gui/ScreenObj;FFFF)V

    return-void
.end method

.method public prepare(Lorg/mixare/lib/gui/ScreenObj;)V
    .locals 3

    .line 30
    iput-object p1, p0, Lorg/mixare/lib/gui/Label;->obj:Lorg/mixare/lib/gui/ScreenObj;

    .line 31
    iget-object p1, p0, Lorg/mixare/lib/gui/Label;->obj:Lorg/mixare/lib/gui/ScreenObj;

    invoke-interface {p1}, Lorg/mixare/lib/gui/ScreenObj;->getWidth()F

    move-result p1

    .line 32
    iget-object v0, p0, Lorg/mixare/lib/gui/Label;->obj:Lorg/mixare/lib/gui/ScreenObj;

    invoke-interface {v0}, Lorg/mixare/lib/gui/ScreenObj;->getHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p1, v1

    .line 34
    iput v2, p0, Lorg/mixare/lib/gui/Label;->x:F

    const/4 v2, 0x0

    .line 35
    iput v2, p0, Lorg/mixare/lib/gui/Label;->y:F

    mul-float p1, p1, v1

    .line 37
    iput p1, p0, Lorg/mixare/lib/gui/Label;->width:F

    mul-float v0, v0, v1

    .line 38
    iput v0, p0, Lorg/mixare/lib/gui/Label;->height:F

    return-void
.end method

.method public readParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/Label;->x:F

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/Label;->x:F

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/mixare/lib/gui/Label;->width:F

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lorg/mixare/lib/gui/Label;->height:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 81
    iget p2, p0, Lorg/mixare/lib/gui/Label;->x:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 82
    iget p2, p0, Lorg/mixare/lib/gui/Label;->y:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 83
    iget p2, p0, Lorg/mixare/lib/gui/Label;->width:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 84
    iget p2, p0, Lorg/mixare/lib/gui/Label;->height:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
