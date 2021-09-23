.class public Lorg/mixare/lib/marker/draw/ClickHandler;
.super Ljava/lang/Object;
.source "ClickHandler.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mixare/lib/marker/draw/ClickHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private active:Z

.field private cMarker:Lorg/mixare/lib/render/MixVector;

.field private final pPt:Lorg/mixare/lib/gui/ScreenLine;

.field private signMarker:Lorg/mixare/lib/render/MixVector;

.field private txtLab:Lorg/mixare/lib/gui/Label;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lorg/mixare/lib/marker/draw/ClickHandler$1;

    invoke-direct {v0}, Lorg/mixare/lib/marker/draw/ClickHandler$1;-><init>()V

    sput-object v0, Lorg/mixare/lib/marker/draw/ClickHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/mixare/lib/gui/ScreenLine;

    invoke-direct {v0}, Lorg/mixare/lib/gui/ScreenLine;-><init>()V

    iput-object v0, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->pPt:Lorg/mixare/lib/gui/ScreenLine;

    .line 60
    invoke-virtual {p0, p1}, Lorg/mixare/lib/marker/draw/ClickHandler;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLorg/mixare/lib/gui/Label;Lorg/mixare/lib/render/MixVector;Lorg/mixare/lib/render/MixVector;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/mixare/lib/gui/ScreenLine;

    invoke-direct {v0}, Lorg/mixare/lib/gui/ScreenLine;-><init>()V

    iput-object v0, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->pPt:Lorg/mixare/lib/gui/ScreenLine;

    .line 52
    iput-object p1, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->url:Ljava/lang/String;

    .line 53
    iput-boolean p2, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->active:Z

    .line 54
    iput-object p3, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->txtLab:Lorg/mixare/lib/gui/Label;

    .line 55
    iput-object p4, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->signMarker:Lorg/mixare/lib/render/MixVector;

    .line 56
    iput-object p5, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->cMarker:Lorg/mixare/lib/render/MixVector;

    return-void
.end method

.method private isClickValid(FF)Z
    .locals 4

    .line 79
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->cMarker:Lorg/mixare/lib/render/MixVector;

    iget v0, v0, Lorg/mixare/lib/render/MixVector;->x:F

    iget-object v1, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->cMarker:Lorg/mixare/lib/render/MixVector;

    iget v1, v1, Lorg/mixare/lib/render/MixVector;->y:F

    .line 80
    iget-object v2, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->signMarker:Lorg/mixare/lib/render/MixVector;

    iget v2, v2, Lorg/mixare/lib/render/MixVector;->x:F

    iget-object v3, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->signMarker:Lorg/mixare/lib/render/MixVector;

    iget v3, v3, Lorg/mixare/lib/render/MixVector;->y:F

    .line 79
    invoke-static {v0, v1, v2, v3}, Lorg/mixare/lib/MixUtils;->getAngle(FFFF)F

    move-result v0

    .line 82
    iget-boolean v1, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->active:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 86
    :cond_0
    iget-object v1, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->pPt:Lorg/mixare/lib/gui/ScreenLine;

    iget-object v3, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->signMarker:Lorg/mixare/lib/render/MixVector;

    iget v3, v3, Lorg/mixare/lib/render/MixVector;->x:F

    sub-float/2addr p1, v3

    iput p1, v1, Lorg/mixare/lib/gui/ScreenLine;->x:F

    .line 87
    iget-object p1, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->pPt:Lorg/mixare/lib/gui/ScreenLine;

    iget-object v1, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->signMarker:Lorg/mixare/lib/render/MixVector;

    iget v1, v1, Lorg/mixare/lib/render/MixVector;->y:F

    sub-float/2addr p2, v1

    iput p2, p1, Lorg/mixare/lib/gui/ScreenLine;->y:F

    .line 88
    iget-object p1, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->pPt:Lorg/mixare/lib/gui/ScreenLine;

    const/high16 p2, 0x42b40000    # 90.0f

    add-float/2addr v0, p2

    neg-float p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p2, v0

    invoke-virtual {p1, p2}, Lorg/mixare/lib/gui/ScreenLine;->rotate(F)V

    .line 89
    iget-object p1, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->pPt:Lorg/mixare/lib/gui/ScreenLine;

    iget p2, p1, Lorg/mixare/lib/gui/ScreenLine;->x:F

    iget-object v0, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->txtLab:Lorg/mixare/lib/gui/Label;

    invoke-virtual {v0}, Lorg/mixare/lib/gui/Label;->getX()F

    move-result v0

    add-float/2addr p2, v0

    iput p2, p1, Lorg/mixare/lib/gui/ScreenLine;->x:F

    .line 90
    iget-object p1, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->pPt:Lorg/mixare/lib/gui/ScreenLine;

    iget p2, p1, Lorg/mixare/lib/gui/ScreenLine;->y:F

    iget-object v0, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->txtLab:Lorg/mixare/lib/gui/Label;

    invoke-virtual {v0}, Lorg/mixare/lib/gui/Label;->getY()F

    move-result v0

    add-float/2addr p2, v0

    iput p2, p1, Lorg/mixare/lib/gui/ScreenLine;->y:F

    .line 92
    iget-object p1, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->txtLab:Lorg/mixare/lib/gui/Label;

    invoke-virtual {p1}, Lorg/mixare/lib/gui/Label;->getX()F

    move-result p1

    iget-object p2, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->txtLab:Lorg/mixare/lib/gui/Label;

    invoke-virtual {p2}, Lorg/mixare/lib/gui/Label;->getWidth()F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    .line 93
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->txtLab:Lorg/mixare/lib/gui/Label;

    invoke-virtual {p2}, Lorg/mixare/lib/gui/Label;->getY()F

    move-result p2

    iget-object v1, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->txtLab:Lorg/mixare/lib/gui/Label;

    invoke-virtual {v1}, Lorg/mixare/lib/gui/Label;->getHeight()F

    move-result v1

    div-float/2addr v1, v0

    sub-float/2addr p2, v1

    .line 94
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->txtLab:Lorg/mixare/lib/gui/Label;

    invoke-virtual {v0}, Lorg/mixare/lib/gui/Label;->getWidth()F

    move-result v0

    .line 95
    iget-object v1, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->txtLab:Lorg/mixare/lib/gui/Label;

    invoke-virtual {v1}, Lorg/mixare/lib/gui/Label;->getHeight()F

    move-result v1

    .line 97
    iget-object v3, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->pPt:Lorg/mixare/lib/gui/ScreenLine;

    iget v3, v3, Lorg/mixare/lib/gui/ScreenLine;->x:F

    cmpl-float v3, v3, p1

    if-lez v3, :cond_1

    iget-object v3, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->pPt:Lorg/mixare/lib/gui/ScreenLine;

    iget v3, v3, Lorg/mixare/lib/gui/ScreenLine;->x:F

    add-float/2addr p1, v0

    cmpg-float p1, v3, p1

    if-gez p1, :cond_1

    iget-object p1, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->pPt:Lorg/mixare/lib/gui/ScreenLine;

    iget p1, p1, Lorg/mixare/lib/gui/ScreenLine;->y:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 98
    iget-object p1, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->pPt:Lorg/mixare/lib/gui/ScreenLine;

    iget p1, p1, Lorg/mixare/lib/gui/ScreenLine;->y:F

    add-float/2addr p2, v1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fakeClick(Lorg/mixare/lib/MixContextInterface;Lorg/mixare/lib/MixStateInterface;)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->url:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lorg/mixare/lib/MixStateInterface;->handleEvent(Lorg/mixare/lib/MixContextInterface;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public handleClick(FFLorg/mixare/lib/MixContextInterface;Lorg/mixare/lib/MixStateInterface;)Z
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lorg/mixare/lib/marker/draw/ClickHandler;->isClickValid(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->url:Ljava/lang/String;

    invoke-interface {p4, p3, p1}, Lorg/mixare/lib/MixStateInterface;->handleEvent(Lorg/mixare/lib/MixContextInterface;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->url:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->active:Z

    .line 132
    const-class v0, Lorg/mixare/lib/gui/Label;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/mixare/lib/gui/Label;

    iput-object v0, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->txtLab:Lorg/mixare/lib/gui/Label;

    .line 133
    const-class v0, Lorg/mixare/lib/render/MixVector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/mixare/lib/render/MixVector;

    iput-object v0, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->signMarker:Lorg/mixare/lib/render/MixVector;

    .line 134
    const-class v0, Lorg/mixare/lib/render/MixVector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/mixare/lib/render/MixVector;

    iput-object p1, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->cMarker:Lorg/mixare/lib/render/MixVector;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 122
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-boolean p2, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->active:Z

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->txtLab:Lorg/mixare/lib/gui/Label;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 125
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->signMarker:Lorg/mixare/lib/render/MixVector;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 126
    iget-object p2, p0, Lorg/mixare/lib/marker/draw/ClickHandler;->cMarker:Lorg/mixare/lib/render/MixVector;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
